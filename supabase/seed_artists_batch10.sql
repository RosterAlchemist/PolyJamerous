-- PolyJamerous: Artist seed data — Batch 10 (C-F names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Concord Dawn (Matt Harvey + Evan Short) — NZ duo, Metalheadz/Hospital, ''Morning Light'' 2001
('Concord Dawn',         'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'New Zealand drum and bass duo formed in 1999 by Matt Harvey and Evan Short, who achieved international recognition with ''Morning Light'' from the landmark album Disturbance (2001). Releases across Metalheadz, Hospital Records, and their own Uprising Records balance hard-hitting dancefloor impact with cinematic melodic ambition — foundational voices in the Antipodean DnB scene.',
 7, 6, 7, 8,  6, 8, 7,  7, 6, 2),

-- Cyantific (Jonathan Stanley) — Dancefloor/Liquid, Hospital Records, ''Ghetto Blaster'' 2009
('Cyantific',            'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British producer signed to Hospital Records whose debut album Ghetto Blaster (2009) was acclaimed for dynamic range and high production quality. A versatile dancefloor architect who blends energetic rhythms with melodic elements — long-time collaborator of Logistics and a consistent presence on Hospital and Viper Recordings.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- DC Breaks (Dan Havers + Chris Page) — Dancefloor/Tech, RAM Records, ''Swag'', ''Exoplanet'' 2024
('DC Breaks',            'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Neurofunk'],
 'UK duo who rose to prominence through Andy C''s RAM Records, building a reputation for hard-hitting drum and bass that pairs intricate rhythms with soaring melodies and heavyweight basslines. Albums DCXV (2021), OOZE (2023), and Exoplanet (2024) confirm their standing as one of DnB''s most technically accomplished and consistently evolving acts.',
 8, 6, 9, 8,  7, 8, 9,  6, 7, 1),

-- DJ Hazard (Scott Molloy) — Jump Up, Birmingham, Playaz/Hazardous Material, D&B Awards Best DJ 2017
('DJ Hazard',            'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'Birmingham jump-up specialist who spent decades under DJ Hype''s Playaz Recordings before founding his own Hazardous Material imprint. Bricks Don''t Roll (2014) is one of jump-up''s most iconic anthems — relentless bass-heavy energy earned him the Drum and Bass Awards Best DJ in 2017, ending Andy C''s long-held winning streak.',
 9, 6, 8, 9,  4, 6, 9,  5, 5, 1),

-- DJ SS (Leroy Small) — Jungle/Dancefloor, Leicester, Formation Records co-founder, 30+ years
('DJ SS',                'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Leicester-born jungle and DnB pioneer who co-founded Formation Records in 1991 — one of the most important imprints in UK breakbeat culture, launching artists including John B and Twisted Individual. Over three decades of forward motion from jungle roots to contemporary drum and bass, with BBC 1Xtra radio presence and worldwide touring intact.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Doc Scott (Scott McIlroy) — Techstep/Dark DnB, Coventry, 31 Records founder, Metalheadz Blue Note
('Doc Scott',            'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Techstep'],
 'Coventry producer who debuted in 1991 and became a regular at the defining Metalheadz Blue Note sessions in the mid-1990s. Shadow Boxing (as Nasty Habits) is a genre classic — founder of 31 Records in 1994, Doc Scott shaped the darker, more intricate side of early drum and bass with surgical mixing precision.',
 7, 3, 7, 8,  7, 8, 8,  4, 7, 2),

-- Dom & Roland (Dominic Angas) — Techstep/Dark DnB, London, Moving Shadow, ''Industry'' 1996
('Dom & Roland',         'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Techstep'],
 'London producer and seminal techstep architect whose debut album Industry (1996) on Moving Shadow set the template for cinematic, brooding DnB. Thunder, Imagination, and Can''t Punish Me are genre touchstones — three decades of collaborations with Ed Rush, DJ Trace, and Optical define his place at the dark technical heart of drum and bass.',
 7, 3, 7, 8,  7, 8, 8,  4, 7, 2),

-- Dub Phizix — Deep/Minimal DnB, Manchester, Exit Records/SenkaSonic, ''Marka'' with Strategy
('Dub Phizix',           'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Leftfield Bass'],
 'Manchester producer whose breakthrough track Marka (with Strategy, featuring spoken-word vocals) became a landmark of stripped-back, groove-led drum and bass. SenkaSonic label founder with Exit Records and Critical Music credits — gritty minimalism, deep basslines, and unconventional rhythms champion Manchester''s unique DnB identity.',
 5, 5, 6, 8,  6, 8, 7,  5, 8, 3),

-- Droptek (Lewis Munns) — Neurofunk/Tech, British, Korsakov Music, ''Symbiosis'' 2019
('Droptek',              'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'British producer Lewis Munns who launched in 2012 on Monstercat and pivoted to neurofunk-led drum and bass with debut album Symbiosis (2019). Korsakov Music and Life Is Soup You Are Fork releases showcase meticulous sound design and intricate rhythmic construction — a technically precise studio craftsman pushing the neurofunk frontier.',
 7, 4, 8, 8,  7, 7, 9,  4, 7, 1),

-- Drumsound & Bassline Smith (Wright/Wiggett/Smith) — Dancefloor DnB, Technique Recordings, Odyssey
('Drumsound & Bassline Smith', 'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Veteran UK trio who have driven dancefloor drum and bass since the late 1990s through their own Technique Recordings imprint and releases on Breakbeat Kaos and RAM Records. Odyssey and Close are scene anthems — festival mainstage regulars at Glastonbury and Let It Roll, balancing melodic hooks with heavyweight bass construction.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Ed:it (Ed Warrener) — Dancefloor/Tech, Nottingham, Shogun Audio/Critical/Symmetry, soulful grit
('Ed:it',                'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Deep'],
 'Nottingham producer who emerged in 2010 and built a reputation for meaningful, soulful yet gritty drum and bass across Shogun Audio, Critical Music, and Symmetry Recordings. Securing full Shogun roster membership after impressing Friction — his Dispatch and Flexout releases demonstrate a rare balance of emotional depth and dancefloor utility.',
 6, 5, 7, 8,  7, 7, 7,  6, 7, 3),

-- Etherwood (Edward Allen) — Liquid/Melodic DnB, Lincoln, Hospital/Med School, singer-songwriter
('Etherwood',            'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Lincoln-born producer and singer-songwriter who debuted on Hospital Records'' Sick Music 3 in 2012 and charted his self-titled Med School album at UK Dance #4. Two-time D&B Arena Awards winner for Best Newcomer — lush melodies, live instrumentation, and heartfelt vocals define a liquid DnB approach touched by jazz and soul.',
 4, 8, 6, 7,  7, 8, 5,  9, 5, 6),

-- Fabio & Grooverider — Jungle/DnB legends, London, BBC Radio, ''30 Years of Rage'' 2019
('Fabio & Grooverider',  'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London DJ duo who helped pioneer and popularise drum and bass globally from the late 1980s onward — cornerstones of the Rage night at Heaven which incubated jungle from hardcore. Decades of BBC Radio 1 and 1Xtra presence through their monthly show, and 30 Years of Rage (2019) celebrates their unbroken influence on the genre.',
 7, 6, 6, 8,  6, 7, 7,  6, 7, 3),

-- Fixate (Declan Curran) — Leftfield/Footwork, London, Exit Records/Pineapple, ''Get Busy''-era
('Fixate',               'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Leftfield Bass'],
 'London producer who debuted in 2014 on Diffrent Music and Exit Records, bringing juke, footwork, grime, and dubstep influences into 170 BPM territory. A key figure in the Richie Brains collective and longtime Exit Records collaborator — unconventional grooves and deliberate structural subversion mark him as one of DnB''s most original forward thinkers.',
 6, 5, 7, 7,  6, 8, 8,  5, 9, 2),

-- Fourward — Neurofunk, Austria, Shogun/Eatbrain/Manifest, industrial + emotional fusion
('Fourward',             'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Austrian duo from Lower Austria whose neurofunk productions on Shogun Audio and Eatbrain balance gritty industrial textures with deep emotional progressions. Expansion on Shogun Audio and ongoing releases through Manifest demonstrate a rare synthesis of technical precision and melodic depth — respected fixtures on Let It Roll and European festival circuits.',
 7, 5, 8, 8,  7, 7, 9,  5, 7, 1);
