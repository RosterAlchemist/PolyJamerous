-- PolyJamerous: Artist seed data — Batch 05 (C-tail, H, L legends)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Congo Natty (Rebel MC / Michael West) — Jungle/Ragga pioneer, ''Jungle Revolution''
('Congo Natty',        'Drum & Bass + Jungle', 'Jungle',
 'From Rebel MC to jungle pioneer — Congo Natty fused Rastafarian culture, reggae roots, and explosive jungle breakbeats into socially conscious music. ''Jungle Revolution'' and Congo Natty Records became cornerstones of the genre''s cultural soul.',
 8, 7, 7, 7, 5, 7, 7, 7, 7, 6),

-- Current Value (Tim Eliot) — Neurofunk/Darkstep, Berlin, Björk collaborator, Eatbrain
('Current Value',      'Drum & Bass + Jungle', 'Neurofunk',
 'Berlin-based neurofunk and darkstep pioneer who collaborated with Björk and built a reputation for meticulous sound design and technical depth. Part of MachineCode duo — intricate production with relentless darkness across Eatbrain and Position Chrome.',
 8, 3, 9, 7, 9, 8, 8, 2, 9, 2),

-- High Contrast (Lincoln Barrett) — Liquid DnB, Hospital Records, Welsh, vocal-led
('High Contrast',      'Drum & Bass + Jungle', 'Liquid',
 'Welsh liquid DnB pioneer whose ''True Colours'' on Hospital Records helped define the genre''s melodic tradition. Soulful, vocal-led productions with jazz sophistication — collaborations with Adele and Tiësto, and an appearance on the London Olympics ceremony soundtrack.',
 6, 8, 7, 9, 8, 8, 6, 9, 7, 6),

-- Klute (Tom Withers) — Experimental/Dark Liquid, Commercial Suicide Records, legendary
('Klute',              'Drum & Bass + Jungle', 'Experimental',
 'Ipswich producer and Commercial Suicide Records founder whose work spans dark liquid and downtempo. ''Time 4 Change'' was the last tune played by John Peel on air — a career that launched Break, Calibre, and Spirit, and defined experimental DnB''s most reflective edge.',
 4, 5, 6, 7, 8, 8, 5, 6, 8, 5),

-- London Elektricity (Tony Colman) — Liquid/Live DnB, Hospital Records co-founder, live band
('London Elektricity', 'Drum & Bass + Jungle', 'Liquid/Soul',
 'Hospital Records co-founder who pioneered live instrumentation in DnB. Jazz, soul, and electronica woven through intricate breakbeats — ''Power Ballads'' and full live band sets demonstrated drum and bass as mature musical art. BBC 1Xtra Best Live Act 2007.',
 5, 8, 7, 8, 8, 8, 6, 8, 8, 8),

-- LTJ Bukem (Daniel Williamson) — Atmospheric/Intelligent DnB, Good Looking Records, legendary
('LTJ Bukem',          'Drum & Bass + Jungle', 'Ambient/Garage',
 'The father of intelligent drum and bass — classically trained pianist turned DnB innovator. Good Looking Records and the Progression Sessions defined atmospheric, jazz-fused DnB for a generation, proving the genre could be as sophisticated as it was physical.',
 2, 7, 4, 7, 9, 10, 4, 7, 7, 7);
