import streamlit as st
import plotly.express as px
import pandas as pd
import numpy as np

# --- 1. DATA INITIALIZATION ---
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

# Pre-defined subgenre colors for consistent branding
subgenre_colors = {
    'Jump-Up': '#FF4B4B', 'Dancefloor/Neuro': '#00D4FF', 'Dancefloor/Tech': '#7D4BFF',
    'Dancefloor/Rock': '#FFB400', 'Dancefloor/Pop': '#FF69B4', 'Neurofunk': '#32CD32',
    'Dancefloor': '#1E90FF', 'Heavy/Trap': '#8B0000', 'Melodic/Liquid': '#00FA9A',
    'Liquid/Soul': '#FFD700', 'Experimental': '#C0C0C0', 'Jungle': '#8B4513',
    'Liquid': '#87CEEB', 'Ambient/Garage': '#4B0082', 'Deep/Liquid': '#2F4F4F',
    'Experimental/Tech': '#ADFF2F', 'Liquid/Dark': '#483D8B', 'Dancefloor/Minimal': '#708090'
}

# --- 2. JITTERING ---
def apply_jitter(group):
    if len(group) > 1:
        angles = np.linspace(0, 2*np.pi, len(group), endpoint=False)
        radius = 0.3
        group['Aggression'] += radius * np.cos(angles)
        group['Complexity'] += radius * np.sin(angles)
        group['Texture'] += radius * np.cos(angles + 1)
    return group
df = df.groupby(['Aggression', 'Complexity', 'Texture'], group_keys=False).apply(apply_jitter)

# --- 3. UI CONFIG ---
st.set_page_config(page_title="DnB Soundscape Explorer", layout="wide")
st.sidebar.title("🔊 Visual Settings")

# Grid Toggle
enable_grid = st.sidebar.toggle("Enable Sub-Grid", value=True)

# Focal Point & Distance Filter
selected_artist = st.sidebar.selectbox("Focal Point Artist:", ["None"] + sorted(df['Artist'].tolist()))
dist_threshold = 15.0
if selected_artist != "None":
    dist_threshold = st.sidebar.slider("Neighborhood Radius:", 0.5, 15.0, 15.0)

# Visibility Toggles
st.sidebar.subheader("Subgenres")
toggle_all = st.sidebar.radio("Quick Toggle:", ["All On", "All Off", "Manual"], horizontal=True)
selected_genres = [g for g in sorted(df['Subgenre'].unique()) if st.sidebar.checkbox(g, value=(toggle_all == "All On" or (toggle_all == "Manual" and True)))]

f_df = df[df['Subgenre'].isin(selected_genres)].copy()

# --- 4. GRADIENT COLORING ---
color_col = 'Subgenre'
colorscale = None
if selected_artist != "None" and not f_df.empty:
    target = df[df['Artist'] == selected_artist].iloc[0]
    t_coords = target[['Aggression', 'Complexity', 'Texture']].values.astype(float)
    c_coords = f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float)
    f_df['Dist'] = np.sqrt(np.sum((c_coords - t_coords)**2, axis=1))
    f_df = f_df[f_df['Dist'] <= dist_threshold]
    if not f_df.empty:
        max_d = f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1
        f_df['Proximity'] = 1 - (f_df['Dist'] / max_d)
        color_col = 'Proximity'
        colorscale = [[0, '#444444'], [1, subgenre_colors.get(target['Subgenre'], '#00D4FF')]]

# --- 5. RENDER ---
st.title("🔊 DnB 3D Soundscape Explorer")

if f_df.empty:
    st.warning("Neighborhood is empty. Expand radius or select more subgenres.")
else:
    fig = px.scatter_3d(f_df, x='Aggression', y='Complexity', z='Texture', color=color_col, text='Artist',
                        color_discrete_map=subgenre_colors if colorscale is None else None,
                        color_continuous_scale=colorscale if colorscale is not None else None,
                        height=850, template="plotly_dark")

    # Dynamic Grid Parameters
    grid_params = dict(
        tickmode='linear', tick0=0, dtick=1, range=[-1, 12],
        showgrid=enable_grid, 
        gridwidth=1 if enable_grid else 0,
        gridcolor="rgba(150, 150, 150, 0.2)",
        showticklabels=enable_grid,
        zeroline=True, zerolinecolor="white", zerolinewidth=1.5
    )

    fig.update_layout(uirevision='constant', scene=dict(xaxis=grid_params, yaxis=grid_params, zaxis=grid_params),
                      coloraxis_showscale=False, margin=dict(l=0, r=0, b=0, t=0))
    st.plotly_chart(fig, use_container_width=True)