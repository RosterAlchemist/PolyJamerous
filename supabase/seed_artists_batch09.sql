-- PolyJamerous: Artist seed data — Batch 09 (L/N/O/R/T names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Randall (McNeil) — Jungle/DnB DJ legend, London, Mac II Recordings, passed 2024
('Randall',          'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'Legendary London drum and bass DJ who shaped the early scene through residencies at AWOL and Metalheadz sessions in the 1990s. Founder of Mac II Recordings and renowned for mixing precision and seamless transitions — a beloved scene architect who passed in 2024.',
 7, 6, 7, 9, 5, 7, 8, 6, 6, 4),

-- DJ Trace (Duncan Hutchison) — Techstep pioneer, London, DSCI4 / No U-Turn Records
('DJ Trace',         'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'London techstep architect whose 1995 Mutant Remix became a seminal genre text. Collaborations with Ed Rush, Nico, and Fierce on the Torque LP for No U-Turn Records — and founder of DSCI4 in 1999 — defined the dark, mechanistic heart of DnB''s most technical evolution.',
 8, 2, 7, 8, 7, 7, 8, 3, 7, 2),

-- Origin Unknown (Andy C + Ant Miles) — Atmospheric DnB, RAM Records, ''Valley of the Shadows'' 1993
('Origin Unknown',   'Drum & Bass + Jungle', 'Ambient/Garage',
 'Pioneering drum and bass duo formed by Andy C and Ant Miles who released the iconic Valley of the Shadows (1993) — one of the genre''s most atmospheric and enduring productions. Architects of RAM Records and Ram Trilogy alongside Shimon — the defining statement of atmospheric DnB''s spiritual foundations.',
 3, 5, 4, 7, 7, 10, 5, 6, 7, 5),

-- Technical Itch (Mark Caro) — Neurofunk/Techstep, Birmingham, Tech Itch Recordings founder
('Technical Itch',   'Drum & Bass + Jungle', 'Neurofunk',
 'Birmingham-born neurofunk architect who founded Tech Itch Recordings in 1993 and became one of the genre''s most uncompromising voices. From Moving Shadow to his own imprint — heavy basslines, dystopian atmospheres, and intricate drum patterns that helped define drum and bass''s dark, futuristic wing.',
 7, 2, 7, 8, 8, 8, 8, 2, 8, 1),

-- Nymfo (Bardo Camp) — Tech/Liquid DnB, Amsterdam, Commercial Suicide / Metalheadz / Hospital
('Nymfo',            'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'Amsterdam DJ and producer who transitioned from gabber to drum and bass in the early 2000s, developing a signature blend of techno-tinged dancefloor rhythms and soulful liquid melodies. Co-founder of the Red Zone residency with Martyn — a consistent presence across Commercial Suicide, Metalheadz, and Hospital Records.',
 6, 5, 7, 8, 7, 7, 7, 6, 7, 2),

-- Logistics (Matt Gresham) — Liquid/Soul DnB, Cambridge, Hospital Records, BBC 1Xtra award
('Logistics',        'Drum & Bass + Jungle', 'Liquid/Soul',
 'Cambridge-born Hospital Records mainstay who bridges liquid funk warmth with high-energy dancefloor DnB. Debut album Now More Than Ever (2006) launched a career celebrated with a BBC 1Xtra Xtra Bass Award — brother of Nu:Tone and regular Nu:Logic collaborator, part of Hospital''s most melodically accomplished generation.',
 6, 8, 7, 8, 7, 7, 6, 8, 6, 6);
