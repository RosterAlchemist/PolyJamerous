import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA LOADING ---
@st.cache_data
def load_data():
    artists = pd.read_csv('artists.csv')
    anchors = pd.read_csv('dimension_anchors_v2.csv')
    return artists, anchors

df, anchors_df = load_data()

DIMENSIONS = ["Arousal", "Valence", "Timbral Brightness", "Rhythmic Regularity", "Harmonic Complexity", "Spatial Dimension", "Articulation", "Melodic Salience", "Structural Entropy", "Acousticness"]
GENRES = ["Bass + Dubstep", "Breakbeat", "Drum & Bass + Jungle", "ElectroPop + SynthPop", "Hard Dance", "House", "IDM", "Noise", "Synthwave + Vaporwave", "Techno", "Trance"]

subgenre_colors = {
    'Jump-Up': '#FF4B4B', 'Dancefloor/Neuro': '#00D4FF', 'Dancefloor/Tech': '#7D4BFF',
    'Dancefloor/Rock': '#FFB400', 'Dancefloor/Pop': '#FF69B4', 'Neurofunk': '#32CD32',
    'Dancefloor': '#1E90FF', 'Heavy/Trap': '#8B0000', 'Melodic/Liquid': '#00FA9A',
    'Liquid/Soul': '#FFD700', 'Experimental': '#C0C0C0', 'Jungle': '#8B4513',
    'Liquid': '#87CEEB', 'Ambient/Garage': '#4B0082', 'Deep/Liquid': '#2F4F4F',
    'Experimental/Tech': '#ADFF2F', 'Liquid/Dark': '#483D8B', 'Dancefloor/Minimal': '#708090',
    'Jungle/Dancefloor': '#D2691E'
}

# --- 2. UI HEADER ---
st.title("🔊 PolyJamerous")
parent_genre = st.radio("Select Parent Genre Focus", options=GENRES, index=2, horizontal=True)

# --- 3. SIDEBAR CONTROLS ---
with st.sidebar:
    st.subheader("Axis Configuration")
    axis_x = st.selectbox("X-Axis", DIMENSIONS, index=0)
    axis_y = st.selectbox("Y-Axis", DIMENSIONS, index=4)
    axis_z = st.selectbox("Z-Axis", DIMENSIONS, index=5)
    
    st.markdown("---")
    st.subheader("Focal Analysis")
    selected_artist = st.selectbox("Focus Artist", ["None"] + sorted(df['Artist'].tolist()))
    radius = st.slider("Neighborhood Radius", 1.0, 12.0, 5.0) if selected_artist != "None" else 15.0
    
    st.markdown("---")
    st.subheader("Subgenre Mixology")
    selected_subs = []
    for s in sorted(df['Subgenre'].unique()):
        col1, col2 = st.columns([3, 1])
        with col1: st.markdown(f'<span style="color:{subgenre_colors.get(s, "#EEE")}; font-weight:bold;">● {s}</span>', unsafe_allow_html=True)
        with col2: 
            if st.toggle("Active", value=True, key=f"t_{s}"): selected_subs.append(s)

# --- 4. DATA PROCESSING ---
f_df = df[df['Subgenre'].isin(selected_subs)].copy()

# Enhanced Helper for Axis Popovers
def get_axis_popover(dim_name, genre):
    try:
        row = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == genre)].iloc[0]
        # Combining Description with Anchors for a rich mouse-over
        info = f"<b>{dim_name}</b><br><i>{row['Description']}</i><br><br>"
        info += f"High (10): {row['High-End Anchor']}<br>"
        info += f"Mid (5): {row['Mid-Point Anchor']}<br>"
        info += f"Low (1): {row['Low-End Anchor']}"
        return info
    except:
        return f"<b>{dim_name}</b><br>Description pending for this genre."

# --- 5. VISUALIZATION ---
if not f_df.empty:
    hover_texts = []
    for _, row in f_df.iterrows():
        # Artist Narrative + Full Dimension Rankings
        txt = f"<b>{row['Artist']}</b><br><i>{row['DNA']}</i><br><br>"
        for d in DIMENSIONS:
            txt += f"<b>{d}:</b> {row[d]}<br>"
        txt += "<extra></extra>"
        hover_texts.append(txt)

    fig = go.Figure()

    # Spherical Artist Points
    fig.add_trace(go.Scatter3d(
        x=f_df[axis_x], y=f_df[axis_y], z=f_df[axis_z],
        mode='markers+text',
        text=f_df['Artist'],
        marker=dict(size=7, symbol='circle', color=f_df['Subgenre'].map(subgenre_colors).fillna('#FFF'), opacity=0.9),
        textfont=dict(color=f_df['Subgenre'].map(subgenre_colors).tolist(), size=11),
        textposition="top center",
        hovertemplate=hover_texts,
        showlegend=False
    ))

    # Grid & Axes Frame (Logic from previous versions)
    grid_style = dict(color="rgba(150, 150, 150, 0.1)", width=1)
    for i in range(1, 11):
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 10], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[i, i], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[i, i], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 1], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        # Axis Ticks
        fig.add_trace(go.Scatter3d(x=[i], y=[1], z=[0.8], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[1], y=[i], z=[0.8], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[0.8], y=[1], z=[i], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))

    # White Origin Axes
    ax_style = dict(color='white', width=6)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    fig.update_layout(
        template="plotly_dark", height=850,
        scene=dict(
            xaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, showticklabels=False, title="", showspikes=False),
            yaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, showticklabels=False, title="", showspikes=False),
            zaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, showticklabels=False, title="", showspikes=False),
            aspectmode='cube',
            annotations=[
                dict(showarrow=False, x=11, y=1, z=1, text=f"<b>{axis_x}</b>", font=dict(color="white"), hovertext=get_axis_popover(axis_x, parent_genre)),
                dict(showarrow=False, x=1, y=11, z=1, text=f"<b>{axis_y}</b>", font=dict(color="white"), hovertext=get_axis_popover(axis_y, parent_genre)),
                dict(showarrow=False, x=1, y=1, z=11, text=f"<b>{axis_z}</b>", font=dict(color="white"), hovertext=get_axis_popover(axis_z, parent_genre))
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0)
    )

    st.plotly_chart(fig, use_container_width=True)