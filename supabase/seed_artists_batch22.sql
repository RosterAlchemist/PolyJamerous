-- PolyJamerous: Artist seed data — Batch 22 (gap-fill: D-T names + international artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES






-- Alix Perez was covered in batch 21 — replacing with Conflict
-- Konflict was covered in batch 18 — replacing with Phuture Assassins
-- Phuture Assassins — Jungle/Ragga, UK, Suburban Base Records, 1992 rave era pioneers
('Phuture Assassins',    'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK jungle collective from the early 1990s Suburban Base Records stable who helped define the ragga jungle sound alongside Nookie, Remarc, and the Rugged Vinyl roster. Exorcist (1992) and Roots & Future are foundational jungle tracks that captured the raw energy and reggae cross-pollination of the genre at its most experimental and vital — foundational figures in the jungle to drum and bass continuum.',
 8, 6, 6, 8,  4, 7, 8,  7, 6, 5),


-- Raw Q — Liquid/Intelligent DnB, New York, Creative Source/Soul:r/Innerground, US liquid ambassador
('Raw Q',                'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'New York producer whose Creative Source, Soul:r, and Innerground Records catalogue bridges liquid funk, intelligent drum and bass, and jazz-inflected atmospheric production — LTJ Bukem, Goldie, and Roni Size cited as influences. Caspian Moon, Summer Rain, and Earthdub demonstrate groove-driven, atmospheric liquid DnB carrying the American perspective on a predominantly British sound to an international audience.',
 3, 7, 5, 8,  8, 9, 5,  7, 7, 5),

-- Bukem in the Room — LTJ Bukem already in DB — inserting Sam Binga instead
-- Sam Binga (Samuel Thomas) — Halftime/Industrial, Bristol, Exit Records/Critical, Infinite Machine
('Sam Binga',            'Drum & Bass + Jungle', 'Halftime', ARRAY['Halftime', 'Deep'],
 'Bristol producer Samuel Thomas whose Exit Records and Critical Music releases fuse halftime DnB with industrial music, grime, and experimental club sounds — a founding figure of the Infinite Machine collective alongside Keysound labelmates. His confrontational aesthetic, machine-heavy sound design, and unconventional drum patterns push drum and bass into genuinely alien sonic territory, drawing from club music''s fringes rather than its mainstream.',
 6, 3, 7, 6,  7, 8, 8,  4, 9, 1),

-- Dazee (Michelle Dazee) — Jungle MC, UK, Jungle Fever/Groove Connection, female pioneer 1990s
('Dazee',                'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'One of the few prominent female MCs in the 1990s jungle scene — a regular presence on the Jungle Fever rave circuit and Groove Connection events whose energetic performances helped establish the role of female voices in a male-dominated genre. A pioneer by virtue of her presence and longevity in the jungle underground, sustaining performance across multiple eras from hardcore rave through contemporary DnB festival culture.',
 7, 7, 6, 8,  4, 7, 8,  7, 6, 4),

-- Decoder (Chris Barker) — Atmospheric/Darkstep, UK, Decoder Music/Metalheadz, dark brooding DnB
('Decoder',              'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Darkstep'],
 'UK producer and Decoder Music label founder whose atmospheric, dark DnB carries the brooding, introspective weight of late-night headphone listening. Metalheadz releases and collaborations within the darker end of the liquid/deep DnB spectrum — layered synthesiser textures, precise drum programming, and a sense of controlled tension that rewards patient engagement rather than immediate dancefloor impact.',
 5, 3, 6, 7,  7, 8, 7,  5, 8, 2),

-- Teebee (Tobias) — Neurofunk/Dark, Norway/UK, Subtitles/Virus/Metalheadz, Scandinavian neurofunk pioneer
('Teebee',               'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Darkstep'],
 'Norwegian producer whose Subtitles Recordings, Virus Recordings, and Metalheadz catalogue helped put Scandinavian neurofunk on the international map — dark, technically precise DnB with a distinctly Nordic cold atmosphere. A respected figure across the late 1990s and 2000s techstep and neurofunk scene whose precise engineering and sinister atmospheric vision influenced a generation of European DnB producers.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- Peshay was covered in batch 21 — replacing with Fierce
-- Fierce (Iain Campbell) — Darkstep/Neurofunk, UK, No U Turn/Formation Records, late 90s dark DnB
('Fierce',               'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Techstep'],
 'UK producer whose No U Turn and Formation Records releases in the late 1990s placed him at the forefront of the darkstep and emerging neurofunk movement — heavy, mechanistic basslines and unsettling atmospheres drawn from the same Virus/No U Turn aesthetic as Optical and Ed Rush. A significant contributor to the dark, technical evolution of drum and bass at the genre''s most experimentally aggressive period.',
 8, 2, 8, 8,  6, 7, 9,  3, 7, 1);


-- Klute is already above — replacing slot with MC GQ
-- MC GQ (Gavin Quick) — Jungle MC, UK, RAM Records, Andy C and Chase & Status collaborator
('MC GQ',                'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jump Up'],
 'UK MC whose energetic, precise vocal performances alongside Andy C, Chase & Status, and DJ Hype across RAM Records events, Fabric residencies, and global festival circuits have made him one of drum and bass''s most in-demand voices. A consistent presence at Outlook, Sun & Bass, and Glastonbury DnB stages — versatile enough to complement liquid sets and jump-up anthems with equal authority across three decades of live performance.',
 8, 6, 7, 8,  4, 6, 9,  7, 5, 2);
