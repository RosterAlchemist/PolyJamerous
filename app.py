import textwrap
import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go
from sklearn.cluster import KMeans

# --- 1. DATA LOADING ---
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

DIMENSIONS = [
    "Arousal", "Valence", "Timbral Brightness", "Rhythmic Regularity",
    "Harmonic Complexity", "Spatial Dimension", "Articulation",
    "Melodic Salience", "Structural Entropy", "Acousticness",
]
GENRES = [
    "Bass + Dubstep", "Breakbeat", "Drum & Bass + Jungle", "ElectroPop + SynthPop",
    "Hard Dance", "House", "IDM", "Noise", "Synthwave + Vaporwave", "Techno", "Trance",
]
COMPARE_COLORS = ['#00D4FF', '#FF4B4B', '#32CD32', '#FFB400']
_PLACEHOLDER = "Select Artist"

subgenre_colors = {
    'Jump-Up': '#FF4B4B', 'Dancefloor/Neuro': '#00D4FF', 'Dancefloor/Tech': '#7D4BFF',
    'Dancefloor/Rock': '#FFB400', 'Dancefloor/Pop': '#FF69B4', 'Neurofunk': '#32CD32',
    'Dancefloor': '#1E90FF', 'Heavy/Trap': '#8B0000', 'Melodic/Liquid': '#00FA9A',
    'Liquid/Soul': '#FFD700', 'Experimental': '#C0C0C0', 'Jungle': '#8B4513',
    'Liquid': '#87CEEB', 'Ambient/Garage': '#4B0082', 'Deep/Liquid': '#2F4F4F',
    'Experimental/Tech': '#ADFF2F', 'Liquid/Dark': '#483D8B', 'Dancefloor/Minimal': '#708090',
    'Jungle/Dancefloor': '#D2691E',
}

# --- 2. HELPERS ---
def _wrap(text, width=55):
    return textwrap.fill(str(text), width).replace('\n', '<br>')

def get_axis_popover(dim_name, genre):
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

def _field(row, col):
    """Safely read a field from a pandas Series, returning '' for NaN."""
    val = row.get(col, '')
    return '' if pd.isna(val) else str(val)

# --- 3. SESSION STATE ---
if 'mode' not in st.session_state:
    st.session_state['mode'] = 'explore'
if 'artist_select' not in st.session_state:
    st.session_state['artist_select'] = "None"
for _i in range(4):
    if f'compare_sel_{_i}' not in st.session_state:
        st.session_state[f'compare_sel_{_i}'] = _PLACEHOLDER

# --- 4. HEADER & MODE TOGGLE ---
st.title("🔊 PolyJamerous")
mode = st.session_state['mode']

mc1, mc2 = st.columns(2)
with mc1:
    if st.button("🌐 Soundscape", use_container_width=True,
                 type="primary" if mode == 'explore' else "secondary"):
        st.session_state['mode'] = 'explore'
        st.rerun()
with mc2:
    if st.button("📊 Compare Artists", use_container_width=True,
                 type="primary" if mode == 'compare' else "secondary"):
        st.session_state['mode'] = 'compare'
        st.rerun()

st.markdown("---")

# ============================================================
# EXPLORE MODE
# ============================================================
if mode == 'explore':

    with st.sidebar:
        st.subheader("Genre Focus")
        parent_genre = st.radio("Genre", options=GENRES, index=2, label_visibility="collapsed")

        st.markdown("---")
        st.subheader("Focus Artist")
        selected_artist = st.selectbox(
            "Artist", ["None"] + sorted(df['Artist'].tolist()),
            label_visibility="collapsed", key="artist_select"
        )
        st.caption("Click an artist dot to open Compare.")

        st.markdown("---")
        st.subheader("Subgenres")
        st.caption("Subgenre filtering coming soon.")

        st.markdown("---")
        st.subheader("Display Options")
        show_labels = st.checkbox("Show Artist Labels", value=True)

        st.markdown("---")
        st.subheader("Clustering")
        enable_clustering = st.checkbox("Enable K-Means Clustering", value=False)
        if enable_clustering:
            n_clusters = st.slider("Number of Clusters", 2, 15, 5)
            cluster_strategy = st.radio("Strategy", ["Aggregate", "Scatter"], label_visibility="collapsed")
        else:
            n_clusters = None
            cluster_strategy = None

    ax_col1, ax_col2, ax_col3 = st.columns(3)
    with ax_col1: axis_x = st.selectbox("X-Axis", DIMENSIONS, index=7)
    with ax_col2: axis_y = st.selectbox("Y-Axis", DIMENSIONS, index=1)
    with ax_col3: axis_z = st.selectbox("Z-Axis", DIMENSIONS, index=0)

    f_df = df[df['genre'] == parent_genre].copy()

    # Prepare for clustering if enabled
    if enable_clustering and n_clusters is not None:
        X = f_df[[axis_x, axis_y, axis_z]].values
        kmeans = KMeans(n_clusters=n_clusters, random_state=42, n_init=10)
        f_df['_cluster_id'] = kmeans.fit_predict(X)
        f_df['_cluster_center'] = False

    if not f_df.empty:
        DIM_SHORT = [
            ("Arousal", "Arousal"),              ("Valence",             "Valence"),
            ("Timbral Brightness", "Brightness"), ("Rhythmic Regularity", "Rhythm"),
            ("Harmonic Complexity", "Harmony"),   ("Spatial Dimension",   "Spatial"),
            ("Articulation", "Articulation"),     ("Melodic Salience",    "Melody"),
            ("Structural Entropy", "Entropy"),    ("Acousticness",        "Acoustic"),
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

        def build_collision_hover(group):
            parts = []
            for _, row in group.iterrows():
                score_lines = "<br>".join(
                    f"{short:<13} {row[full]:>2}    {DIM_SHORT[i+1][1]:<13} {row[DIM_SHORT[i+1][0]]:>2}"
                    for i, (full, short) in enumerate(DIM_SHORT) if i % 2 == 0
                )
                parts.append(
                    f"<b>{row['Artist']}</b><br>"
                    f"<i>{_wrap(row['DNA'], width=45)}</i><br><br>"
                    f"{score_lines}"
                )
            return "<br><br>─────────<br><br>".join(parts) + "<extra></extra>"

        def axis_color(row):
            def ch(v): return int((v - 1) / 9 * 175 + 80)
            return f"rgb({ch(row[axis_x])},{ch(row[axis_y])},{ch(row[axis_z])})"

        f_df = f_df.copy()
        f_df['_color'] = f_df.apply(axis_color, axis=1)

        # Define cluster colors for visualization
        CLUSTER_COLORS = [
            '#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd',
            '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf',
            '#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd'
        ]
        if enable_clustering:
            f_df['_cluster_color'] = f_df['_cluster_id'].apply(lambda x: CLUSTER_COLORS[x % len(CLUSTER_COLORS)])

        fig = go.Figure()

        # Handle Aggregate clustering: show centroids only
        if enable_clustering and cluster_strategy == 'Aggregate':
            # Create cluster summary
            X = f_df[[axis_x, axis_y, axis_z]].values
            kmeans_model = KMeans(n_clusters=n_clusters, random_state=42, n_init=10)
            kmeans_model.fit(X)

            # Build centroid points
            for cluster_id in range(n_clusters):
                cluster_mask = f_df['_cluster_id'] == cluster_id
                cluster_members = f_df[cluster_mask]

                if not cluster_members.empty:
                    centroid = kmeans_model.cluster_centers_[cluster_id]
                    member_count = len(cluster_members)
                    member_list = cluster_members['Artist'].tolist()

                    # Build hover text with member list
                    member_text = "<br>".join(member_list[:10])
                    if len(member_list) > 10:
                        member_text += f"<br>... and {len(member_list) - 10} more"

                    hover_text = (
                        f"<b>Cluster {cluster_id + 1}</b><br>"
                        f"Members: {member_count}<br><br>"
                        f"<i>Artists in cluster:</i><br>"
                        f"{member_text}"
                        "<extra></extra>"
                    )

                    # Check if any cluster member is the focused artist
                    is_focused = selected_artist != "None" and selected_artist in member_list

                    fig.add_trace(go.Scatter3d(
                        x=[centroid[0]], y=[centroid[1]], z=[centroid[2]],
                        mode='markers+text' if show_labels else 'markers',
                        text=[f"C{cluster_id + 1}"] if show_labels else [""],
                        marker=dict(
                            size=20 if is_focused else 15,
                            symbol='diamond',
                            color=CLUSTER_COLORS[cluster_id % len(CLUSTER_COLORS)],
                            opacity=1.0,
                            line=dict(color='white', width=3 if is_focused else 2)
                        ),
                        textfont=dict(color='white', size=12),
                        textposition="top center",
                        hovertemplate=[hover_text],
                        showlegend=False,
                        name=f"Cluster {cluster_id + 1}"
                    ))
        else:
            # Non-Aggregate mode: show individual points
            pos_cols = [axis_x, axis_y, axis_z]
            is_collision = f_df.duplicated(subset=pos_cols, keep=False)
            singles_df = f_df[~is_collision]
            collisions_df = f_df[is_collision]

    # If Aggregate mode - skip individual point rendering below
    if not (enable_clustering and cluster_strategy == 'Aggregate'):
        pos_cols = [axis_x, axis_y, axis_z]
        is_collision = f_df.duplicated(subset=pos_cols, keep=False)
        singles_df = f_df[~is_collision]
        collisions_df = f_df[is_collision]

        # Background single points
        others = singles_df[singles_df['Artist'] != selected_artist] if selected_artist != "None" else singles_df
        if not others.empty:
            # Determine colors based on clustering strategy
            use_cluster_colors = enable_clustering and cluster_strategy == 'Scatter'
            point_colors = others['_cluster_color'].tolist() if use_cluster_colors else others['_color'].tolist()
            text_colors = point_colors if use_cluster_colors else others['_color'].tolist()

            fig.add_trace(go.Scatter3d(
                x=others[axis_x], y=others[axis_y], z=others[axis_z],
                mode='markers+text' if show_labels else 'markers',
                text=others['Artist'] if show_labels else "",
                marker=dict(size=7, symbol='circle', color=point_colors, opacity=0.85),
                textfont=dict(color=text_colors, size=11),
                textposition="top center",
                hovertemplate=[build_hover(r) for _, r in others.iterrows()],
                showlegend=False
            ))

        # Focused single artist
        if selected_artist != "None" and selected_artist in singles_df['Artist'].values:
            fa = singles_df[singles_df['Artist'] == selected_artist].iloc[[0]]
            use_cluster_colors = enable_clustering and cluster_strategy == 'Scatter'
            fa_color = fa['_cluster_color'].iloc[0] if use_cluster_colors else fa['_color'].iloc[0]
            fig.add_trace(go.Scatter3d(
                x=fa[axis_x], y=fa[axis_y], z=fa[axis_z],
                mode='markers+text' if show_labels else 'markers',
                text=fa['Artist'] if show_labels else "",
                marker=dict(size=14, symbol='circle', color=fa_color, opacity=1.0,
                            line=dict(color='white', width=3)),
                textfont=dict(color='white', size=14),
                textposition="top center",
                hovertemplate=[build_hover(fa.iloc[0])],
                showlegend=False
            ))

        # Collision stars — gold diamond, both names, no click-to-focus
        for _, group in collisions_df.groupby(pos_cols, sort=False):
            names = " & ".join(group['Artist'].tolist())
            is_focused = selected_artist != "None" and selected_artist in group['Artist'].values
            fig.add_trace(go.Scatter3d(
                x=[group[axis_x].iloc[0]], y=[group[axis_y].iloc[0]], z=[group[axis_z].iloc[0]],
                mode='markers+text' if show_labels else 'markers',
                text=[names] if show_labels else [""],
                marker=dict(
                    size=15 if is_focused else 12,
                    symbol='diamond',
                    color='#FFD700',
                    opacity=1.0,
                    line=dict(color='white', width=3 if is_focused else 1)
                ),
                textfont=dict(color='#FFD700', size=13 if is_focused else 11),
                textposition="top center",
                hovertemplate=[build_collision_hover(group)],
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
            fig.add_trace(go.Scatter3d(x=[i], y=[1], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
            fig.add_trace(go.Scatter3d(x=[1], y=[i], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
            fig.add_trace(go.Scatter3d(x=[0.7], y=[1], z=[i], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))

        # Origin axes
        ax_style = dict(color='white', width=6)
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

        _axis = dict(
            range=[0.5, 10.8], showgrid=False, showbackground=False,
            backgroundcolor='rgba(0,0,0,0)', showticklabels=False,
            title="", showspikes=False, zeroline=False,
        )

        fig.update_layout(
            template="plotly_dark", height=800,
            paper_bgcolor='rgba(0,0,0,0)',
            hoverlabel=dict(font=dict(family="monospace", size=12)),
            clickmode='event+select',
            scene=dict(
                xaxis=_axis, yaxis=_axis, zaxis=_axis,
                aspectmode='cube',
                bgcolor='rgba(0,0,0,0)',
                annotations=[
                    dict(showarrow=False, x=10.7, y=1, z=1, text=f"<b>{axis_x}</b>",
                         font=dict(color="white", size=13), hovertext=get_axis_popover(axis_x, parent_genre)),
                    dict(showarrow=False, x=1, y=10.7, z=1, text=f"<b>{axis_y}</b>",
                         font=dict(color="white", size=13), hovertext=get_axis_popover(axis_y, parent_genre)),
                    dict(showarrow=False, x=1, y=1, z=10.7, text=f"<b>{axis_z}</b>",
                         font=dict(color="white", size=13), hovertext=get_axis_popover(axis_z, parent_genre)),
                ]
            ),
            margin=dict(l=0, r=0, b=0, t=0)
        )

        event = st.plotly_chart(fig, on_select="rerun", selection_mode=["points"],
                                key="scatter3d", width='stretch')

        # Click on a single artist dot → switch to Compare with them in slot 1
        if event.selection.points:
            clicked_text = event.selection.points[0].get('text', '')
            if clicked_text in df['Artist'].values:
                st.session_state['compare_sel_0'] = clicked_text
                for _j in range(1, 4):
                    st.session_state[f'compare_sel_{_j}'] = _PLACEHOLDER
                st.session_state['mode'] = 'compare'
                st.rerun()

# ============================================================
# COMPARE MODE
# ============================================================
elif mode == 'compare':
    artist_options = [_PLACEHOLDER] + sorted(df['Artist'].tolist())

    st.markdown("#### Select up to 4 artists to compare")
    drop_cols = st.columns(4)
    for i, col in enumerate(drop_cols):
        with col:
            st.selectbox(f"Artist {i + 1}", artist_options, key=f"compare_sel_{i}")

    active_names = [
        st.session_state[f"compare_sel_{i}"]
        for i in range(4)
        if st.session_state.get(f"compare_sel_{i}", _PLACEHOLDER) != _PLACEHOLDER
        and st.session_state.get(f"compare_sel_{i}") in df['Artist'].values
    ]

    if not active_names:
        st.info("Select an artist above, or click one in the Soundscape to start comparing.")
    else:
        # --- RADAR CHART ---
        fig_radar = go.Figure()
        for j, name in enumerate(active_names):
            row = df[df['Artist'] == name].iloc[0]
            vals = [row[dim] for dim in DIMENSIONS]
            fig_radar.add_trace(go.Scatterpolar(
                r=vals + [vals[0]],
                theta=DIMENSIONS + [DIMENSIONS[0]],
                fill='toself',
                name=name,
                line=dict(color=COMPARE_COLORS[j % len(COMPARE_COLORS)], width=2),
                opacity=0.65,
            ))
        fig_radar.update_layout(
            polar=dict(
                radialaxis=dict(
                    visible=True, range=[0, 10],
                    tickfont=dict(color='rgba(255,255,255,0.4)', size=9),
                ),
                angularaxis=dict(tickfont=dict(color='white', size=11)),
                bgcolor='rgba(0,0,0,0)',
            ),
            template="plotly_dark",
            paper_bgcolor='rgba(0,0,0,0)',
            showlegend=True,
            legend=dict(font=dict(color='white', size=12)),
            height=520,
            margin=dict(l=60, r=60, t=40, b=40),
        )
        st.plotly_chart(fig_radar, width='stretch')

        # --- ARTIST DETAIL PANELS ---
        detail_cols = st.columns(len(active_names))
        for j, (name, col) in enumerate(zip(active_names, detail_cols)):
            row = df[df['Artist'] == name].iloc[0]
            color = COMPARE_COLORS[j % len(COMPARE_COLORS)]
            with col:
                st.markdown(
                    f"<span style='color:{color};font-size:1.1em;font-weight:bold'>{name}</span>",
                    unsafe_allow_html=True,
                )
                subgenre = _field(row, 'Subgenre')
                if subgenre:
                    st.caption(subgenre)
                dna = _field(row, 'DNA')
                if dna:
                    st.markdown(f"*{dna}*")
                st.markdown("---")
                for dim in DIMENSIONS:
                    val = int(row[dim])
                    st.progress(val / 10, text=f"{dim}: {val}")
