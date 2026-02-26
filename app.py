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

subgenre_colors = {
    'Jump-Up': '#FF4B4B', 'Dancefloor/Neuro': '#00D4FF', 'Dancefloor/Tech': '#7D4BFF',
    'Dancefloor/Rock': '#FFB400', 'Dancefloor/Pop': '#FF69B4', 'Neurofunk': '#32CD32',
    'Dancefloor': '#1E90FF', 'Heavy/Trap': '#8B0000', 'Melodic/Liquid': '#00FA9A',
    'Liquid/Soul': '#FFD700', 'Experimental': '#C0C0C0', 'Jungle': '#8B4513',
    'Liquid': '#87CEEB', 'Ambient/Garage': '#4B0082', 'Deep/Liquid': '#2F4F4F',
    'Experimental/Tech': '#ADFF2F', 'Liquid/Dark': '#483D8B', 'Dancefloor/Minimal': '#708090'
}

# Jittering Logic
def apply_jitter(group):
    if len(group) > 1:
        angles = np.linspace(0, 2*np.pi, len(group), endpoint=False)
        radius = 0.28
        group['Aggression'] += radius * np.cos(angles)
        group['Complexity'] += radius * np.sin(angles)
        group['Texture'] += radius * np.cos(angles + 1)
    return group
df = df.groupby(['Aggression', 'Complexity', 'Texture'], group_keys=False).apply(apply_jitter)

# --- 2. UI ---
st.set_page_config(page_title="DnB 1-10 Explorer", layout="wide")
st.sidebar.title("🎛️ Settings")
enable_grid = st.sidebar.toggle("Show Grid Lines", value=True)
selected_artist = st.sidebar.selectbox("Focal Artist:", ["None"] + sorted(df['Artist'].tolist()))

st.sidebar.markdown("---")
toggle_all = st.sidebar.radio("Visibility:", ["All On", "All Off", "Manual"], horizontal=True)
selected_genres = [g for g in sorted(df['Subgenre'].unique()) if st.sidebar.checkbox(g, value=(toggle_all != "All Off"))]

f_df = df[df['Subgenre'].isin(selected_genres)].copy()

# --- 3. RENDERING ---
st.title("🔊 DnB 3D Soundscape (1-10 Scale)")

if f_df.empty:
    st.info("Select subgenres to populate the space.")
else:
    fig = go.Figure()

    # Color Handling
    colorscale = None
    if selected_artist != "None":
        target_coords = df[df['Artist'] == selected_artist][['Aggression', 'Complexity', 'Texture']].values[0].astype(float)
        f_df['Dist'] = np.linalg.norm(f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - target_coords, axis=1)
        f_df['Prox'] = 1 - (f_df['Dist'] / f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1)
        marker_color = f_df['Prox']
        colorscale = [[0, '#444444'], [1, '#00D4FF']]
    else:
        marker_color = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF').tolist()

    # Artist Trace
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text', text=f_df['Artist'],
        marker=dict(size=6, color=marker_color, colorscale=colorscale, opacity=0.8),
        textposition="top center"
    ))

    # CUSTOM AXES (Thick lines from 1 to 10)
    ax_w = 8
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=dict(color='white', width=ax_w), showlegend=False, hoverinfo='skip'))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=dict(color='white', width=ax_w), showlegend=False, hoverinfo='skip'))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=dict(color='white', width=ax_w), showlegend=False, hoverinfo='skip'))

    # AXIS CONFIG (Dictionary defined to avoid TypeError)
    # Range set to -1 to 12 for symmetric padding
    axis_config = {
        "range": [-1, 12],
        "showbackground": False,
        "showline": False,
        "zeroline": False,
        "showgrid": enable_grid,
        "gridcolor": "rgba(150, 150, 150, 0.2)",
        "tickmode": "array",
        "tickvals": list(range(1, 11)),
        "showticklabels": True
    }

    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=dict(**axis_config, title=dict(text="Aggression", font=dict(size=14))),
            yaxis=dict(**axis_config, title=dict(text="Complexity", font=dict(size=14))),
            zaxis=dict(**axis_config, title=dict(text="Texture", font=dict(size=14))),
            aspectmode='cube'
        ),
        margin=dict(l=0, r=0, b=0, t=0)
    )

    st.plotly_chart(fig, use_container_width=True)