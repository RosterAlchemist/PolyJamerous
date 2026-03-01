-- PolyJamerous: Artist seed data — Batch 12 (K-M names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Krakota (Sebastian Inwood) — Dancefloor/Liquid DnB, Bournemouth, Hospital Records, CIA debut 2010
('Krakota',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Bournemouth producer who debuted on Total Science''s C.I.A. imprint in 2010 and broke through with Block Breaker on Sick Music 3 (2012) before signing exclusively to Hospital Records. Music licensed to Need for Speed (2015) and Forza Horizon 3 — bass-heavy, break-laden productions balanced with melodic energy, backed by Andy C, Friction, and Sub Focus.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- L Plus — Liquid/Melodic DnB, Bratislava/Slovakia, Technique Recordings, classically trained
('L Plus',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Classically trained Slovakian producer from Bratislava who brings orchestral sensibility to liquid drum and bass. Debut album Hideout (2017) on Technique Recordings showcases cinematic soundscapes and euphoric melodies built on a formal composition background — standout tracks Caspian Sea and Creature Must Die demonstrate rare harmonic depth within the genre.',
 5, 8, 7, 8,  8, 8, 6,  8, 5, 4),

-- Lemon D (Kevin King) — Techstep/Dark DnB, Brixton, Valve Recordings co-founder with Dillinja
('Lemon D',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Techstep'],
 'Brixton producer who co-founded Valve Recordings with Dillinja and co-designed the Valve Sound System — the first purpose-built sound system for drum and bass. Big Bad Bass Vol. 1 (2002) with Dillinja is a seminal heavy DnB record — three decades of dark, techy production across Metalheadz, V Recordings, and Infrared, with a celebrated return in 2024.',
 8, 3, 7, 8,  6, 8, 8,  4, 6, 2),

-- Level 2 (Pedro Barbosa) — Liquid/Soul DnB, Lisbon, V Recordings, jazz and hip-hop influences
('Level 2',              'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Lisbon-born drum and bass producer whose debut album Genesis (2008) launched a career rooted in soulful melodies, deep basslines, and intricate percussion. A consistent V Recordings artist whose jazz and hip-hop sensibilities give his liquid productions warmth and groove that translate equally to headphone listening and dancefloor environments.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 5),

-- Levela (Callum Smart) — Jump Up/Dancefloor, Crawley, RAM/Playaz, LVL Music
('Levela',               'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'Crawley producer who began DJing at 11 and established LVL Music to release his own jump-up and dancefloor drum and bass. Consistent output across RAM Records and Playaz Recordings — intricate rhythms and heavy basslines deliver relentless dancefloor impact, with Noisia remixes demonstrating his cross-scene respect.',
 8, 6, 8, 9,  4, 6, 9,  5, 5, 1),

-- Limewax (Maxim Anokhin) — Darkstep/Hardstep, Ukraine/Netherlands, PRSPCT/Tech Itch, intense
('Limewax',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Darkstep'],
 'Ukrainian producer based in the Netherlands who debuted aged 17 on Tech Itch Recordings in 2005 and built a reputation for intense, aggressive darkstep with frenetic breaks and acid textures. PRSPCT Recordings mainstay and Therapy Sessions fixture — collaborations with The Panacea and Current Value place him at the uncompromising hardcore edge of drum and bass.',
 9, 2, 8, 7,  6, 7, 9,  2, 8, 1),

-- Loadstar (Xample + Lomax) — Dancefloor/Melodic, RAM Records, ''Warrior'', Glastonbury regulars
('Loadstar',             'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'UK duo formed in 2010 by Xample and Lomax who built a dancefloor sound on RAM Records that merges euphoric melodies with heavyweight basslines. Link to the Past, Warrior, and Bomber earned support from Andy C and Chase & Status — Glastonbury and Creamfields appearances confirm their position as one of contemporary DnB''s most accessible and energetic live acts.',
 7, 7, 8, 8,  6, 7, 8,  8, 5, 2),

-- Loxy (Andrew Campbell) — Dark DnB/Neurofunk, London, Cylon/Metalheadz/Renegade Hardware, 30+ years
('Loxy',                 'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'London producer with over three decades in drum and bass who co-founded Cylon Recordings in 2003 and held residencies at Metalheadz Blue Note and Renegade Hardware. Renegade Hardware, Metalheadz, and Exit Records releases demonstrate a career built on dark, atmospheric DnB rooted in neuro-funk sensibilities — a true scene elder statesman.',
 6, 3, 7, 8,  7, 8, 7,  4, 7, 2),

-- Macky Gee (Jack McGeorge) — Jump Up, Kent, SaSaSaS collective, ''Sway'' 2016
('Macky Gee',            'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'Kent producer who began mixing at ten and built a career on aggressive yet melodic jump-up anthems. Sway (2016) achieved significant chart success across the UK and Europe — member of the SaSaSaS collective alongside DJ Phantasy and Harry Shotta, delivering high-energy festival performances with a new generation fanbase.',
 9, 7, 8, 9,  4, 6, 8,  6, 5, 1),

-- Maduk (Maarten van der Vleuten) — Liquid/Melodic, Dutch, Liquicity co-founder, ''New Dawn'' 2012
('Maduk',                'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Dutch producer who signed to Hospital Records in 2011 and broke through with New Dawn (2012) before co-founding Liquicity — a platform that became one of liquid and melodic DnB''s most important curators. Debut album Shaping Shadows (2014) and consistent Liquicity releases define a sound of lush melodies and powerful basslines infused with emotive atmosphere.',
 5, 8, 7, 8,  7, 8, 6,  9, 5, 4),

-- Majistrate (Ian Jordan) — Jump Up/Jungle, Kent, Low Down Deep, Problem Central supergroup
('Majistrate',           'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Jungle'],
 'Kent producer and DJ with over three decades in the industry who began DJing in 1989 and producing in 1994. Member of the Problem Central supergroup alongside Logan D, Eksman, and Evil B — rolling basslines, intricate drum patterns, and jungle roots fused into a dancefloor-driven approach delivered across Low Down Deep, Crucast, and Sweet Tooth Recordings.',
 8, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Makoto (Makoto Shimizu) — Liquid/Soul DnB, Tokyo/Japan, Good Looking/Hospital, jazz and funk roots
('Makoto',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Tokyo-born liquid DnB artist who signed to Good Looking Records in the late 1990s and became one of the genre''s most celebrated international voices. Debut album Human Elements (2003) and Souled Out showcase a soulful, jazz-infused sound of warm melodies and intricate programming — regular collaborator with DJ Marky, LTJ Bukem, and MC Conrad across three decades.',
 4, 7, 5, 8,  8, 9, 5,  8, 6, 6),

-- Malux (Alex Chambers) — Neurofunk, London, Eatbrain/Evolution Chamber/Bad Taste, ''Turbine''
('Malux',                'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'London neurofunk producer who transitioned from glitch dubstep (as Skope) and earned early support from Noisia with debut track Turbine. Eatbrain, Evolution Chamber, and Bad Taste Recordings releases — Swamp Thug and Nosedive exemplify intricate sound design and relentless energy that make him a consistent Fabric and Let It Roll presence.',
 8, 3, 9, 8,  7, 7, 9,  3, 7, 1);
