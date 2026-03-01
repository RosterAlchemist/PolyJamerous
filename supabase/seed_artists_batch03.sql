-- PolyJamerous: Artist seed data — Batch 03 (B-tail + C + D starts)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Blame — Classic DnB/Jungle pioneer, ''Music Takes You'', 90s institution
('Blame',            'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'A DnB pioneer since the early ''90s whose ''Music Takes You'' became an enduring genre classic. Conrad Shafie has spent three decades innovating across jungle and contemporary DnB, collaborating with Andy C, High Contrast, and Netsky along the way.',
 6, 6, 7, 8, 6, 7, 7, 7, 7, 4),

-- Blocks & Escher — Liquid DnB duo, Hospital Records, soulful and melodic
('Blocks & Escher',  'Drum & Bass + Jungle', 'Liquid',
 'Hospital Records liquid DnB duo known for soulful, melodic productions with warm atmospheric depth. A consistent voice in the liquid tradition with a knack for emotionally resonant compositions and refined low-end design.',
 4, 8, 6, 8, 7, 8, 5, 8, 7, 5),

-- Blu Mar Ten — Liquid/Atmospheric DnB, London duo, Good Looking / Hospital / Blu Mar Ten Music
('Blu Mar Ten',      'Drum & Bass + Jungle', 'Deep/Liquid',
 'London duo who helped define atmospheric liquid DnB alongside LTJ Bukem on Good Looking Records. Three decades of sophisticated musicality — from the ''Logical Progression'' compilations to Hospital Records and their own Blu Mar Ten Music label.',
 3, 7, 5, 7, 8, 10, 4, 7, 8, 6),

-- Break — Tech/Liquid DnB, Symmetry Recordings, Critical / Metalheadz / Shogun
('Break',            'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'One of DnB''s most technically skilled producers, known for meticulous sound design and sharp drum programming across Symmetry Recordings, Critical, Metalheadz, and Shogun. Fluid between liquid warmth and dancefloor-driven tech — a true scene cornerstone.',
 7, 5, 8, 8, 7, 7, 8, 5, 7, 3),

-- Breakage — Liquid/Soul DnB, ''Digital Fears'', Hospital / Digital Soundboy, organic warmth
('Breakage',         'Drum & Bass + Jungle', 'Liquid/Soul',
 'A soulful DnB artist who weaves organic warmth and vocal performances into liquid foundations. ''Digital Fears'' and work across Hospital and Digital Soundboy showcase a production style that bridges DnB with soul and R&B sensibility.',
 5, 7, 6, 8, 7, 7, 5, 8, 7, 6),

-- Brookes Brothers — Melodic DnB, vocal anthems, Breakbeat Kaos / Viper, BBC Radio 1
('Brookes Brothers', 'Drum & Bass + Jungle', 'Dancefloor/Pop',
 'London siblings known for uplifting melodic anthems with soulful vocals. Breakbeat Kaos to Viper Recordings — endorsed by Andy C and BBC Radio 1, their accessible, euphoric DnB makes them consistent dancefloor favourites with genuine crossover reach.',
 7, 8, 7, 9, 6, 7, 7, 9, 6, 5),

-- Bryan Gee — V Recordings founder, jungle/DnB institution, 30+ years
('Bryan Gee',        'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'Founder and curator of the legendary V Recordings label — 30+ years as one of DnB''s most respected tastemakers. Productions and label stewardship that have championed countless artists across jungle, liquid, and dancefloor DnB traditions.',
 6, 7, 6, 8, 6, 7, 7, 7, 6, 5),

-- === D NAMES ===

-- dBridge (Darren White) — Experimental DnB, Exit Records, Bad Company UK, autonomic movement
('dBridge',          'Drum & Bass + Jungle', 'Experimental',
 'A pioneering experimental DnB figure who co-founded Bad Company and runs Exit Records. From Renegade Hardware''s dark techstep roots to the autonomic movement, dBridge''s career maps DnB''s most forward-thinking evolution — ''The Gemini Principle'' is a benchmark.',
 5, 5, 7, 7, 8, 8, 6, 5, 9, 3),

-- DJ Fresh (Daniel Stein) — Dancefloor/Pop crossover, Bad Company, Breakbeat Kaos, ''Louder'' UK #1
('DJ Fresh',         'Drum & Bass + Jungle', 'Dancefloor/Pop',
 'Co-founder of Bad Company and Breakbeat Kaos, DJ Fresh brought DnB to its mainstream peak with ''Louder'' — the first DnB track to hit UK #1. A producer who balanced underground credibility with chart ambition, launching Pendulum and Sigma in the process.',
 8, 7, 8, 9, 6, 7, 7, 8, 6, 4);
