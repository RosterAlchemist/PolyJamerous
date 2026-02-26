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
        return pd.DataFrame({'Artist':['Missing CSV'],'Aggression':[5.0],'Complexity':[5.0],'Texture':[5.0],'Subgenre':['None']})

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

# --- 2. THE POLYJAMEROUS DECK ---
st.set_page_config(page_title="PolyJamerous", layout="wide", page_icon="🔊")

# Custom CSS to force radio buttons to follow your brand colors
st.markdown("""
    <style>
    div[role="radiogroup"] > label > div:first-child { background-color: #333 !important; }
    div[role="radiogroup"] { color: white !important; }
    </style>
    """, unsafe_allow_html=True)

st.sidebar.title("🔊 PolyJamerous")

with st.sidebar:
    st.subheader("Focal Analysis")
    selected_artist = st.selectbox("Select Artist", ["None"] + sorted(df['Artist'].tolist()))
    
    radius = 15.0
    if selected_artist != "None":
        radius = st.sidebar.slider("Neighborhood Radius", 1.0, 12.0, 5.0)
    
    st.markdown("---")
    st.subheader("Genre Filter")
    all_genres = sorted(df['Subgenre'].unique())
    
    # We create custom labels with colored emojis for the Radio Buttons
    def get_genre_label(g):
        if g == "Show All": return "🌐 Show All"
        return f"● {g}"

    selected_mode = st.radio(
        "Isolate Subgenre:",
        options=["Show All"] + all_genres,
        index=0
    )

# Filter Logic
f_df = df.copy() if selected_mode == "Show All" else df[df['Subgenre'] == selected_mode].copy()

# --- 3. RENDERING ENGINE ---
st.title("🔊 PolyJamerous")

if f_df.empty:
    st.info("The floor is empty. Adjust filters to start the jam.")
else:
    # 3D Calculation for Neighbor Highlighting
    marker_color = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF').tolist()
    colorscale = None
    
    if selected_artist != "None":
        target = df[df['Artist'] == selected_artist].iloc[0]
        t_coords = target[['Aggression', 'Complexity', 'Texture']].values.astype(float)
        f_df['Dist'] = np.sqrt(np.sum((f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - t_coords)**2, axis=1))
        
        # Apply the proximity-based color gradient
        f_df = f_df[f_df['Dist'] <= radius]
        if not f_df.empty:
            max_d = f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1
            f_df['Prox'] = 1 - (f_df['Dist'] / max_d)
            marker_color = f_df['Prox']
            base_color = subgenre_colors.get(target['Subgenre'], '#00D4FF')
            colorscale = [[0, '#333333'], [1, base_color]]

    fig = go.Figure()

    # MAIN ARTIST TRACE
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text',
        text=f_df['Artist'],
        customdata=f_df['Subgenre'],
        hovertemplate="<b>%{text}</b><br>Genre: %{customdata}<br>Aggression: %{x}<br>Complexity: %{y}<br>Texture: %{z}<extra></extra>",
        marker=dict(size=6, color=marker_color, colorscale=colorscale, opacity=0.9, line=dict(width=0)),
        textposition="top center"
    ))

    # DRAW CUSTOM AXIS LINES (Exactly 1-10)
    line_params = dict(color='white', width=8)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=line_params, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=line_params, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=line_params, hoverinfo='skip', showlegend=False))

    # AXIS CONFIG: Ensuring ticks are centered on the 1-10 lines
    axis_style = dict(
        range=[-1, 12],
        showbackground=False, showline=False, zeroline=False,
        showgrid=True, gridcolor="rgba(100, 100, 100, 0.2)",
        tickmode='array', tickvals=list(range(1, 11)),
        showticklabels=True, title="",
        tickfont=dict(color='white', size=10)
    )

    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=axis_style, yaxis=axis_style, zaxis=axis_style,
            xaxis_showspikes=False, yaxis_showspikes=False, zaxis_showspikes=False,
            aspectmode='cube',
            annotations=[
                dict(showarrow=False, x=11, y=1, z=1, text="Aggression", font=dict(color="white", size=14)),
                dict(showarrow=False, x=1, y=11, z=1, text="Complexity", font=dict(color="white", size=14)),
                dict(showarrow=False, x=1, y=1, z=11, text="Texture", font=dict(color="white", size=14))
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0),
        showlegend=False
    )

    st.plotly_chart(fig, use_container_width=True)