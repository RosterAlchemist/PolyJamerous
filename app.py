import textwrap
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

# --- 3. SIDEBAR ---
with st.sidebar:
    st.subheader("Genre Focus")
    parent_genre = st.radio("Genre", options=GENRES, index=2, label_visibility="collapsed")

    st.markdown("---")
    st.subheader("Focus Artist")
    selected_artist = st.selectbox("Artist", ["None"] + sorted(df['Artist'].tolist()), label_visibility="collapsed")

    st.markdown("---")
    st.subheader("Subgenres")
    st.caption("Subgenre filtering coming soon.")

# --- AXIS SELECTORS (above chart) ---
ax_col1, ax_col2, ax_col3 = st.columns(3)
with ax_col1: axis_x = st.selectbox("X-Axis", DIMENSIONS, index=0)
with ax_col2: axis_y = st.selectbox("Y-Axis", DIMENSIONS, index=4)
with ax_col3: axis_z = st.selectbox("Z-Axis", DIMENSIONS, index=5)

# --- 4. DATA PROCESSING ---
f_df = df[df['genre'] == parent_genre].copy()

# --- 5. HELPERS ---
def _wrap(text, width=55):
    """Wrap text to a fixed width using HTML line breaks for Plotly hovertext."""
    return textwrap.fill(str(text), width).replace('\n', '<br>')

def get_axis_popover(dim_name, genre):
    """HTML popover for 3D axis label hovertext."""
    parts = [f"<b>{dim_name}</b>"]
    try:
        u = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == 'Universal')].iloc[0]
        parts.append(_wrap(u['Description']))
        parts.append("<i>Metrics: " + _wrap(u['Metrics']) + "</i>")
    except (IndexError, KeyError):
        pass
    try:
        g = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == genre)].iloc[0]
        parts.append(
            f"High (10): {g['High-End Anchor']}<br>"
            f"Mid  (5):  {g['Mid-Point Anchor']}<br>"
            f"Low  (1):  {g['Low-End Anchor']}"
        )
    except (IndexError, KeyError):
        parts.append("Genre anchors pending.")
    return "<br><br>".join(parts)

# --- 6. VISUALIZATION ---
if not f_df.empty:
    DIM_SHORT = [
        ("Arousal",    "Arousal"),    ("Valence",             "Valence"),
        ("Timbral Brightness",  "Brightness"),  ("Rhythmic Regularity", "Rhythm"),
        ("Harmonic Complexity", "Harmony"),     ("Spatial Dimension",   "Spatial"),
        ("Articulation",        "Articulation"),("Melodic Salience",    "Melody"),
        ("Structural Entropy",  "Entropy"),     ("Acousticness",        "Acoustic"),
    ]

    def build_hover(row):
        score_lines = "<br>".join(
            f"{short:<13} {row[full]:>2}    {DIM_SHORT[i+1][1]:<13} {row[DIM_SHORT[i+1][0]]:>2}"
            for i, (full, short) in enumerate(DIM_SHORT) if i % 2 == 0
        )
        return (
            f"<b>{row['Artist']}</b><br>"
            f"<i>{_wrap(row['DNA'], width=45)}</i><br><br>"
            f"{score_lines}"
            "<extra></extra>"
        )

    fig = go.Figure()

    # Background artist points
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
            marker=dict(size=14, symbol='circle', color=fa_color, opacity=1.0, line=dict(color='white', width=3)),
            textfont=dict(color='white', size=14),
            textposition="top center",
            hovertemplate=[build_hover(fa.iloc[0])],
            showlegend=False
        ))

    # Grid lines
    grid_style = dict(color="rgba(150, 150, 150, 0.1)", width=1)
    for i in range(1, 11):
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 10], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[i, i], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[i, i], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 1], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        # Axis tick labels
        fig.add_trace(go.Scatter3d(x=[i], y=[1], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[1], y=[i], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[0.7], y=[1], z=[i], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))

    # Origin axes
    ax_style = dict(color='white', width=6)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    _axis = dict(
        range=[0.5, 10.8],
        showgrid=False,
        showbackground=False,
        backgroundcolor='rgba(0,0,0,0)',
        showticklabels=False,
        title="",
        showspikes=False,
        zeroline=False,
    )

    fig.update_layout(
        template="plotly_dark", height=800,
        paper_bgcolor='rgba(0,0,0,0)',
        hoverlabel=dict(font=dict(family="monospace", size=12)),
        scene=dict(
            xaxis=_axis, yaxis=_axis, zaxis=_axis,
            aspectmode='cube',
            bgcolor='rgba(0,0,0,0)',
            annotations=[
                dict(showarrow=False, x=10.7, y=1, z=1, text=f"<b>{axis_x}</b>", font=dict(color="white", size=13), hovertext=get_axis_popover(axis_x, parent_genre)),
                dict(showarrow=False, x=1, y=10.7, z=1, text=f"<b>{axis_y}</b>", font=dict(color="white", size=13), hovertext=get_axis_popover(axis_y, parent_genre)),
                dict(showarrow=False, x=1, y=1, z=10.7, text=f"<b>{axis_z}</b>", font=dict(color="white", size=13), hovertext=get_axis_popover(axis_z, parent_genre))
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0)
    )

    st.plotly_chart(fig, width='stretch')
