import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA LOADING ---
@st.cache_data
def load_data():
    try:
        return pd.read_csv('artists.csv')
    except:
        # Fallback for testing if CSV isn't present
        return pd.DataFrame({'Artist':['Test'],'Aggression':[5],'Complexity':[5],'Texture':[5],'Subgenre':['Liquid']})

df = load_data()

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

# --- 2. IMPROVED UI FLOW ---
st.set_page_config(page_title="PolyJamerous", layout="wide", page_icon="🔊")
st.sidebar.title("🎛️ PolyJamerous Deck")

# Combined Control Slider for Radius
selected_artist = st.sidebar.selectbox("Focal Artist", ["None"] + sorted(df['Artist'].tolist()))
radius = 15.0
if selected_artist != "None":
    radius = st.sidebar.slider("Neighborhood Radius", 1.0, 12.0, 12.0)

# Grid Toggle
enable_grid = st.sidebar.toggle("Show Internal Grid", value=True)

st.sidebar.markdown("---")
# Quick Toggle as Radio
visibility_mode = st.sidebar.radio("Genre Selection", ["All On", "All Off", "Manual"], horizontal=True)

all_genres = sorted(df['Subgenre'].unique())
selected_genres = []
for g in all_genres:
    val = True if visibility_mode == "All On" else False if visibility_mode == "All Off" else True
    if st.sidebar.checkbox(g, value=val):
        selected_genres.append(g)

f_df = df[df['Subgenre'].isin(selected_genres)].copy()

# --- 3. RENDERING ENGINE ---
st.title("🔊 PolyJamerous")

if f_df.empty:
    st.info("The floor is empty. Select subgenres to start the jam.")
else:
    fig = go.Figure()

    # Nearest Neighbor Logic
    marker_color = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF').tolist()
    colorscale = None
    if selected_artist != "None":
        t_coords = df[df['Artist'] == selected_artist][['Aggression', 'Complexity', 'Texture']].values[0].astype(float)
        f_df['Dist'] = np.sqrt(np.sum((f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - t_coords)**2, axis=1))
        f_df = f_df[f_df['Dist'] <= radius]
        if not f_df.empty:
            f_df['Prox'] = 1 - (f_df['Dist'] / f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1)
            marker_color = f_df['Prox']
            colorscale = [[0, '#444444'], [1, subgenre_colors.get(df[df['Artist']==selected_artist]['Subgenre'].iloc[0], '#00D4FF')]]

    # MAIN ARTIST POINTS
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text', text=f_df['Artist'],
        marker=dict(size=5, color=marker_color, colorscale=colorscale, opacity=0.9),
        textposition="top center", showlegend=False
    ))

    # DRAWING THE "TRUE CUBE" GRID (Manually bound to 1-10)
    if enable_grid:
        grid_style = dict(color="rgba(150, 150, 150, 0.15)", width=1)
        for i in range(1, 11):
            # X-Y Grids at Z=1
            fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 10], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
            fig.add_trace(go.Scatter3d(x=[1, 10], y=[i, i], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
            # Y-Z Grids at X=1
            fig.add_trace(go.Scatter3d(x=[1, 1], y=[i, i], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
            fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
            # X-Z Grids at Y=1
            fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 1], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
            fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))

    # MAIN AXES (The Origin Frame)
    ax_style = dict(color='white', width=6)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    # SCENE SETTINGS
    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, zeroline=False, showline=False, tickvals=list(range(1, 11))),
            yaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, zeroline=False, showline=False, tickvals=list(range(1, 11))),
            zaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, zeroline=False, showline=False, tickvals=list(range(1, 11))),
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