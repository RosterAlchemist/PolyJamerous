-- PolyJamerous: Artist seed data — Batch 15 (S-T names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Sabre (Gove Kidao) — Experimental/Deep DnB, London, Critical Music, Ivy Lab member
('Sabre',                'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Leftfield Bass'],
 'London producer whose classical training fused with jazz and hip-hop influences produces rich, intricate drum and bass of rare melodic depth. Debut album A Wandering Journal (2010, Critical Music) established his emotionally-driven approach — founding member of Ivy Lab alongside Stray and Halogenix, pushing boundaries across hip-hop, trap, and electronica over a 14-year recording career.',
 5, 6, 6, 7,  8, 8, 7,  6, 8, 3),

-- Saxxon (Gareth Greenway) — Jungle Steppers/Liquid, Norfolk, V Recordings/Liquid V, jazz trumpet collab
('Saxxon',               'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Liquid'],
 'Norfolk producer whose New Adventures in Modern Jazz EP (2015, Liquid V) — featuring live jazz trumpeter Jon Scott — announced a distinctively organic approach to jungle steppers and rolling basslines. V Recordings, Liquid V, and Natty Dub Recordings credits across a consistent output of dynamic, cheekily playful drum and bass that bridges vintage jungle textures with forward-thinking production.',
 6, 7, 6, 8,  7, 8, 7,  6, 7, 5),

-- Seba (Sebastian Ahrenberg) — Liquid/Atmospheric DnB, Sweden, Secret Operations/Good Looking/Metalheadz
('Seba',                 'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Swedish producer who emerged on Good Looking Records in the mid-1990s with the celebrated Sonic Winds collaboration and founded Secret Operations in 2007 to house his atmospheric, deeply soulful productions. Metalheadz, Spearhead, and Liquicity releases build on deep basslines, lush soundscapes, and intricate drum programming — a cornerstone of the international liquid DnB tradition across three decades.',
 4, 7, 5, 8,  7, 9, 5,  8, 6, 4),

-- Serial Killaz — Jungle/Ragga DnB, UK, Serial Killaz Recordings, 20+ years sound system culture
('Serial Killaz',        'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK duo whose productions fuse reggae and dancehall vocal culture with jungle''s raw breakbeat energy through their own Serial Killaz Recordings label. Twenty Years of Serial Killaz (2025) celebrates two decades of collaboration with General Levy, Top Cat, and The Ragga Twins — high-energy live sets rooted in sound system authenticity and forward-thinking jungle production.',
 8, 7, 7, 8,  5, 7, 8,  7, 6, 5),

-- Serum — Jungle/Jump Up, UK, Dread/Digital Soundboy, Kings of the Rollers member, Ray Keith discovery
('Serum',                'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Jump Up'],
 'British producer discovered by Ray Keith and signed exclusively to Dread imprint, building a reputation for blending vintage jungle with modern jump-up production. Digital Soundboy and Souped Up Records releases earn regular BBC Radio 1 and 1Xtra support — member of Kings of the Rollers supergroup alongside Voltage and Bladerunner, performing sold-out Ministry of Sound and Fabric shows.',
 8, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Source Direct (Baker + Aslett) — Dark/Intelligent DnB, St Albans, Metalheadz/Science, Wipeout OST
('Source Direct',        'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'St Albans duo who became pivotal figures in mid-90s dark, intelligent drum and bass through Metalheadz and Science Records. Track 2097 appeared on the Wipeout 2097 PlayStation OST (1996) and Call & Response on the Blade film soundtrack — complex breakbeats, dark atmospheric samples, and abstract song structures made them influential despite a brief partnership; they returned with new material in 2021-22.',
 6, 3, 6, 7,  7, 9, 7,  5, 8, 2),

-- Spor (Jon Gooch) — Tech/Neurofunk, UK, Renegade Hardware/Sotto Voce, Feed Me alias
('Spor',                 'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'British producer Jon Gooch who emerged on Renegade Hardware in the mid-2000s with technically precise, high-energy drum and bass under the Spor alias while simultaneously developing electro-house project Feed Me. Aztec and Pacifica are genre touchstones — Sotto Voce imprint home for his 2024-25 return, combining intricate production craft with raw intensity that earned him a dedicated international fanbase.',
 8, 4, 8, 8,  6, 7, 9,  4, 7, 1),

-- Submorphics — Liquid/Cinematic DnB, UK, Rosebay Music/North Quarter/Spearhead, Lenzman collaborator
('Submorphics',          'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'British producer whose Rosebay Music imprint and cinematic liquid DnB style fuse funk, jazz, and soul influences into lush, atmospheric productions. Collaborations with Lenzman (Echoes of November on The North Quarter) and Satl are scene highlights — Spearhead Records and ThirtyOne Recordings credits confirm a consistent voice in deep, melodic drum and bass that rewards both headphone and dancefloor listening.',
 4, 7, 6, 8,  8, 8, 5,  7, 6, 5),

-- Survival (Steve Kielty) — Deep/Experimental DnB, London, Exit/Critical/Shogun/Audio Tactics, SCAR duo
('Survival',             'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'London veteran who returned to production in 2005 after studio management work, building a reputation for deep, organic drum and bass across Exit Records, Critical Music, Shogun Audio, and Metalheadz. Co-founded the experimental SCAR duo with Script in 2013 (debut album The Orkyd Project, 2016) — notable as a 2017 MasterChef UK finalist, a rare profile of creative breadth beyond music production.',
 5, 5, 6, 8,  7, 8, 7,  5, 8, 3),

-- Tantrum Desire — Dancefloor/Melodic DnB, London, Technique Recordings, ''Diversified'' 2015
('Tantrum Desire',       'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'London duo whose Technique Recordings debut album Diversified (2015) showcased commanding versatility across hard-hitting dancefloor DnB and melodic vocal-driven compositions. Euphoric melodies fused with powerful basslines — Let It Roll and Rampage festival regulars whose consistent output through the 2020s has maintained them as dependable dancefloor presences.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Taxman (Dominic Tindill) — Jump Up, Leicester, Playaz/TXM Recordings, synaesthesia producer
('Taxman',               'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'Leicester jump-up producer whose synaesthesia — perceiving sounds as colours — informs deeply visual, heavyweight bassline productions. Too Bad topped drum and bass charts; debut album Synthetic Visions (2013, Playaz) showed vocal depth with Diane Charlemagne collaboration. Brother of Original Sin — TXM Recordings founder and 30 Years of Playaz headliner with remixes for Chase & Status and Friction.',
 9, 6, 8, 9,  5, 6, 9,  5, 5, 1),

-- Technimatic (Rogers + Powell) — Liquid DnB, UK, Shogun Audio/SGN:LTD, BBC Radio 6Music airplay
('Technimatic',          'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo Pete Rogers and Andy Powell who broke through with Preacher on Worldwide Audio before signing to Shogun Audio''s SGN:LTD in 2012. Bristol earned BBC 6Music play from Gilles Peterson — debut album Desire Paths (2014) drew praise from Mixmag and Annie Mac, with Friction support cementing their position as leading voices in emotionally resonant, melodic liquid DnB.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 3),

-- Teddy Killerz (Place2b + Paimon + Garud) — Neurofunk/Crossbreed, Russia/Ukraine, RAM/OWSLA
('Teddy Killerz',        'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Crossbreed'],
 'Russian/Ukrainian trio whose Skrillex-endorsed remix of Make It Bun Dem launched them into the international spotlight. OWSLA, RAM Records, and Bad Taste Recordings releases blend glitch, electro, and neurofunk into meticulous genre-defying productions — Nightmare Street and Monkey Kingdom are signature tracks, with Andy C, Chase & Status, and Noisia as key supporters.',
 8, 4, 9, 8,  6, 7, 9,  4, 8, 1),

-- The Prototypes (Garvey + White) — Dancefloor/Big Room DnB, UK, Viper/Get Hype, ''City of Gold'' 2015
('The Prototypes',       'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Neurofunk'],
 'UK duo whose debut album City of Gold (2015, Viper Recordings) reached the UK Top 40 Dance Chart and established them as festival-ready big-room DnB specialists. Get Hype Records founders — remixes for Pendulum and The Prodigy demonstrate respect across electronic music — relentless touring schedule across EDC Las Vegas, Let It Roll, and Liquicity events.',
 8, 6, 9, 8,  6, 7, 9,  6, 6, 1);

-- The Upbeats (Glenn + Jones) — Neurofunk/Tech DnB, Wellington/NZ, VISION/Virus/Critical, 20 years
('The Upbeats',          'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Wellington duo Jeremy Glenn and Dylan Jones who built a two-decade legacy across VISION, Virus Recordings, and Critical Music, highlighted by the Noisia collaboration Dead Limit becoming a modern DnB anthem. 20 Years of The Upbeats (2024) retrospective captures explosive, high-octane production that pushed sonic boundaries — Shambhala, Outlook, Glastonbury, and Boomtown regulars.',
 8, 4, 9, 8,  6, 7, 9,  4, 7, 1);
