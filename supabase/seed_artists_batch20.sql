-- PolyJamerous: Artist seed data — Batch 20 (gap-fill: J-T names + Bristol/Breakbeat Era)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Jonny L (Jonathan Lisners) — Minimal/Mechanical DnB, UK, XL Recordings/Phuture Assassins, ''Piper'' 1993
('Jonny L',              'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'UK pioneer whose debut Piper (XL Recordings, 1993) and See Red are seminal examples of stripped-back, mechanical drum and bass that pre-dated the genre''s naming. A founding member of True Steppers UK garage project alongside Dane Bowers — his minimalist aesthetic, synthetic bass pressure, and geometric rhythmic patterns influenced a generation of producers reaching far beyond drum and bass.',
 6, 4, 6, 8,  7, 8, 8,  4, 8, 2),

-- Marvellous Cain — Ragga Jungle, UK, Suburban Base Records, ''The Hitman'' classic, Katmandu sound system
('Marvellous Cain',      'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Early 1990s jungle pioneer from the Katmandu sound system whose debut The Hitman (1993, Suburban Base Records) became a cornerstone of the ragga jungle movement. One of the most energetic MCs of the classic rave era — combining Jamaican vocal culture with breakbeat science at a foundational moment in the genre''s history; a defining voice of the underground before jungle became drum and bass.',
 8, 7, 6, 8,  4, 7, 8,  7, 6, 5),

-- Potential Badboy (Chris McFarlane) — Ragga DnB/Dancefloor, UK, Ganja/Playaz/Hungry Hill, 30+ years
('Potential Badboy',     'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Seminal UK rave and DnB figure whose 30-year career spans Ibiza Records, Sour Records, Ganja Records, Playaz, and his own Hungry Hill Records — fusing ragga, dancehall, and drum and bass into high-energy dancefloor productions. A respected DJ and producer whose longevity across multiple eras of UK rave culture demonstrates the enduring appeal of authentic reggae-influenced drum and bass.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 4),

-- Redeyes (Julien Salvi) — Liquid/Soul DnB, France/Toulouse, The North Quarter/Metalheadz/31 Records
('Redeyes',              'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Toulouse producer whose soulful hip-hop, jazz, and R&B-influenced liquid DnB has earned him a home on Lenzman''s The North Quarter, Metalheadz, and 31 Records. Pusherman on Bingo Records and a catalogue of emotionally resonant rollers — a Lenzman collaborator whose French perspective on British liquid DnB brings warmth and subtlety to a sound rooted in black music tradition.',
 4, 7, 6, 8,  7, 8, 5,  8, 6, 5),

-- Rido (Pavel Ridosko) — Cinematic/Neurofunk, Czech Republic, Metalheadz/Blackout/Hospital, Black Sun Empire collab
('Rido',                 'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Czech producer whose cinematic, atmospheric DnB spans neurofunk precision and melodic depth — Black Sun Empire collaborations Poison, Exoplanet, and Thunderbolt on Blackout Music are scene milestones. Metalheadz, Hospital Records, and Plat:form Recordings home for a career of technically accomplished, emotionally atmospheric drum and bass; Mefjus Optimum Trajectory project partner confirming his standing among European DnB''s elite.',
 7, 4, 8, 8,  7, 7, 8,  5, 7, 1),

-- skantia — Minimal/Tech DnB, Newcastle, Critical Music/RAM/Dance Macabre, ''Common Ground'' debut album
('skantia',              'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Neurofunk'],
 'Newcastle producer signed to Critical Music whose "maximal minimal" aesthetic — stripping DnB to its most essential sonic elements without sacrificing power — produced the acclaimed debut album Common Ground. RAM Records and Dance Macabre releases alongside Bou collaboration Search Me (2025) define an artist whose restrained production philosophy paradoxically generates extraordinary dancefloor impact.',
 6, 4, 6, 8,  7, 8, 7,  4, 8, 1),

-- Stakka & Skynet — Darkstep/Techstep, UK, Underfire Recordings/Renegade Hardware, ''Clockwork'' 1999
('Stakka & Skynet',      'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Darkstep'],
 'UK duo who debuted with Clockwork (1999) and co-founded Underfire Recordings as a platform for their dark, sinister techstep and neurofunk vision. Renegade Hardware releases — futuristic sound design, mechanistic rhythms, and menacing atmospheres carved from early digital production tools — a formative influence on the European darkstep movement whose catalogue remains a benchmark of late-90s technical DnB.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- The Ragga Twins (Deman Rockers + Flinty Badman) — Ragga Jungle, London, Shut Up & Dance/Serial Killaz
('The Ragga Twins',      'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London siblings Deman Rockers and Flinty Badman who helped define ragga jungle through Hooligan 69 with Shut Up & Dance Records (1990) — one of the earliest fusions of Jamaican vocal culture with breakbeat production. Three decades of collaboration with Serial Killaz, Congo Natty, and Benny Page have kept them at the forefront of authentic jungle sound system culture, performing at every significant rave and jungle festival worldwide.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 5),

-- The Vanguard Project (BCee + Villem) — Liquid DnB, UK, Spearhead Records/Fokuz, mid-2010s melodic duo
('The Vanguard Project', 'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Collaborative project between Spearhead Records founder BCee and liquid DnB craftsman Villem — a partnership producing heartfelt, melodic liquid DnB that harnesses both artists'' individual strengths. Spearhead Records and Fokuz Recordings releases bridge BCee''s label expertise with Villem''s sonic depth, creating cohesive, emotionally resonant drum and bass that rewards both dancefloor and headphone listening.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 3),

-- Tyke — Dancefloor/Jump Up, London, Playaz/Grid/Innerground, Andy C Nightlife 5 featured
('Tyke',                 'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jump Up'],
 'London producer and graffiti artist whose dancefloor DnB earned recognition through Playaz Recordings, Grid Recordings, and Innerground Records — Andy C''s inclusion on the landmark Nightlife 5 mix CD confirmed his underground credentials. High-energy jump-up and rolling dancefloor DnB delivered with the visual flair and street-level authenticity of the London urban creative scene.',
 8, 6, 7, 8,  5, 6, 8,  5, 5, 2),

-- Dope Ammo — Dancefloor/Jungle, UK, Dope Ammo Records, BBC Radio 1, Nina Simone ''Feeling Good'' cover
('Dope Ammo',            'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jungle'],
 'UK collective founded in 1996 whose Dope Ammo Records label has delivered energetic, melodically-tinged drum and bass across three decades — Nina Simone remake Feeling Good was featured as BBC Radio 1 Tune of the Week. Kill Bill, Roots & Culture, and Bad Ass remix with Micky Finn & Aphrodite confirmed crossover appeal; Boomtown Fair and Snowbombing festival headlining speaks to sustained dancefloor authority.',
 7, 7, 7, 8,  4, 6, 8,  7, 5, 2),

-- Deekline (Nick Annand) — Jungle/Breakbeat, UK, Rat Records/Jungle Cakes, ''I Don''t Smoke'' 1999
('Deekline',             'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British producer and DJ who rose to fame with I Don''t Smoke (Rat Records, 1999) and became a fixture of the jungle, breakbeat, and DnB underground. Co-founder of Jungle Cakes alongside Ed Solo — Benny Page collaboration partner and Gorilla Warfare artist who blends vintage jungle aesthetics with contemporary production across a career of infectious, heavy-hitting dancefloor music.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Breakbeat Era (Roni Size + DJ Die + Leonie Laws) — Bristol/Breakbeat DnB, XL Recordings, ''Ultra Obscene'' 1999
('Breakbeat Era',        'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jungle'],
 'Bristol supergroup of Roni Size, DJ Die, and vocalist Leonie Laws whose XL Recordings debut Breakbeat Era (1998) and landmark album Ultra Obscene (1999) fused drum and bass with hip-hop, reggae, and soulful electronic production at the peak of the genre''s mainstream visibility. High-energy live performances with live instrumentation and powerful vocals brought DnB to festival stages across the world.',
 7, 6, 7, 8,  7, 8, 7,  7, 7, 5),

-- Fred V & Grafix (Vahrman + Jackson) — Liquid/Vocal DnB, Exeter, Hospital Records, ''Recognise'' 2014
('Fred V & Grafix',      'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Exeter duo Frederick Vahrman and Joshua Jackson whose Hospital Records catalogue — Recognise (2014), Oxygen (2016), Cinematic Party Music (2017) — established them as architects of uplifting vocal liquid DnB with rich melodies and driving basslines. Rudimental, Emeli Sandé, and Sub Focus remix credits alongside Glastonbury and Hospitality in the Park appearances defined a peak before disbanding in 2018; their influence on melodic DnB production endures.',
 6, 8, 7, 8,  6, 7, 7,  8, 5, 3);

-- Dillinja (Karl Francis) — Dark/Techstep, Brixton/London, Metalheadz/Valve/Cyberdyne, ''Ja Know Ya Big'' 1994
