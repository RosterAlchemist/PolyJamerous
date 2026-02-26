import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA LOADING ---
@st.cache_data # This keeps the app fast by only loading once
def load_data():
    df = pd.read_csv('artists.csv')
    return df

df = load_data()

# Static Color Map
subgenre_colors = {
    'Jump-Up': '#FF4B4B', 'Dancefloor/Neuro': '#00D4FF', 'Dancefloor/Tech': '#7D4BFF',
    'Dancefloor/Rock': '#FFB400', 'Dancefloor/Pop': '#FF69B4', 'Neurofunk': '#32CD32',
    'Dancefloor': '#1E90FF', 'Heavy/Trap': '#8B0000', 'Melodic/Liquid': '#00FA9A',
    'Liquid/Soul': '#FFD700', 'Experimental': '#C0C0C0', 'Jungle': '#8B4513',
    'Liquid': '#87CEEB', 'Ambient/Garage': '#4B0082', 'Deep/Liquid': '#2F4F4F',
    'Experimental/Tech': '#ADFF2F', 'Liquid/Dark': '#483D8B', 'Dancefloor/Minimal': '#708090',
    'Jungle/Dancefloor': '#D2691E'
}

# Jittering Logic
def apply_jitter(group):
    if len(group) > 1:
        angles = np.linspace(0, 2*np.pi, len(group), endpoint=False)
        radius = 0.28
        group['Aggression'] = group['Aggression'].astype(float) + radius * np.cos(angles)
        group['Complexity'] = group['Complexity'].astype(float) + radius * np.sin(angles)
        group['Texture'] = group['Texture'].astype(float) + radius * np.cos(angles + 1)
    return group

df = df.groupby(['Aggression', 'Complexity', 'Texture'], group_keys=False).apply(apply_jitter)

# --- 2. UI ---
st.set_page_config(page_title="DnB 1-10 Explorer", layout="wide")
st.sidebar.title("🎛️ Settings")
enable_grid = st.sidebar.toggle("Show Grid Lines", value=True)
selected_artist = st.sidebar.selectbox("Focal Artist:", ["None"] + sorted(df['Artist'].tolist()))

st.sidebar.markdown("---")
toggle_all = st.sidebar.radio("Visibility:", ["All On", "All Off", "Manual"], horizontal=True)

all_genres = sorted(df['Subgenre'].unique())
selected_genres = [g for g in all_genres if st.sidebar.checkbox(g, value=(toggle_all != "All Off"))]

f_df = df[df['Subgenre'].isin(selected_genres)].copy()

# --- 3. RENDERING ---
st.title("🔊 DnB 3D Soundscape (1-10 Scale)")

if f_df.empty:
    st.info("Select subgenres to populate the space.")
else:
    fig = go.Figure()

    # Color Logic
    colorscale = None
    if selected_artist != "None":
        target_coords = df[df['Artist'] == selected_artist][['Aggression', 'Complexity', 'Texture']].values[0].astype(float)
        f_df['Dist'] = np.linalg.norm(f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - target_coords, axis=1)
        f_df['Prox'] = 1 - (f_df['Dist'] / f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1)
        marker_color = f_df['Prox']
        colorscale = [[0, '#444444'], [1, '#00D4FF']]
    else:
        marker_color = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF').tolist()

    # Artist Data Trace
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text', text=f_df['Artist'],
        marker=dict(size=6, color=marker_color, colorscale=colorscale, opacity=0.8),
        textposition="top center",
        showlegend=False
    ))

    # CUSTOM AXES (Thick lines from 1 to 10)
    ax_w = 8
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=dict(color='white', width=ax_w), showlegend=False, hoverinfo='skip'))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=dict(color='white', width=ax_w), showlegend=False, hoverinfo='skip'))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=dict(color='white', width=ax_w), showlegend=False, hoverinfo='skip'))

    # AXIS CONFIG
    axis_config = {
        "range": [-1, 12],
        "showbackground": False, "showline": False, "zeroline": False,
        "showgrid": enable_grid, "gridcolor": "rgba(150, 150, 150, 0.2)",
        "tickmode": "array", "tickvals": list(range(1, 11)),
        "showticklabels": True, "title": "" 
    }

    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=axis_config, yaxis=axis_config, zaxis=axis_config,
            aspectmode='cube',
            annotations=[
                dict(showarrow=False, x=11, y=1, z=1, text="Aggression", font=dict(color="white", size=14)),
                dict(showarrow=False, x=1, y=11, z=1, text="Complexity", font=dict(color="white", size=14)),
                dict(showarrow=False, x=1, y=1, z=11, text="Texture", font=dict(color="white", size=14))
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0)
    )

    st.plotly_chart(fig, use_container_width=True)