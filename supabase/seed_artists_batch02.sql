-- PolyJamerous: Artist seed data — Batch 02 (A-tail + B names, pages 2–3)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Run in the Supabase SQL Editor after seed.sql and batch 01.

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- === A TAIL ===

-- Anile — Soulful liquid DnB, Hospital / Soul:r / The North Quarter, 15+ years
('Anile',                'Drum & Bass + Jungle', 'Liquid',
 'A soulful liquid DnB producer with 15+ years across Hospital Records, Soul:r, and The North Quarter. Emotionally resonant atmospherics and intricate drum programming crafted with authentic conviction — DnB that feels as well as moves.',
 4, 7, 5, 8, 7, 8, 5, 8, 7, 5),

-- ASC (James Clements) — Autonomic/Atmospheric DnB pioneer, ambient + breakbeats
('ASC',                  'Drum & Bass + Jungle', 'Experimental',
 'British Autonomic movement pioneer (James Clements) who prioritises mood and space over dancefloor intensity. Cinematic soundscapes, ambient textures, and immersive breakbeat structures — DnB as introspective electronic art.',
 2, 5, 5, 6, 7, 10, 4, 5, 8, 5),

-- Askel — Finnish liquid DnB, Soulvent / Spearhead / Fokuz / Hospital
('Askel',                'Drum & Bass + Jungle', 'Liquid',
 'Finnish liquid DnB producer inspired by Calibre and Alix Perez, crafting atmospheric soundscapes with deep soulful melodies across Soulvent, Spearhead, Fokuz, and Hospital Records. Introspective and immersive with a Northern European emotional depth.',
 4, 7, 6, 8, 7, 9, 4, 8, 7, 5),

-- Atlantic Connection (Nathan Hayes) — Liquid DnB, LTJ Bukem influenced, Creative Source / Dispatch / Liquid V
('Atlantic Connection',  'Drum & Bass + Jungle', 'Liquid',
 'Nathan Hayes crafts soulful liquid DnB with deep melodic warmth, inspired by LTJ Bukem''s Logical Progression. Consistent releases across Creative Source, Dispatch, and Liquid V that prioritise emotional depth and atmospheric refinement.',
 4, 7, 6, 8, 7, 8, 5, 8, 7, 5),

-- === B NAMES ===

-- B-Complex (Matúš Lenický) — Melodic DnB, Slovak, Hospital Records ''Beautiful Lies''
('B-Complex',            'Drum & Bass + Jungle', 'Melodic/Liquid',
 'Slovakian melodic DnB producer whose ''Beautiful Lies'' (Hospital Records) became an instant genre classic. Intricate breakbeats, emotive atmospheric melodies, and a balance of energy and emotional depth that transcends conventional DnB expectations.',
 6, 7, 7, 8, 8, 8, 6, 9, 7, 4),

-- Bachelors of Science — Liquid DnB, San Francisco, jazz/soul/funk, CODE / Formation
('Bachelors of Science', 'Drum & Bass + Jungle', 'Liquid',
 'San Francisco liquid DnB collective who fused jazz, soul, and funk with deep atmospheric breakbeats on their landmark debut ''Science Fiction'' (2008). Cinematic, emotionally resonant production across CODE and Formation Records.',
 4, 7, 6, 8, 8, 9, 5, 8, 8, 6),

-- Bad Company UK — Dark/experimental DnB pioneers, London, ''Inside the Machine'' 1998
('Bad Company UK',       'Drum & Bass + Jungle', 'Experimental/Tech',
 'Legendary London collective (dBridge, DJ Fresh, Vegas, Jason Maldini) who pioneered dark, futuristic DnB aesthetics. ''Inside the Machine'' remains a genre landmark — boundary-pushing production that shaped a generation of neurofunk and experimental DnB.',
 9, 3, 8, 7, 8, 8, 8, 3, 9, 1),

-- BCee — Liquid DnB, Spearhead Records founder, soulful and melodic
('BCee',                 'Drum & Bass + Jungle', 'Liquid',
 'Spearhead Records founder and liquid DnB craftsman with a soulful, melodic approach built around atmospheric textures and rolling basslines. A key connector in the deep liquid ecosystem, collaborating with Alix Perez, Lenzman, and Redeyes.',
 4, 8, 6, 8, 7, 8, 5, 8, 7, 5),

-- Benny L — Dark/Tech DnB, Metalheadz / Audioporn, Andy C and Goldie endorsed
('Benny L',              'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'A technically refined dark DnB producer with Metalheadz and Audioporn credentials, endorsed by Andy C and Goldie. Deep, rolling basslines and precision engineering — ''Vanta Black'' exemplifies a sound that balances underground grit with dancefloor effectiveness.',
 8, 4, 8, 8, 7, 8, 8, 4, 7, 2),

-- Benny Page — Ragga jungle, dub/dancehall, Digital Soundboy / High Culture Recordings
('Benny Page',           'Drum & Bass + Jungle', 'Jungle',
 'UK ragga jungle specialist who fuses dub, dancehall, and hip-hop with DnB energy across Digital Soundboy and his own High Culture Recordings. Heavy basslines, tight dancefloor production, and BBC Radio 1 reach — jungle with genuine Caribbean soul.',
 8, 7, 7, 8, 5, 7, 8, 6, 6, 5),

-- Billain — Neurofunk/experimental, Sarajevo, audio-visual, dystopian concept art
('Billain',              'Drum & Bass + Jungle', 'Experimental/Tech',
 'Sarajevo-based neurofunk and concept-art producer with a background in visual arts. Cinematic, dystopian sound design that blurs the line between club music and science fiction — contributions spanning music, film, video games, and AI research.',
 8, 3, 9, 6, 9, 9, 7, 3, 9, 2),

-- Bizzy B — Jungle pioneer, Art of Noise Records, early 90s scene
('Bizzy B',              'Drum & Bass + Jungle', 'Jungle',
 'A pioneering figure in early jungle and DnB whose Art of Noise Records became a hub for high-octane breakbeat music. Raw rave energy, classic jungle rhythms, and a decades-long legacy that helped establish the London underground scene.',
 8, 6, 7, 7, 5, 6, 7, 5, 7, 5),

-- Black Sun Empire — Neurofunk, Dutch trio, Blackout Music NL founders
('Black Sun Empire',     'Drum & Bass + Jungle', 'Neurofunk',
 'Dutch neurofunk trio behind Blackout Music NL, known for cinematic intensity and precise dark production. Collaborators with Noisia and Audio — ''Arrakis'' and ''Caterpillar'' balance aggressive energy with atmospheric depth in foundational neurofunk engineering.',
 9, 3, 9, 7, 8, 9, 8, 3, 8, 1);
