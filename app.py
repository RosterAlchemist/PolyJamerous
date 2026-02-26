import streamlit as st
import plotly.express as px
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA (Calibrated to 1-10 Scale) ---
data = {
    'Artist': [
        'Basstripper', 'MUZZ', 'Grafix', 'Pendulum', 'Sigma', 'TeeBee', 'Sub Focus', 
        'Kumarion', 'Feint', 'Rudimental', 'Justin Hawkes', 'Goldie', 'Hybrid Minds', 
        'Phaeleh', 'Noisia', 'Metrik', 'Alix Perez', 'Netsky', 'Chase & Status', 'Bou', 'Dimension',
        'A.M.C', 'Hedex', 'Calibre', 'Bensley', 'S.P.Y', 'Kanine', 'Wilkinson', 'Camo & Krooked', 'Mefjus', 'Culture Shock'
    ],
    # Adjusted previous 0-values to 1
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

# --- 2. UI CONFIG ---
st.set_page_config(page_title="DnB 1-10 Explorer", layout="wide")

with st.sidebar:
    st.title("🎛️ Settings")
    enable_grid = st.toggle("Show Grid Lines", value=True)
    selected_artist = st.selectbox("Focal Artist:", ["None"] + sorted(df['Artist'].tolist()))
    
    st.markdown("---")
    toggle_all = st.radio("Visibility:", ["All On", "All Off", "Manual"], horizontal=True)
    selected_genres = [g for g in sorted(df['Subgenre'].unique()) if st.checkbox(g, value=(toggle_all != "All Off"))]

# --- 3. GRAPH ENGINE ---
st.title("🔊 DnB 3D Soundscape (1-10 Scale)")

f_df = df[df['Subgenre'].isin(selected_genres)].copy()

if f_df.empty:
    st.info("Select subgenres to begin.")
else:
    fig = go.Figure()

    # Determine Coloring
    marker_color = f_df['Subgenre']
    colorscale = None
    if selected_artist != "None":
        target_coords = df[df['Artist'] == selected_artist][['Aggression', 'Complexity', 'Texture']].values[0].astype(float)
        f_df['Dist'] = np.linalg.norm(f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - target_coords, axis=1)
        f_df['Prox'] = 1 - (f_df['Dist'] / f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1)
        marker_color = f_df['Prox']
        colorscale = [[0, '#444444'], [1, '#00D4FF']]

    # Add Artists
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text', text=f_df['Artist'],
        marker=dict(size=6, color=marker_color, colorscale=colorscale, opacity=0.8),
        textposition="top center"
    ))

    # DRAW CUSTOM AXES (Starting at 1, Ending at 10)
    # The axes intersect at (1, 1, 1)
    ax_w = 8
    # X-Axis
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=dict(color='white', width=ax_w), showlegend=False))
    # Y-Axis
    fig.add_trace(go