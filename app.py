import streamlit as st
import plotly.express as px
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA ---
data = {
    'Artist': [
        'Basstripper', 'MUZZ', 'Grafix', 'Pendulum', 'Sigma', 'TeeBee', 'Sub Focus', 
        'Kumarion', 'Feint', 'Rudimental', 'Justin Hawkes', 'Goldie', 'Hybrid Minds', 
        'Phaeleh', 'Noisia', 'Metrik', 'Alix Perez', 'Netsky', 'Chase & Status', 'Bou', 'Dimension',
        'A.M.C', 'Hedex', 'Calibre', 'Bensley', 'S.P.Y', 'Kanine', 'Wilkinson', 'Camo & Krooked', 'Mefjus', 'Culture Shock'
    ],
    'Aggression': [9, 9, 8, 9.5, 6, 8, 6, 9, 5, 3, 4, 2, 2, 1, 9.5, 8, 3, 4, 7, 8, 7, 10, 9, 2, 6, 7, 8.5, 5, 8, 9.5, 6.5],
    'Complexity': [2, 9, 8, 9, 6, 10, 7, 3, 6, 8, 6, 9, 6, 4, 10, 8, 9, 6, 7, 4, 7, 9, 3, 9, 8, 7, 6, 6, 10, 10, 8],
    'Texture': [9, 8, 9, 2, 4, 10, 8, 7, 7, 1, 4, 2, 3, 8, 10, 9, 5, 6, 4, 8, 9, 9, 9, 2, 8, 5, 8, 5, 9, 10, 9],
    'Subgenre': [
        'Jump-Up', 'Dancefloor/Neuro', 'Dancefloor/Tech', 'Dancefloor/Rock', 'Dancefloor/Pop', 
        'Neurofunk', 'Dancefloor', 'Heavy/Trap', 'Melodic/Liquid', 'Liquid/Soul', 
        'Experimental', 'Jungle', 'Liquid', 'Ambient/Garage', 'Neurofunk', 'Dancefloor', 
        'Deep/Liquid', 'Liquid/Pop', 'Jungle/Dancefloor', 'Jump-Up', 'Dancefloor',
        'Neurofunk', 'Jump-Up', 'Deep/Liquid', 'Experimental/Tech', 'Liquid/Dark', 'Dancefloor', 'Dancefloor/Pop', 'Dancefloor/Minimal', 'Neurofunk', 'Dancefloor'
    ]
}
df = pd.DataFrame(data)

# --- 2. JITTERING ---
def apply_jitter(group):
    if len(group) > 1:
        angles = np.linspace(0, 2*np.pi, len(group), endpoint=False)
        radius = 0.28
        group['Aggression'] += radius * np.cos(angles)
        group['Complexity'] += radius * np.sin(angles)
        group['Texture'] += radius * np.cos(angles + 1)
    return group
df = df.groupby(['Aggression', 'Complexity', 'Texture'], group_keys=False).apply(apply_jitter)

# --- 3. PAGE LAYOUT ---
st.set_page_config(page_title="DnB Explorer", layout="wide")

# Optimized Sidebar Flow
st.sidebar.title("🔊 Engine Controls")

# Group 1: High Level Filtering
with st.sidebar.expander("🌍 Subgenre Visibility", expanded=True):
    toggle_all = st.radio("Quick Select:", ["All On", "All Off", "Manual"], horizontal=True)
    selected_genres = []
    for g in sorted(df['Subgenre'].unique()):
        default = (toggle_all == "All On" or (toggle_all == "Manual"))
        if st.checkbox(g, value=default):
            selected_genres.append(g)

# Group 2: Analysis Tools
with st.sidebar.expander("🔬 Proximity Analysis", expanded=True):
    selected_artist = st.selectbox("Highlight Neighbor:", ["None"] + sorted(df['Artist'].tolist()))
    radius = st.slider("Neighborhood Radius:", 0.5, 12.0, 12.0) if selected_artist != "None" else 12.0

# Group 3: Visual Refinement
with st.sidebar.expander("🎨 Visual Settings", expanded=True):
    enable_grid = st.toggle("Show Interior Grid", value=True)

# Filter Data
f_df = df[df['Subgenre'].isin(selected_genres)].copy()

# --- 4. CALC NEIGHBORS ---
color_col = 'Subgenre'
colorscale = None
if selected_artist != "None" and not f_df.empty:
    target_coords = df[df['Artist'] == selected_artist][['Aggression', 'Complexity', 'Texture']].values[0]
    f_df['Dist'] = np.linalg.norm(f_df[['Aggression', 'Complexity', 'Texture']].values - target_coords, axis=1)
    f_df = f_df[f_df['Dist'] <= radius]
    if not f_df.empty:
        f_df['Proximity'] = 1 - (f_df['Dist'] / f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1)
        color_col = 'Proximity'
        colorscale = [[0, '#444444'], [1, '#00D4FF']]

# --- 5. THE GRAPH ---
st.title("🔊 DnB 3D Soundscape Explorer")

if f_df.empty:
    st.warning("Current filters resulted in an empty set.")
else:
    fig = px.scatter_3d(f_df, x='Aggression', y='Complexity', z='Texture', 
                        color=color_col, text='Artist', height=850,
                        template="plotly_dark", color_continuous_scale=colorscale)

    # Standardize Axes: Fixed 0-10 ticks within a -1 to 11 buffer
    axis_config = dict(
        range=[-1, 11],
        tickmode='array',
        tickvals=list(range(11)), # 0, 1, 2... 10
        showgrid=enable_grid,
        gridcolor="rgba(150, 150, 150, 0.2)",
        showline=True,
        linecolor="white",
        linewidth=4, # Thicker Axes
        showticklabels=True,
        zeroline=False
    )

    fig.update_layout(
        uirevision='constant',
        scene=dict(xaxis=axis_config, yaxis=axis_config, zaxis=axis_config),
        showlegend=False, # Removed legend to prevent overlap with Plotly controls
        margin=dict(l=0, r=0, b=0, t=20) # Small top margin to clear UI buttons
    )
    
    st.plotly_chart(fig, use_container_width=True)