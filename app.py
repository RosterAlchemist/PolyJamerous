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
        return pd.DataFrame({'Artist':['Check CSV Path'],'Aggression':[5.0],'Complexity':[5.0],'Texture':[5.0],'Subgenre':['None']})

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

# --- 2. SIDEBAR UI ---
st.set_page_config(page_title="PolyJamerous", layout="wide", page_icon="🔊")
st.sidebar.title("🔊 PolyJamerous")

with st.sidebar:
    st.subheader("Focal Analysis")
    selected_artist = st.selectbox("Select Artist", ["None"] + sorted(df['Artist'].tolist()))
    radius = st.slider("Neighborhood Radius", 1.0, 12.0, 5.0) if selected_artist != "None" else 15.0
    
    st.markdown("---")
    st.subheader("Genre Mixology")
    
    selected_genres = []
    all_genres = sorted(df['Subgenre'].unique())
    
    # Clean Pill-Toggle Layout
    for g in all_genres:
        col1, col2 = st.columns([3, 1])
        g_color = subgenre_colors.get(g, "#FFFFFF")
        
        with col1:
            st.markdown(f'<span style="color:{g_color}; font-weight:bold; font-size:14px;">● {g}</span>', unsafe_allow_html=True)
        with col2:
            is_active = st.toggle("Active", value=True, key=f"tog_{g}", label_visibility="collapsed")
            if is_active:
                selected_genres.append(g)

f_df = df[df['Subgenre'].isin(selected_genres)].copy()

# --- 3. RENDERING ENGINE ---
st.title("🔊 PolyJamerous")

if f_df.empty:
    st.info("The floor is empty. Use the toggles to mix in some genres.")
else:
    # Color mapping
    f_df['ColorMap'] = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF')
    marker_color = f_df['ColorMap'].tolist()
    colorscale = None
    
    if selected_artist != "None":
        target = df[df['Artist'] == selected_artist].iloc[0]
        t_coords = target[['Aggression', 'Complexity', 'Texture']].values.astype(float)
        f_df['Dist'] = np.sqrt(np.sum((f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - t_coords)**2, axis=1))
        f_df = f_df[f_df['Dist'] <= radius]
        
        if not f_df.empty:
            max_d = f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1
            f_df['Prox'] = 1 - (f_df['Dist'] / max_d)
            marker_color = f_df['Prox']
            base_color = subgenre_colors.get(target['Subgenre'], '#00D4FF')
            colorscale = [[0, '#222222'], [1, base_color]]

    fig = go.Figure()

    # MAIN ARTIST TRACE
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text',
        text=f_df['Artist'],
        textfont=dict(color=f_df['ColorMap'].tolist(), size=11),
        marker=dict(size=6, color=marker_color, colorscale=colorscale, opacity=0.9, line=dict(width=0)),
        textposition="top center",
        hovertemplate="<b>%{text}</b><br>Aggression: %{x}<br>Complexity: %{y}<br>Texture: %{z}<extra></extra>",
        showlegend=False
    ))

    # --- COMPLETE 3-PLANE MANUAL GRID ---
    grid_style = dict(color="rgba(150, 150, 150, 0.15)", width=1)
    for i in range(1, 11):
        # 1. Plane: Aggression (X) vs Complexity (Y) - Base Floor
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 10], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[i, i], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        
        # 2. Plane: Complexity (Y) vs Texture (Z) - Back Wall
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[i, i], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        
        # 3. Plane: Aggression (X) vs Texture (Z) - Left Wall (THE FIX)
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 1], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        
        # Ticks on Axes
        fig.add_trace(go.Scatter3d(x=[i], y=[1], z=[0.8], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[1], y=[i], z=[0.8], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[0.8], y=[1], z=[i], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))

    # WHITE ORIGIN FRAME
    ax_style = dict(color='white', width=6)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    # STAGE CONFIG
    clean_axis = dict(
        range=[-1, 12], showgrid=False, showbackground=False, 
        zeroline=False, showline=False, showticklabels=False, title=""
    )

    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=clean_axis, yaxis=clean_axis, zaxis=clean_axis,
            aspectmode='cube',
            xaxis_showspikes=False, yaxis_showspikes=False, zaxis_showspikes=False,
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