-- PolyJamerous: Artist seed data — Batch 18 (gap-fill: G-K names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- GLXY (Jonathan + Tom) — Liquid/Melodic DnB, Leicester, Shogun Audio/Hospital/Liquicity
('GLXY',                 'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Leicester duo who met through their university DJ society and broke through with debut EP Digital Souls on Limitless Recordings (2015), earning early support from Hugh Hardie and Technimatic. Shogun Audio, Hospital Records, and Liquicity releases — soulful melodies, deep house influences, and atmospheric DnB production define a sound that earned them regular Hospitality on the Beach and Fabric slots.',
 5, 7, 7, 8,  7, 8, 6,  8, 6, 3),

-- Hugh Hardie — Liquid/Soul DnB, Cambridge, Hospital Records/Soulvent, ''Tearing Me Apart''
('Hugh Hardie',          'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Cambridge producer who signed to Hospital Records in 2015 and built a catalogue of emotionally resonant liquid DnB through albums Colourspace, Shadows & Silhouettes, and the funk-inflected Juicebox. Groove-laden beats and smooth production — collaborators include London Elektricity, Etherwood, and vocalists Degs and Killa P — with Soulvent Records joining Hospital for recent output.',
 5, 7, 7, 8,  7, 8, 6,  8, 5, 4),

-- Hyroglifics (Matt Harris) — Experimental/Deep DnB, UK, Critical Music, grime/hip-hop crossover
('Hyroglifics',          'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'British producer who signed to Critical Music in 2014 and released debut album I''ll Wait, I Guess (2023) — a genre-traversing record drawing from grime, hip-hop, and ambient music alongside DnB foundations. Stone Rose EP and Cloth of Gold on Flexout Audio display constant evolution and uncompromising craft — Kasra remix collaborator and Hooversound and VISION imprint contributor.',
 6, 5, 7, 7,  7, 8, 8,  5, 8, 2),

-- IMANU (Jonathan Kievit) — Neurofunk/Cross-genre, Netherlands, Critical/Deadbeats, ''Signal'' rebranded
('IMANU',                'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Dutch producer who built a reputation for dark, technical DnB as Signal on Critical Music before rebranding to IMANU in 2019 and expanding into trap, house, and techno. Debut album Unfold (2022) with Noisia and What So Not collaborations confirmed his genre-defying scope — Tomorrowland, Let It Roll, and Rampage appearances mark him as one of the most versatile voices in contemporary bass music.',
 7, 4, 8, 8,  6, 7, 9,  5, 8, 1),

-- InsideInfo (Paul Bondy) — Neurofunk/Tech DnB, Essex, Viper/RAM/Hospital, Beatport #1 ''Mushroom''
('InsideInfo',           'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Essex producer who debuted on DJ Hype''s Ganja-Tek in 2006 and built a reputation for intricate sound design and high-energy dancefloor construction. Mushroom reached #1 on Beatport DNB charts; Metamorphosis was the 12th highest-selling DnB track on Beatport in 2014. Viper Recordings, RAM Records, and Hospital credits alongside Mefjus collaborations Footpath and Pulsation define his technical dancefloor peak.',
 8, 5, 8, 8,  6, 7, 9,  5, 7, 1),

-- Joe Ford (Joe Ford) — Neurofunk/Tech DnB, Harrogate, Shogun Audio/Evolution Chamber, rock-influenced
('Joe Ford',             'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Harrogate producer whose technically accomplished neurofunk merges intricate drum programming and complex bass design with the energy of rock and funk influences. Shogun Audio and Evolution Chamber home — Circuits (with Jolliffe, 2021) and Torn Apart (with Zombie Cats, 2026) demonstrate a career-long commitment to bridging organic musical sensibility with the hard-edged precision of technical drum and bass.',
 7, 4, 8, 8,  6, 7, 9,  4, 7, 2),

-- Konflict (Kemal + Rob Data) — Neurofunk, Glasgow, Renegade Hardware, ''Messiah'' 1999 cornerstone
('Konflict',             'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Techstep'],
 'Glasgow duo Kemal Okan and Robert Rodgers who produced the definitive neurofunk cornerstone Messiah (1999) on Renegade Hardware — a benchmark of technical excellence and haunting atmosphere that influenced a generation of producers. Their brief but decisive catalogue of intricate, dark DnB set new production standards; Kemal continued solo while the legacy of Konflict endures as foundational to the entire neurofunk subgenre.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- Koven (Max Rowat + Katie Boyle) — Melodic/Cinematic DnB, UK, Monstercat/UKF, ''Butterfly Effect'' 2020
('Koven',                'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo of producer Max Rowat and vocalist Katie Boyle who transformed from solo project to powerful live act when Boyle joined in 2014. Debut album Butterfly Effect (2020) earned critical recognition for expansive, cinematic production fusing DnB, dubstep, and emotive vocals. Monstercat and UKF home — Rampage, Let It Roll, and Glastonbury festival performances celebrate their immersive, vocal-forward approach.',
 6, 7, 7, 7,  7, 8, 7,  8, 6, 3),

-- Loadstar (Xample + Lomax) — Dancefloor/Melodic DnB, UK, RAM Records, Glastonbury/Creamfields
-- [Already covered in batch 12 — replacing with Logan D]

-- Logan D — Jump Up/Dancefloor, UK, Chronic/Low Down Deep, Problem Central supergroup
('Logan D',              'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'UK veteran producer and DJ whose decades-long jump-up and dancefloor DnB career spans Chronic Records and Low Down Deep Recordings. Member of the Problem Central supergroup alongside Majistrate, Eksman, and Evil B — rolling basslines, raw energy, and consistent underground output mark him as a foundational figure in the UK jump-up scene respected across multiple generations.',
 8, 6, 7, 9,  4, 6, 8,  5, 5, 2),

-- Mollie Collins — Liquid/Dancefloor DnB, UK, Charge Recordings/Hospital, female DJ pioneer
('Mollie Collins',       'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British DJ and producer who became one of the most prominent female voices in drum and bass, building a reputation for infectious dancefloor energy and versatile production that spans liquid and harder DnB. Charge Recordings and Hospital Records releases — BBC Radio 1Xtra exposure and consistent festival bookings across Hospitality in the Park and Let It Roll confirm her position at the forefront of the contemporary scene.',
 7, 7, 7, 8,  5, 7, 8,  7, 5, 2),

-- Murdock — already in batch 13 — replacing with Muffler

-- Muffler (Maxim Demin) — Neurofunk, Russia, Neofunk Records/Subtitles/Shogun, technical DnB veteran
('Muffler',              'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Russian neurofunk producer whose work on Subtitles, Shogun Audio, and his own Neofunk Records label spans two decades of technical DnB production. A respected figure in the Eastern European neurofunk community — intricate sound design, complex rhythmic patterns, and dark atmospheres delivered with surgical precision across numerous imprints and collaborations.',
 7, 3, 8, 8,  7, 7, 9,  3, 7, 1),

-- Nicky Blackmarket — already in batch 13 — replacing with NC-17

-- NC-17 (Gavin Blair) — Deep/Liquid DnB, UK, Good Looking Records/Dispatch/Creative Source
('NC-17',                'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'UK producer affiliated with Good Looking Records and Creative Source whose liquid and deep DnB productions carry the atmospheric, jazz-influenced hallmarks of the intelligent DnB tradition. Dispatch Recordings releases and collaborations within the Good Looking stable — melodic depth, warm low end, and sophisticated arrangement place his work squarely within the reflective, headphone end of the drum and bass spectrum.',
 3, 7, 5, 8,  8, 9, 5,  7, 7, 4),

-- Optiv (James Morgan) — Neurofunk/Darkstep, UK, C4C/Renegade Hardware/Blackout, Cause4Concern member
('Optiv',                'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Darkstep'],
 'British producer and Cause4Concern member who has released extensively as a solo artist across Renegade Hardware, Blackout Music, and C4C Recordings. Dark, mechanistic sound design and punishing basslines define solo tracks like Nemesis — a relentless presence in the technical DnB underground with collaborations spanning Prolix, BTK, and fellow neurofunk veterans across a multi-decade career.',
 8, 2, 8, 8,  6, 7, 9,  3, 7, 1);

-- Phaction — Liquid/Dancefloor DnB, UK, Hospital Records/Critical, smooth and technical
('Phaction',             'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British producer whose Hospital Records and Critical Music releases bridge the liquid and technical ends of drum and bass with distinctive warmth and production sophistication. Debut album Construct (Hospital, 2014) established his reputation for smooth, groove-laden DnB that balances dancefloor energy with melodic intelligence — a consistent and respected voice in the Hospital Records stable.',
 6, 7, 7, 8,  7, 7, 7,  7, 6, 3);
