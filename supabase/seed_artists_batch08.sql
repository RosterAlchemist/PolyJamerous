-- PolyJamerous: Artist seed data — Batch 08 (J/O/P/R names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Jubei (Paul Ager) — Atmospheric/Liquid DnB, Metalheadz, Carbon Music
('Jubei',         'Drum & Bass + Jungle', 'Experimental',
 'British producer whose debut on Metalheadz, Nothing Ventured Nothing Gained (2010), showcased intricate DnB crafted alongside dBridge and S.P.Y. Debut album To Have & Have Not refined his signature atmospheric soundscapes and precision engineering — a trusted collaborator to Goldie, Alix Perez, and Skeptical across three decades.',
 5, 5, 6, 7, 7, 8, 7, 6, 7, 3),

-- Total Science (Jason Greenhalgh + Paul Smith) — Liquid/Deep DnB, Oxford, CIA Records
('Total Science',  'Drum & Bass + Jungle', 'Deep/Liquid',
 'Oxford duo who bonded over hip-hop before founding CIA Records in 1997 and releasing the landmark album Advance (2000). Thirty years of sophisticated, liquid-influenced DnB across CIA, Metalheadz, and Hospital Records — their tune Champion Sound became a scene anthem.',
 5, 7, 6, 8, 7, 8, 6, 7, 7, 5),

-- Phace (Florian Harres) — Neurofunk, Hamburg, Neosignal co-founder
('Phace',         'Drum & Bass + Jungle', 'Neurofunk',
 'Hamburg-based neurofunk producer who co-founded Neosignal and built a reputation for complex rhythms, futuristic sound design, and experimental techno fusion. A close collaborator with Noisia, Misanthrop, and Mefjus — over two decades of meticulous production at the cutting edge of DnB''s technical frontier.',
 7, 3, 8, 8, 8, 8, 9, 3, 8, 1),

-- Optical (Matt Quinn) — Neurofunk/Techstep, London, Virus Recordings co-founder
('Optical',       'Drum & Bass + Jungle', 'Neurofunk',
 'London techstep pioneer who co-founded Virus Recordings with Ed Rush and co-produced the landmark album Wormhole (1998). From To Shape the Future on Metalheadz to The Creeps — futuristic production techniques and sonic design that shaped neurofunk''s development for a generation.',
 8, 2, 7, 8, 8, 8, 8, 3, 7, 1),

-- DJ Hype (Kevin Ford) — Jump-Up DnB, London, Playaz Recordings co-founder
('DJ Hype',       'Drum & Bass + Jungle', 'Jump-Up',
 'London jump-up institution who co-founded Playaz Recordings with DJ Zinc and Pascal, and founded Ganja Records in 1994. From Shut Up and Dance and pirate radio to legendary Fabric residencies — razor-sharp scratch techniques and relentless jump-up energy across four decades of DnB performance.',
 9, 7, 8, 9, 4, 6, 9, 6, 5, 3),

-- Ray Keith — Jungle/Dread, Essex, Dread Recordings founder
('Ray Keith',     'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'Essex jungle pioneer who founded Dread Recordings in 1994 and shaped the genre''s bass-heavy, soulful identity through tracks like Chopper and Terrorist. Operating under aliases including Dark Soldier and Renegade, his productions blended jungle with jazz, funk, and soul — a founding architect of DnB''s most raw spiritual roots.',
 7, 6, 6, 8, 5, 7, 7, 6, 6, 5);
