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
        return pd.DataFrame({'Artist':['No Data'],'Aggression':[5],'Complexity':[5],'Texture':[5],'Subgenre':['Liquid']})

df = load_data()

# Stylistic Color Palette
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

# --- 2. THE POLYJAMEROUS DECK (SIDEBAR) ---
st.set_page_config(page_title="PolyJamerous", layout="wide", page_icon="🔊")
st.sidebar.title("🔊 PolyJamerous")

with st.sidebar:
    st.subheader("Focal Analysis")
    selected_artist = st.selectbox("Select Artist", ["None"] + sorted(df['Artist'].tolist()))
    
    radius = 15.0
    if selected_artist != "None":
        radius = st.slider("Neighborhood Radius", 1.0, 12.0, 4.0)
    
    st.markdown("---")
    st.subheader("Genre Filter")
    
    # Elegant Radio Button List with Color Coding
    all_genres = sorted(df['Subgenre'].unique())
    # Create display labels with color dots
    genre_options = ["Show All"] + all_genres
    
    # We use a selection box or radio list that maps to the data
    selected_mode = st.radio(
        "Select Subgenre to Isolate:",
        options=genre_options,
        index=0
    )

# Filter the data based on selection
if selected_mode == "Show All":
    f_df = df.copy()
else:
    f_df = df[df['Subgenre'] == selected_mode].copy()

# --- 3. RENDERING ENGINE ---
st.title("🔊 PolyJamerous")

if f_df.empty:
    st.info("The floor is empty. Adjust filters to start the jam.")
else:
    fig = go.Figure()

    # Color & Neighbor Logic
    marker_color = f_df['Subgenre'].map(subgenre_colors).fillna('#FFFFFF').tolist()
    colorscale = None
    
    if selected_artist != "None":
        t_coords = df[df['Artist'] == selected_artist][['Aggression', 'Complexity', 'Texture']].values[0].astype(float)
        f_df['Dist'] = np.sqrt(np.sum((f_df[['Aggression', 'Complexity', 'Texture']].values.astype(float) - t_coords)**2, axis=1))
        f_df = f_df[f_df['Dist'] <= radius]
        
        if not f_df.empty:
            max_d = f_df['Dist'].max() if f_df['Dist'].max() > 0 else 1
            f_df['Prox'] = 1 - (f_df['Dist'] / max_d)
            marker_color = f_df['Prox']
            base_hex = subgenre_colors.get(df[df['Artist']==selected_artist]['Subgenre'].iloc[0], '#00D4FF')
            colorscale = [[0, '#333333'], [1, base_hex]]

    # MAIN ARTIST TRACE
    fig.add_trace(go.Scatter3d(
        x=f_df['Aggression'], y=f_df['Complexity'], z=f_df['Texture'],
        mode='markers+text',
        text=f_df['Artist'],
        # Custom Hover Template: Removes "Trace 0" and technical clutter
        hovertemplate=(
            "<b>%{text}</b><br>" +
            "Subgenre: %{customdata[0]}<br>" +
            "Aggression: %{x:.1f}<br>" +
            "Complexity: %{y:.1f}<br>" +
            "Texture: %{z:.1f}" +
            "<extra></extra>"
        ),
        customdata=np.stack((f_df['Subgenre'],), axis=-1),
        marker=dict(size=5, color=marker_color, colorscale=colorscale, opacity=0.9),
        textposition="top center",
        showlegend=False
    ))

    # DRAWING AXIS NUMBERS (Manual 1-10 labels on the white lines)
    for i in range(1, 11):
        fig.add_trace(go.Scatter3d(x=[i], y=[1], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='gray', size=10), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[1], y=[i], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='gray', size=10), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[0.7], y=[1], z=[i], mode='text', text=[str(i)], textfont=dict(color='gray', size=10), showlegend=False, hoverinfo='skip'))

    # MAIN AXES (The Origin Frame)
    ax_style = dict(color='white', width=5)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    # SCENE SETTINGS
    clean_axis = dict(
        range=[-1, 12], showgrid=False, showbackground=False, 
        zeroline=False, showline=False, showticklabels=False, title=""
    )

    fig.update_layout(
        template="plotly_dark", height=850, uirevision='constant',
        scene=dict(
            xaxis=clean_axis, yaxis=clean_axis, zaxis=clean_axis,
            aspectmode='cube',
            # Disable the projection lines (spikes) on hover
            xaxis_showspikes=False, yaxis_showspikes=False, zaxis_showspikes=False,
            annotations=[
                dict(showarrow=False, x=11, y=1, z=1, text="Aggression", font=dict(color="white", size=14)),
                dict(showarrow=False, x=1, y=11, z=1, text="Complexity", font=dict(color="white", size=14)),
                dict(showarrow=False, x=1, y=1, z=11, text="Texture", font=dict(color="white", size=14))
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0)
    )

    st.plotly_chart(fig, use_container_width=True)