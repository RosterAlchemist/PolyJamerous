import streamlit as st
import plotly.express as px
import pandas as pd

# --- 1. DATA INITIALIZATION ---
# I've expanded the database with the new artists and technical "Drum DNA"
data = {
    'Artist': [
        'Basstripper', 'MUZZ', 'Grafix', 'Pendulum', 'Sigma', 'TeeBee', 'Sub Focus', 
        'Kumarion', 'Feint', 'Rudimental', 'Justin Hawkes', 'Goldie', 'Hybrid Minds', 
        'Phaeleh', 'Noisia', 'Metrik', 'Alix Perez', 'Netsky', 'Chase & Status', 'Bou', 'Dimension'
    ],
    'Aggression': [9, 9, 8, 9.5, 6, 8, 6, 9, 5, 3, 4, 2, 2, 1, 9.5, 8, 3, 4, 7, 8, 7],
    'Complexity': [2, 9, 8, 9, 6, 10, 7, 3, 6, 8, 6, 9, 6, 4, 10, 8, 9, 6, 7, 4, 7],
    'Texture': [9, 8, 9, 2, 4, 10, 8, 7, 7, 1, 4, 2, 3, 8, 10, 9, 5, 6, 4, 8, 9],
    'Subgenre': [
        'Jump-Up', 'Dancefloor/Neuro', 'Dancefloor/Tech', 'Dancefloor/Rock', 'Dancefloor/Pop', 
        'Neurofunk', 'Dancefloor', 'Heavy/Trap', 'Melodic/Liquid', 'Liquid/Soul', 
        'Experimental', 'Jungle', 'Liquid', 'Ambient/Garage', 'Neurofunk', 'Dancefloor', 
        'Deep/Liquid', 'Liquid/Pop', 'Jungle/Dancefloor', 'Jump-Up', 'Dancefloor'
    ],
    'Drum_DNA': [
        "Minimalist, bouncy 'wonk' rhythms; sparse high-pitched snares.",
        "Cinematic 2-step; industrial, compressed 'wall of sound' drums.",
        "Sleek, high-tech 2-step with rock-inspired percussion accents.",
        "Acoustic/Electronic hybrid; driving rock-drum energy.",
        "Radio-ready 2-step; polished, uplifting snare hits.",
        "Surgical precision; cold, metallic alien percussion.",
        "The standard for Dancefloor; shimmering hats and heavy sub-kick.",
        "Half-time Trap influence; heavy stomping claps and triplet kicks.",
        "Uplifting 'gaming' style; fast, bright, and energetic rolls.",
        "Organic live-style drums; heavy use of brass and soul grooves.",
        "Eclectic fusion; Americana/Rock textures in a DnB framework.",
        "Complex breakbeat slicing; the gold standard for Jungle rolls.",
        "Ethereal rolling breakbeats; heavy use of ghost notes for flow.",
        "Ambient/Minimal; deep sub-bass with scattered, garage-style beats.",
        "The peak of technicality; hyper-engineered, glitched sound design.",
        "Thumping festival 2-step; extremely punchy and synthetic.",
        "Deep, minimalist rollers; intricate and subtle percussion work.",
        "Happy, melodic 2-step; snappy snares and playful energy.",
        "Gritty, old-school breakbeat flavor mixed with modern sub power.",
        "Raw 'rolling' jump-up; minimalist but highly rhythmic bass-interplay.",
        "Clean, neon-drenched dancefloor; incredibly consistent and driving."
    ]
}
df = pd.DataFrame(data)

# --- 2. PAGE CONFIG ---
st.set_page_config(page_title="DnB 3D Explorer", page_icon="🔊", layout="wide")

# Custom CSS for a darker 'Rave' aesthetic
st.markdown("""
    <style>
    .main { background-color: #0e1117; }
    h1, h2, h3 { color: #00d4ff; }
    </style>
    """, unsafe_allow_html=True)

# --- 3. SIDEBAR (FILTERS & CONTROLS) ---
st.sidebar.title("🎛️ Navigation")
view_mode = st.sidebar.radio("Select View:", ["3D Explorer", "Artist Face-Off"])

st.sidebar.markdown("---")
st.sidebar.subheader("Filters")
sub_filter = st.sidebar.multiselect("Subgenres:", options=df['Subgenre'].unique(), default=df['Subgenre'].unique())
search = st.sidebar.text_input("Search Artist:", "")

# Filter logic
filtered_df = df[(df['Subgenre'].isin(sub_filter)) & (df['Artist'].str.contains(search, case=False))]

# --- 4. MAIN CONTENT ---
if view_mode == "3D Explorer":
    st.title("🔊 The DnB 3D Soundscape")
    st.write("Rotate the cube to explore the relationship between Aggression, Complexity, and Texture.")
    
    # 3D Plotly Logic
    fig = px.scatter_3d(
        filtered_df, x='Aggression', y='Complexity', z='Texture',
        color='Subgenre', text='Artist',
        labels={'Texture': 'Texture (Organic vs Synthetic)'},
        height=800, template="plotly_dark",
        color_discrete_sequence=px.colors.qualitative.Pastel
    )
    # This keeps the camera from resetting when you filter
    fig.update_layout(uirevision='constant', scene=dict(
        xaxis=dict(backgroundcolor="rgb(20, 20, 20)", gridcolor="gray", showbackground=True),
        yaxis=dict(backgroundcolor="rgb(20, 20, 20)", gridcolor="gray", showbackground=True),
        zaxis=dict(backgroundcolor="rgb(20, 20, 20)", gridcolor="gray", showbackground=True),
    ))
    
    st.plotly_chart(fig, use_container_width=True)

else:
    st.title("🆚 Artist Face-Off")
    col1, col2 = st.columns(2)
    
    with col1:
        a1 = st.selectbox("Select Artist 1", df['Artist'].sort_values())
        d1 = df[df['Artist'] == a1].iloc[0]
        st.header(f"**{a1}**")
        st.write(f"**Subgenre:** {d1['Subgenre']}")
        st.progress(d1['Aggression']/10, text=f"Aggression: {d1['Aggression']}")
        st.progress(d1['Complexity']/10, text=f"Complexity: {d1['Complexity']}")
        st.info(f"**Drum DNA:** {d1['Drum_DNA']}")

    with col2:
        a2 = st.selectbox("Select Artist 2", df['Artist'].sort_values(), index=1)
        d2 = df[df['Artist'] == a2].iloc[0]
        st.header(f"**{a2}**")
        st.write(f"**Subgenre:** {d2['Subgenre']}")
        st.progress(d2['Aggression']/10, text=f"Aggression: {d2['Aggression']}")
        st.progress(d2['Complexity']/10, text=f"Complexity: {d2['Complexity']}")
        st.info(f"**Drum DNA:** {d2['Drum_DNA']}")
    
    st.divider()
    st.write("### Technical Breakdown")
    diff = d1['Aggression'] - d2['Aggression']
    verdict = f"{a1} is significantly heavier." if diff > 2 else f"{a2} is heavier." if diff < -2 else "Both share similar energy levels."
    st.success(f"**The Verdict:** {verdict}")