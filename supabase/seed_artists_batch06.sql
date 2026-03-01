-- PolyJamerous: Artist seed data — Batch 06 (D-tail, E, F, L names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Digital (Steve Carr) — Jungle/DnB, roots reggae/dub fusion, Function Records, Ipswich
('Digital',        'Drum & Bass + Jungle', 'Jungle',
 'Ipswich DnB legend who has fused roots reggae and dub with hard-hitting drum and bass since 1995''s ''Touch Me''. Function Records founder and Spirit collaborator — a pioneer of the sound that gave DnB its deepest organic roots.',
 6, 6, 6, 7, 6, 8, 6, 7, 7, 6),

-- Enei (Alexey Egorchenkov) — Tech/Atmospheric DnB, Russian, Critical Music, ''Machines'' 2012
('Enei',           'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'St. Petersburg-born tech DnB master signed to Critical Music under Kasra. ''Machines'' established a sound of meticulous layering, atmospheric depth, and hard-hitting rhythms — endorsed by Andy C, Goldie, and London Elektricity for technical sophistication.',
 7, 4, 8, 7, 8, 8, 7, 5, 8, 2),

-- Friction (Ed Keeley) — Dancefloor/Tech, Shogun Audio founder, BBC Radio 1 DnB presenter
('Friction',       'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'Shogun Audio founder, BBC Radio 1 DnB show presenter, and prolific dancefloor producer. Ed Keeley championed Alix Perez, SpectraSoul, and Technimatic while delivering hard-hitting, technically sophisticated productions across Hospital, Shogun, and RAM.',
 8, 6, 8, 8, 7, 8, 8, 6, 7, 2),

-- Lenzman (Teije van Vliet) — Liquid DnB, Dutch, The North Quarter, jazz/hip-hop/R&B
('Lenzman',        'Drum & Bass + Jungle', 'Liquid',
 'Dutch liquid DnB producer and The North Quarter label founder who blends jazz harmonics, hip-hop soul, and R&B warmth with rolling breakbeats. Collaborations with DRS and Fox on Metalheadz represent the genre''s most emotionally literate tradition.',
 4, 7, 6, 8, 8, 8, 5, 8, 7, 6),

-- LSB (Luke Beavon) — Liquid DnB, Essex, Soul:r / Spearhead / Liquicity, melancholic
('LSB',            'Drum & Bass + Jungle', 'Liquid',
 'Essex liquid DnB producer who debuted on Soul:r with the influential ''The View''. Melancholic soundscapes built around soulful piano melodies and smooth rolling rhythms — one of liquid DnB''s most emotionally refined and consistent voices.',
 3, 6, 5, 8, 8, 8, 4, 9, 6, 6);
