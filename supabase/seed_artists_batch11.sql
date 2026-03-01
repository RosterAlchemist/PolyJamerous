-- PolyJamerous: Artist seed data — Batch 11 (F-K names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Fracture — Jungle/Footwork/Breakbeat, London, Astrophonica co-founder, ''Get Busy'' 2011
('Fracture',             'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'London producer who co-founded Astrophonica with Neptune and changed the 170 BPM landscape in 2011 with Get Busy — the track that introduced juke and ghetto house swing to drum and bass producers. Metalheadz, Exit Records, and Hooversound credits alongside collaborations with Sam Binga and DJ Spinn (Teklife) mark him as one of the genre''s most adventurous structural thinkers.',
 7, 5, 7, 7,  5, 8, 9,  4, 9, 2),

-- Furney — Liquid/Atmospheric DnB, UK, Good Looking/Soul Deep, LTJ Bukem-championed
('Furney',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'UK liquid DnB veteran whose work was championed early by LTJ Bukem and introduced to global audiences through Good Looking Records. Over two decades of smooth, soulful productions with deep grooves, intricate melodies, and a jazz-touched atmospheric quality — standout tracks include You Are The Universe and Pipe Dreams across Soul Deep, Liquid V, and Sheer Velocity.',
 3, 8, 5, 8,  7, 9, 5,  8, 5, 5),

-- General Levy — Ragga Jungle, London, M-Beat, ''Incredible'' UK #8 1994
('General Levy',         'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Harlesden-born ragga deejay whose Incredible (1994, with M-Beat) reached UK #8 and became one of jungle''s first mainstream crossover anthems. A foundational voice fusing reggae and dancehall with drum and bass energy — energetic toasting style and cultural authenticity made him a touchstone for the genre''s ragga tradition across three decades.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 5),

-- Gridlok (Ryan Powell) — Techstep/Neurofunk, USA/Florida, RAM/Renegade Hardware, ''Break the System''
('Gridlok',              'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Techstep'],
 'American producer from Florida who became a pioneering figure in techstep and neurofunk with landmark album Break the System (2007). RAM Records, Renegade Hardware, and Shogun Audio releases — dark, mechanical soundscapes and powerfully rhythmic production built in close collaboration with Dom & Roland, Optical, and Prolix across a twenty-year career.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- Grooverider (Raymond Bingham) — Jungle/Dark DnB, London, Prototype Records, ''Mysteries of Funk'' 1998
('Grooverider',          'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Streatham-born DJ and Rage resident whose partnership with Fabio from 1991 onward was instrumental in the transition from hardcore to jungle and drum and bass. Founder of Prototype Recordings, BBC Radio 1 DnB show host, and producer of Mysteries of Funk (1998) — a genre architect whose forward-thinking selections defined the scene''s dark, sophisticated edge.',
 7, 4, 6, 8,  6, 8, 7,  5, 7, 3),

-- Halogenix — Experimental/Deep DnB, UK, Ivy Lab member, Gemini Gemini, ''Passions'' 2024
('Halogenix',            'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'British producer known as part of pioneering bass trio Ivy Lab who built a solo career acclaimed for blending intricate rhythms with emotive melodies. Debut album Passions (2024) on Gemini Gemini explores themes of growth through minimal rollers and experimental structures — a trusted collaborator of dBridge, Alix Perez, and Noisia.',
 5, 5, 6, 8,  7, 8, 7,  6, 8, 3),

-- Ivy Lab (Sabre + Stray) — Halftime/Experimental, London, 20/20 London Recordings, cross-genre
('Ivy Lab',              'Drum & Bass + Jungle', 'Halftime', ARRAY['Halftime', 'Leftfield Bass'],
 'London duo Sabre and Stray who earned critical acclaim fusing deep basslines, experimental beats, and hip-hop-inspired grooves across 100 and 150 BPM. 20/20 Volume One established their multi-tempo approach — Red Rocks appearances and releases on Twenty Twenty London Recordings and Alpha Pup confirm their position as one of bass music''s most adventurous creative units.',
 6, 5, 7, 6,  7, 8, 7,  6, 9, 2),

-- J Majik (James Spratling) — Liquid/Atmospheric DnB, Northwood, Infrared Records, ''Your Sound'' 1995
('J Majik',              'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Northwood producer who launched Infrared Records and helped define liquid and atmospheric drum and bass in the 1990s. Your Sound (1995) remains a genre classic — collaborations with Goldie, Adam F, and DJ Hype, and UK chart entries with Love Is Not a Game (#34, 2000) and Metrosound with Adam F demonstrate rare crossover reach without sacrificing underground credibility.',
 5, 7, 6, 8,  7, 8, 6,  7, 6, 4),

-- John B (Bryn Williams) — Dancefloor/Electro DnB, Maidenhead, Beta Recordings, ''Up All Night''
('John B',               'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Dancefloor'],
 'Maidenhead producer who founded Beta Recordings — the label that launched Nu:Tone, Logistics, and Commix — and pioneered trance-influenced electrostep DnB with debut album Visions (1997) and Light Speed (2012). Up All Night and consistent Metalheadz and Formation credits across three decades mark him as one of the genre''s most eclectic and durable innovators.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Jumpin Jack Frost — Jungle/Dancefloor, London, V Recordings co-founder, ''The Life and Times''
('Jumpin Jack Frost',    'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London jungle pioneer who co-founded V Recordings with Bryan Gee and helped define the label''s raw, soulful identity. A key figure in the transition from hardcore rave to bass-driven drum and bass — three decades of AWOL, World Dance, and Planet V appearances, and author of autobiography The Life and Times of a Jungle Junkie.',
 7, 6, 6, 8,  5, 7, 7,  6, 6, 4),

-- Kasra — Tech DnB, Critical Music founder, label architect, Enei collaborator
('Kasra',                'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Neurofunk'],
 'Founder and driving force behind Critical Music, one of drum and bass''s most influential labels, whose A&R vision developed Enei, InsideInfo, and a generation of tech DnB artists. As a producer, sharp drum work, atmospheric depth, and meticulous sound design define releases like Overthinking and Surface Tension — an architect of the contemporary technical DnB landscape.',
 7, 5, 8, 8,  7, 8, 8,  5, 7, 1),

-- Kenny Ken — Jungle, London, Soundclash Recordings, Jungle Soundclash winner 1994
('Kenny Ken',            'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London jungle pioneer who won the prestigious Jungle Soundclash in 1994 and founded Soundclash Recordings to nurture artists within the scene. Three decades of AWOL and World Dance headline slots — a raw, roots-driven DJ whose soulful jungle selections and vibrant crowd connection embody the genre''s foundational spirit.',
 7, 6, 6, 8,  5, 7, 7,  6, 6, 4),

-- Kings Of The Rollers (Serum + Voltage + Bladerunner) — Dancefloor, Hospital, ''Burnt Ends'' 2018
('Kings Of The Rollers', 'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jungle'],
 'Drum and bass supergroup formed in 2016 by Serum, Voltage, and Bladerunner — three individual standouts whose self-titled debut on Hospital Records (2019) featured Inja and MC Bassman collaborations. Burnt Ends and Shella became instant scene anthems — gritty basslines, rolling drum patterns, and deep jungle undertones delivered at festival mainstage scale.',
 8, 6, 7, 8,  5, 7, 8,  7, 6, 2),

-- Kove (James Rockhill) — Liquid/Dancefloor, British, Viper/RAM Program, ''Gobble''
('Kove',                 'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British producer who broke through on Viper Recordings and RAM Records'' Program imprint with euphoric, vocal-driven dancefloor DnB. Gobble and Way We Are earned extensive BBC Radio 1 support — his signature blend of emotive melodies, powerful basslines, and radio-ready production places him at the accessible, uplifting end of the contemporary liquid spectrum.',
 6, 8, 7, 8,  6, 7, 7,  8, 5, 3);
