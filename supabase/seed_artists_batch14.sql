-- PolyJamerous: Artist seed data — Batch 14 (N-S names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Noisia (Roos + van Sonderen + de Vlieger) — Neurofunk, Groningen/NL, Vision Recordings, 2000–2021
('Noisia',               'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Groningen trio who redefined drum and bass through razor-sharp sound design, genre-defying productions, and technical mastery across two decades. Split the Atom (2010) and Outer Edges (2016) are landmark albums — DmC: Devil May Cry soundtrack, their own Vision and Division Recordings, and the Noisia Radio show cemented a legacy that continues inspiring producers long after their 2021 farewell.',
 9, 2, 9, 8,  7, 8, 10,  3, 8, 1),

-- Nookie (Gavin Cheung) — Atmospheric/Liquid DnB, Reinforced/Good Looking, ''Give a Little Love'' 1990s
('Nookie',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Pioneering atmospheric DnB producer whose tracks Give a Little Love and Sound of Music became defining jungle anthems of the early 1990s. Reinforced Records and Good Looking Records veteran whose deep, emotive production — warm basslines, intricate breakbeats, and soulful melodies — helped establish the liquid end of the drum and bass spectrum alongside LTJ Bukem.',
 4, 7, 5, 7,  7, 9, 5,  7, 7, 4),

-- North Base (Fletcher + Gregory) — Dancefloor DnB, Manchester, Technique/Viper, Craig David remix
('North Base',           'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jump Up'],
 'Manchester duo formed in 2009 by Dean Fletcher and William Gregory whose Craig David & Big Narstie remix earned BBC Radio 1 airplay and broad exposure. Technique Recordings, Viper Recordings, and Precinct releases — energetic dancefloor productions with Glastonbury, Fabric, and Warehouse Project performance credentials.',
 7, 6, 8, 8,  5, 7, 8,  6, 6, 2),

-- Nu:Tone — Liquid/Soul DnB, British, Hospital Records, brother of Logistics, jazz-infused
('Nu:Tone',              'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'British producer signed to Hospital Records and brother of Logistics whose jazz-inflected liquid DnB became a cornerstone of the label''s melodic output. Part of the Nu:Logic duo — warm, organic productions rooted in soul and jazz sensibility, with a song-writing depth that distinguishes him from the purely electronic end of the genre.',
 4, 8, 6, 8,  8, 8, 5,  8, 6, 6),

-- Omni Trio (Robert Haigh) — Intelligent DnB, Barnsley, Moving Shadow, ''Renegade Snares'' 1993
('Omni Trio',            'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Jungle'],
 'Barnsley producer whose seminal work on Moving Shadow through the mid-1990s — debut The Deepest Cut Vol. 1 (1995) and the iconic Renegade Snares — defined intelligent drum and bass. Breakbeat precision, ethereal piano lines, and haunting atmospheres earned him a legacy as one of the genre''s founding intellectuals; he returned to ambient music under his real name in the late 2000s.',
 4, 6, 5, 7,  8, 9, 5,  7, 7, 4),

-- Paradox (Dev Pandya) — Drumfunk/Experimental, British/Vilnius, Moving Shadow/Reinforced, Amiga live
('Paradox',              'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Drumfunk'],
 'British drumfunk pioneer who co-founded Mixrace in 1990, debuted on Moving Shadow in 1992, and built a catalogue of over 200 vinyl releases spanning ten albums. Celebrated as a drumfunk architect for intricate evolving drum patterns drawn from obscure breakbeats — performs live on a vintage 1992 Commodore Amiga 1200, and collaborated with jazz legend Herbie Hancock on a DnB-jazz fusion project.',
 5, 5, 5, 7,  7, 8, 8,  5, 9, 3),

-- Pola & Bryson (Harry Bryson + Jack Higgins) — Liquid DnB, UK, Shogun Audio, ''Lost in Thought'' 2018
('Pola & Bryson',        'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo who signed exclusively to Shogun Audio in 2017 and released the celebrated album Lost in Thought (2018), establishing them as leading voices in modern liquid DnB. Melancholic atmospheres, lush melodies, and refined musicality define their sound — their Overgrown project (2025) and FABRICLIVE mix confirm sustained creative momentum.',
 4, 7, 6, 8,  7, 8, 5,  8, 6, 4),

-- Prolix (Chris McCarthy) — Neurofunk, London, Trendkill Records founder, Noisia collaborator
('Prolix',               'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'London neurofunk producer who founded Trendkill Records in 2011 and built a reputation for high-energy, technically demanding DnB across RAM, Playaz, Blackout, Metalheadz, Virus, and OWSLA/MTA. Asteroids with Noisia and the album Project Trendkill with Gridlok are scene landmarks — EDC Las Vegas and Let It Roll headliner.',
 8, 3, 9, 8,  7, 7, 9,  3, 7, 1),

-- Pythius (Hylke Klazema) — Neurofunk, Utrecht/Netherlands, Blackout Music, ''New Order EP'' 2015
('Pythius',              'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Utrecht neurofunk producer whose Abandon EP (2014, Blackout Music) and New Order EP (2015) — which earned two D&B Awards nominations — established a high-energy, tech-driven sound. Black Sun Empire and State of Mind collaborator whose album Turmoil (2023) broadens his palette with vocal collaborations while maintaining the intricate sound design that defines his neurofunk core.',
 8, 3, 8, 8,  6, 7, 9,  4, 7, 1),

-- Quadrant (Leigh Caplan) — Deep/Atmospheric DnB, Seattle/USA, Metalheadz/Dispatch/Commercial Suicide
('Quadrant',             'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Liquid'],
 'Seattle producer who debuted on Renegade Hardware in 2005 and built a reputation for merging dancefloor energy with melodic depth across Metalheadz, Dispatch Recordings, and Commercial Suicide. Anthropocene (2012) with Iris on Metalheadz Genesis is a milestone — close collaboration with Iris through CIA Records and C4C Recordings over nearly two decades.',
 5, 6, 6, 8,  7, 8, 7,  6, 7, 3),

-- Random Movement (Michael Richards) — Liquid/Soul DnB, Florida/USA, Innerground, ''Lost On Purpose''
('Random Movement',      'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Florida-born liquid DnB producer who emerged as a solo project in 2006 and became a leading figure in soulful DnB through Innerground Records, Liquid V, and his own Flight Pattern Records. Lost On Purpose (2019) is his acclaimed full-length — weekly Bassdrive radio presence and collaborations with DJ Marky and Dave Owen affirm a career rooted in emotive, jazz-touched melodic production.',
 4, 8, 5, 8,  7, 8, 5,  8, 6, 5),

-- Remarc (Marc Forrester) — Jungle, London, Suburban Base/Planet Mu, ''King of Amen'' 1990s
('Remarc',               'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Drumfunk'],
 'London jungle pioneer dubbed "King of Amen" for his mastery of the Amen break — pirate radio veteran from age 13 and Suburban Base recording artist whose R.I.P. (1995) and Sound Murderer are quintessential jungle texts. Planet Mu''s 2003 compilation reintroduced his intricate breakbeat manipulation and powerful basslines to a new generation.',
 8, 5, 6, 7,  5, 7, 9,  5, 8, 3),

-- René LaVice — Dancefloor/Vocal DnB, Toronto/Canada, RAM Records, BBC Radio 1 host 2017–
('René LaVice',          'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Toronto producer who signed to RAM Records, released debut album Insidious (2013), and became host of BBC Radio 1''s drum and bass programme in 2017. DeVice Records founder whose emotive vocals, hard-hitting rhythms, and radio-accessible production — demonstrated on The Calling and Play with Fire — bridge underground credibility with mainstream reach.',
 7, 7, 8, 8,  6, 7, 7,  7, 6, 3),

-- Rockwell (Tom Green) — Experimental/Dark DnB, British, Shogun/Metalheadz/Obsolete Medium
('Rockwell',             'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Deep'],
 'British producer whose intricate sound design, complex rhythms, and experimental textures span Shogun Audio, Metalheadz, and his primary home Obsolete Medium. Collaborations with Phace, The Upbeats, Roni Size, and Annix — Low Art (2023) and Only (2025) confirm a career built on pushing sonic boundaries without sacrificing dancefloor impact.',
 6, 4, 7, 8,  7, 8, 8,  5, 8, 2),

-- Rufige Kru (Goldie) — Jungle/Dark DnB, Wolverhampton, Metalheadz, Terminator 1992 time-stretch pioneer
('Rufige Kru',           'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Goldie''s pioneering production alias responsible for Terminator (1992) — the track that introduced time-stretching to jungle and altered the genre''s DNA permanently. Haunting atmospheres, intricate rhythms, and emotional depth across Metalheadz and Goldie Inc Ltd define a project central to the label''s iconic early catalogue and continuing to release through 2026.',
 7, 4, 7, 7,  7, 8, 7,  6, 8, 3);
