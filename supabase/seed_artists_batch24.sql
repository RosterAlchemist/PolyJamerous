-- PolyJamerous: Artist seed data — Batch 24 (gap-fill: B-P names, European artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES




-- Keeno — Orchestral/Liquid DnB, UK, Med School/Keeno Music, piano and string-driven DnB
('Keeno',                'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'British producer who pioneered orchestral and piano-driven liquid drum and bass through Med School Music and his own Keeno Music imprint — fusing cinematic string arrangements and classical instrumentation with rolling DnB rhythms. Life Cycle (2014 debut album), Piano Drum & Bass: Volume 1 (2025), and DRS/DJ Marky collaborations demonstrate a consistent commitment to bringing genuine musicianship into drum and bass production.',
 4, 8, 6, 8,  8, 8, 5,  9, 5, 7),





-- Noisia already in DB — inserting Nymfo (Bart Mosmans) instead

-- Artificial Intelligence (Martin Colegate) — Atmospheric/Intelligent DnB, UK, Metalheadz/Nexus 21/Warp
('Artificial Intelligence', 'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'UK producer Martin Colegate who released early electronic music as Nexus 21 on Warp Records before transitioning into drum and bass through Metalheadz. One of the genre''s early atmospheric DnB producers whose works bridge the ambient techno of Warp''s early catalogue with the more propulsive rhythmic architecture of 1990s intelligent drum and bass — a foundational figure in DnB''s most cerebral tradition.',
 5, 5, 6, 7,  7, 9, 6,  6, 8, 4),

-- Blame (Joseph Lyons) — already in batch 03 — replacing with Bladerunner
-- Bladerunner (Jamie Duggan) — Jungle/Dancefloor, UK, Hospital/Born On Road/Kings of the Rollers
('Bladerunner',          'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'UK producer and DJ Jamie Duggan whose Hospital Records and Born On Road releases helped revive authentic jungle production energy in the contemporary scene — a core member of the Kings of the Rollers supergroup alongside Voltage and Serum. Rolling breakbeat programming, vintage sample culture, and dancefloor-ready energy delivered with an authenticity rooted in genuine appreciation for jungle''s early-90s heritage.',
 7, 6, 6, 8,  5, 7, 8,  6, 6, 3),

-- Concord Dawn already in batch 10 — replacing with Commix


-- T>I (Tina Rowe) — Liquid/Soul DnB, UK, Hospital Records, female producer and broadcaster
('T>I',                  'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'UK producer and broadcaster Tina Rowe who became one of Hospital Records'' key female voices in drum and bass — a presenter, DJ, and producer whose liquid DnB reflects the warm, melodically sophisticated Hospital aesthetic. An advocate for diversity and representation in electronic music whose combination of broadcasting reach and production credibility has helped introduce wider audiences to the genre''s more accessible and emotionally resonant end.',
 5, 7, 7, 8,  6, 7, 6,  7, 5, 3);

-- Calibre already in DB — inserting Quadrant & Iris instead
-- Quadrant & Iris — Liquid DnB, UK, Soul:r/Metalheadz/Shogun Audio, Marcus Intalex collaborators
('Quadrant & Iris',      'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'UK duo who became one of Soul:r''s most celebrated acts through their emotionally rich liquid DnB collaborations — Marcus Intalex-endorsed producers whose Metalheadz and Shogun Audio releases demonstrate an instinct for lush, groove-laden production with harmonic complexity. A consistent presence on the underground liquid scene whose melodic depth and warm bass aesthetics sit squarely in the soulful tradition pioneered by Soul:r and the Good Looking stable.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 4);
