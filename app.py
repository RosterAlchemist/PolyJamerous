import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA LOADING ---
# Column mapping from DB snake_case to the display names used throughout the app
_ARTIST_RENAME = {
    "name": "Artist", "subgenre": "Subgenre", "dna": "DNA",
    "arousal": "Arousal", "valence": "Valence",
    "timbral_brightness": "Timbral Brightness",
    "rhythmic_regularity": "Rhythmic Regularity",
    "harmonic_complexity": "Harmonic Complexity",
    "spatial_dimension": "Spatial Dimension",
    "articulation": "Articulation",
    "melodic_salience": "Melodic Salience",
    "structural_entropy": "Structural Entropy",
    "acousticness": "Acousticness",
}
_DIM_RENAME = {
    "dimension_name": "Dimension", "genre": "Genre",
    "description": "Description", "metrics": "Metrics",
    "low_anchor": "Low-End Anchor",
    "mid_anchor": "Mid-Point Anchor",
    "high_anchor": "High-End Anchor",
}

@st.cache_data(ttl=300)
def load_data():
    try:
        from supabase import create_client
        url = st.secrets["supabase"]["url"]
        key = st.secrets["supabase"]["key"]
        client = create_client(url, key)
        artists = pd.DataFrame(
            client.table("artists").select("*").execute().data
        ).rename(columns=_ARTIST_RENAME)
        dims = pd.DataFrame(
            client.table("musical_dimensions").select("*").execute().data
        ).rename(columns=_DIM_RENAME)
        return artists, dims
    except (KeyError, Exception):
        # Fall back to local CSV files when Supabase is not configured
        artists = pd.read_csv('artists.csv')
        dims = pd.read_csv('dimension_anchors_v2.csv')
        return artists, dims

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

if selected_artist != "None":
    anchor = df.loc[df['Artist'] == selected_artist, DIMENSIONS].values[0]
    dists = np.linalg.norm(f_df[DIMENSIONS].values - anchor, axis=1)
    f_df = f_df[dists <= radius].copy()

# Helper for Axis Popovers — looks up Universal description then genre anchors
def get_axis_popover(dim_name, genre):
    info = f"<b>{dim_name}</b><br>"
    try:
        u = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == 'Universal')].iloc[0]
        info += f"<i>{u['Description']}</i><br><br><b>Metrics:</b> {u['Metrics']}<br><br>"
    except (IndexError, KeyError):
        info += "<br>"
    try:
        g = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == genre)].iloc[0]
        info += f"High (10): {g['High-End Anchor']}<br>"
        info += f"Mid (5): {g['Mid-Point Anchor']}<br>"
        info += f"Low (1): {g['Low-End Anchor']}"
    except (IndexError, KeyError):
        info += "Genre anchors pending."
    return info

# --- 5. VISUALIZATION ---
if not f_df.empty:
    def build_hover(row):
        txt = f"<b>{row['Artist']}</b><br><i>{row['DNA']}</i><br><br>"
        for d in DIMENSIONS:
            txt += f"<b>{d}:</b> {row[d]}<br>"
        return txt + "<extra></extra>"

    fig = go.Figure()

    # Background artist points (neighbours / all artists)
    others = f_df[f_df['Artist'] != selected_artist] if selected_artist != "None" else f_df
    if not others.empty:
        fig.add_trace(go.Scatter3d(
            x=others[axis_x], y=others[axis_y], z=others[axis_z],
            mode='markers+text',
            text=others['Artist'],
            marker=dict(size=7, symbol='circle', color=others['Subgenre'].map(subgenre_colors).fillna('#FFF'), opacity=0.75),
            textfont=dict(color=others['Subgenre'].map(subgenre_colors).fillna('#FFFFFF').tolist(), size=11),
            textposition="top center",
            hovertemplate=[build_hover(r) for _, r in others.iterrows()],
            showlegend=False
        ))

    # Focused artist — rendered last so it sits on top
    if selected_artist != "None" and selected_artist in f_df['Artist'].values:
        fa = f_df[f_df['Artist'] == selected_artist].iloc[[0]]
        fa_color = subgenre_colors.get(fa['Subgenre'].iloc[0], '#FFFFFF')
        fig.add_trace(go.Scatter3d(
            x=fa[axis_x], y=fa[axis_y], z=fa[axis_z],
            mode='markers+text',
            text=fa['Artist'],
            marker=dict(
                size=14, symbol='circle',
                color=fa_color, opacity=1.0,
                line=dict(color='white', width=3)
            ),
            textfont=dict(color='white', size=14),
            textposition="top center",
            hovertemplate=[build_hover(fa.iloc[0])],
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