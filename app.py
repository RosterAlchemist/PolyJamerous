import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go

# --- 1. DATA LOADING & CONSTANTS ---
@st.cache_data
def load_data():
    artists = pd.read_csv('artists.csv')
    # Using the new version with genre columns
    anchors = pd.read_csv('dimension_anchors_v2.csv')
    return artists, anchors

df, anchors_df = load_data()

DIMENSIONS = [
    "Arousal", "Valence", "Timbral Brightness", "Rhythmic Regularity",
    "Harmonic Complexity", "Spatial Dimension", "Articulation",
    "Melodic Salience", "Structural Entropy", "Acousticness"
]

GENRES = [
    "Bass + Dubstep", "Breakbeat", "Drum & Bass + Jungle", "ElectroPop + SynthPop",
    "Hard Dance", "House", "IDM", "Noise", "Synthwave + Vaporwave", "Techno", "Trance"
]

subgenre_colors = {
    'Jump-Up': '#FF4B4B', 'Dancefloor/Neuro': '#00D4FF', 'Dancefloor/Tech': '#7D4BFF',
    'Dancefloor/Rock': '#FFB400', 'Dancefloor/Pop': '#FF69B4', 'Neurofunk': '#32CD32',
    'Dancefloor': '#1E90FF', 'Heavy/Trap': '#8B0000', 'Melodic/Liquid': '#00FA9A',
    'Liquid/Soul': '#FFD700', 'Experimental': '#C0C0C0', 'Jungle': '#8B4513',
    'Liquid': '#87CEEB', 'Ambient/Garage': '#4B0082', 'Deep/Liquid': '#2F4F4F',
    'Experimental/Tech': '#ADFF2F', 'Liquid/Dark': '#483D8B', 'Dancefloor/Minimal': '#708090',
    'Jungle/Dancefloor': '#D2691E'
}

def apply_jitter(group, dims):
    if len(group) > 1:
        angles = np.linspace(0, 2*np.pi, len(group), endpoint=False)
        radius = 0.28
        for i, dim in enumerate(dims):
            group[dim] = group[dim].astype(float) + radius * (np.cos(angles) if i % 2 == 0 else np.sin(angles))
    return group

# --- 2. HEADER & GENRE SELECTOR ---
st.title("🔊 PolyJamerous")

# Top-level Genre Selector
parent_genre = st.radio(
    "Select Parent Genre Focus",
    options=GENRES,
    index=GENRES.index("Drum & Bass + Jungle"),
    horizontal=True
)

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
    selected_subgenres = []
    # Currently filtering subgenres based on the dataset (assuming DnB for this prototype)
    all_subs = sorted(df['Subgenre'].unique())
    for s in all_subs:
        col1, col2 = st.columns([3, 1])
        with col1:
            st.markdown(f'<span style="color:{subgenre_colors.get(s, "#EEE")}; font-weight:bold;">● {s}</span>', unsafe_allow_html=True)
        with col2:
            if st.toggle("Active", value=True, key=f"tog_{s}", label_visibility="collapsed"):
                selected_subgenres.append(s)

# --- 4. DATA PROCESSING ---
active_dims = [axis_x, axis_y, axis_z]
current_df = df.groupby(active_dims, group_keys=False).apply(lambda x: apply_jitter(x, active_dims))
f_df = current_df[current_df['Subgenre'].isin(selected_subgenres)].copy()

def get_anchor_label(dim_name, current_genre):
    try:
        # Filter anchors by the selected parent genre
        row = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == current_genre)].iloc[0]
        return f"<b>{dim_name}</b><br><span style='font-size:10px; color:#AAA;'>High: {row['High-End Anchor']}<br>Low: {row['Low-End Anchor']}</span>"
    except:
        # Fallback if genre isn't in anchor file yet
        return f"<b>{dim_name}</b>"

# --- 5. VISUALIZATION ---
if f_df.empty:
    st.warning("No artists match the current subgenre selection.")
else:
    f_df['ColorMap'] = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF')
    marker_color = f_df['ColorMap'].tolist()
    colorscale = None
    
    if selected_artist != "None":
        target = df[df['Artist'] == selected_artist].iloc[0]
        t_coords = target[active_dims].values.astype(float)
        f_df['Dist'] = np.sqrt(np.sum((f_df[active_dims].values.astype(float) - t_coords)**2, axis=1))
        f_df = f_df[f_df['Dist'] <= radius]
        if not f_df.empty:
            max_d = f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1
            marker_color = 1 - (f_df['Dist'] / max_d)
            base_color = subgenre_colors.get(target['Subgenre'], '#00D4FF')
            colorscale = [[0, '#222222'], [1, base_color]]

    fig = go.Figure()

    # Artist Data Points
    fig.add_trace(go.Scatter3d(
        x=f_df[axis_x], y=f_df[axis_y], z=f_df[axis_z],
        mode='markers+text',
        text=f_df['Artist'],
        textfont=dict(color=f_df['ColorMap'].tolist(), size=11),
        marker=dict(size=6, color=marker_color, colorscale=colorscale, opacity=0.9),
        textposition="top center",
        hovertemplate="<b>%{text}</b><br>DNA: %{customdata}<extra></extra>",
        customdata=f_df['DNA']
    ))

    # Grid & Frame (Logic from previous versions)
    grid_style = dict(color="rgba(150, 150, 150, 0.12)", width=1)
    for i in range(1, 11):
        # Interior Grids
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

    # Origin Frame
    ax_style = dict(color='white', width=6)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, showticklabels=False, title=""),
            yaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, showticklabels=False, title=""),
            zaxis=dict(range=[-1, 12], showgrid=False, showbackground=False, showticklabels=False, title=""),
            aspectmode='cube',
            annotations=[
                dict(showarrow=False, x=11, y=1, z=1, text=get_anchor_label(axis_x, parent_genre), font=dict(color="white")),
                dict(showarrow=False, x=1, y=11, z=1, text=get_anchor_label(axis_y, parent_genre), font=dict(color="white")),
                dict(showarrow=False, x=1, y=1, z=11, text=get_anchor_label(axis_z, parent_genre), font=dict(color="white"))
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0),
        showlegend=False
    )

    st.plotly_chart(fig, use_container_width=True)