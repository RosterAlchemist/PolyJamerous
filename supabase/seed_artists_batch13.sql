-- PolyJamerous: Artist seed data — Batch 13 (M-N names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Mampi Swift (Phil Anim) — Dancefloor DnB, London, Charge Recordings founder, ''Bad Ass'' era
('Mampi Swift',          'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jump Up'],
 'London drum and bass pioneer who founded Charge Recordings in 1997 and earned the nickname "The Superman of Drum and Bass" for lightning-fast mixing precision. Early tracks The One and Hi Tek became scene anthems — a raw, high-energy approach to dancefloor DnB across 25+ years of Fabric, Let It Roll, and Boomtown headliner status.',
 8, 6, 7, 9,  5, 7, 9,  6, 5, 2),

-- Matrix & Futurebound (Jamie Quinn + Brendan Collins) — Dancefloor/Melodic, Viper, UK Top 10
('Matrix & Futurebound', 'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British duo whose melodic, vocal-forward drum and bass earned UK Top 10 chart success with All I Know and Control (featuring Max Marshall). Viper Recordings mainstays and Armada Music collaborators who have remixed Tinie Tempah and Jessie J — a consistent presence at the accessible, melodic end of the dancefloor DnB spectrum.',
 7, 8, 8, 8,  6, 7, 7,  8, 5, 3),

-- Maztek (Matteo Cavo) — Neurofunk, Rome/Italy, Renegade Hardware/0101 Music, ''Galactica'' 2012
('Maztek',               'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Rome-born neurofunk producer who founded Subculture Records in 2005 and broke through with Galactica/Odyssey on Renegade Hardware (2012). Founder of 0101 Music (2018) — futuristic sound design, intricate basslines, and dynamic rhythms across Renegade Hardware, Hospital Records, and RAM''s Program imprint over a two-decade career.',
 7, 4, 8, 8,  7, 7, 9,  4, 7, 1),

-- Micky Finn (Michael Hearn) — Jungle/Dancefloor, London, Urban Takeover co-founder, ''Bad Ass'' 1996
('Micky Finn',           'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London jungle pioneer who co-founded Urban Takeover alongside Aphrodite and helped propel the genre globally through their 1995-96 anthems including Bad Ass. Over three decades of raw energy fused with infectious melodies — a foundational promoter, producer, and DJ whose career spans Warehouse Days to international festival mainstages.',
 8, 7, 7, 8,  5, 7, 8,  7, 6, 4),

-- Misanthrop (Michael Bräuninger) — Neurofunk, Hamburg, Neosignal co-founder with Phace
('Misanthrop',           'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Hamburg neurofunk producer who co-founded Neosignal with Phace in 2008, building one of the genre''s most respected technical labels. Dark, atmospheric soundscapes fused with complex rhythmic structures — Motor EP collaborations with Phace and support from Noisia, Skrillex, and Andy C confirm his position as a core architect of the Hamburg neurofunk movement.',
 8, 2, 8, 8,  7, 8, 9,  3, 8, 1),

-- Mind Vortex (Carroll + Anfield) — Dancefloor, East Coast UK, RAM Records, Nightlife 5, ''Hotbox''
('Mind Vortex',          'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'East Coast UK duo of classically trained musicians who signed to RAM Records in 2009 and broke through on Andy C''s Nightlife 5 compilation. Hotbox (2012) dominated the DnB charts — their classical background in clarinet, saxophone, and piano lends a rare melodic sophistication to high-energy dancefloor productions.',
 7, 7, 8, 8,  7, 7, 8,  7, 6, 3),

-- Moving Fusion (Dan Black + Mike Pears) — Dancefloor/Tech, UK, RAM Records, ''Turbulence''
('Moving Fusion',        'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Techstep'],
 'UK duo who emerged from RAM Records in the late 1990s with anthems Turbulence and Thunderball that became genre touchstones. Futuristic soundscapes, heavy basslines, and intricate drum patterns — collaborators with Pendulum, Noisia, and DJ Fresh whose productions carry the relentless intensity of drum and bass''s dancefloor golden era.',
 8, 5, 8, 8,  6, 7, 8,  6, 7, 2),

-- Murdock — Dancefloor/Liquid, Belgium, Radar Records founder, Rampage festival organiser
('Murdock',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Belgian DJ, producer, and founder of both Radar Records and Rampage — one of Europe''s largest drum and bass festivals, instrumental in elevating Belgium''s bass music culture globally. V Recordings, Hospital Records, and Viper releases blend jungle influences with modern dancefloor precision — a critical scene infrastructure figure as much as a performer.',
 6, 7, 7, 8,  6, 7, 7,  7, 6, 3),

-- Need For Mirrors (Joe Moses) — Deep/Experimental DnB, London, Soul:r/V/Symmetry, Soul In Motion
('Need For Mirrors',     'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'London producer and co-founder of the Soul In Motion club night who brings minimalistic, stripped-back aesthetics and cinematic atmospheres to deep drum and bass. V Recordings, Hospital Records, and Symmetry Recordings credits alongside standout tracks Lambo and Bamboo — a forward-thinking voice that challenges typical DnB formulas through constant reinvention.',
 5, 5, 6, 8,  7, 8, 7,  5, 8, 3),

-- Neonlight (Jakubczyk + Thomser) — Neurofunk, Leipzig/Germany, Blackout/Eatbrain, ''Hammerhead''
('Neonlight',            'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Leipzig neurofunk duo who became one of the most recognised names in modern neurofunk through tracks like Hammerhead and Computer Music. Debut album My Galactic Tale (2016, Blackout Music) is a sci-fi neurofunk benchmark — Eatbrain and Bad Taste Recordings releases demonstrate intricate sound design and relentless precision that make them Let It Roll and Rampage regulars.',
 8, 3, 9, 8,  7, 7, 9,  3, 7, 1),

-- Nia Archives — Jungle, Bradford, Island Records, ''Silence Is Loud'' UK#16, BRIT Awards Rising Star
('Nia Archives',         'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Bradford-born producer and singer-songwriter who became the first electronic artist to win BBC Music Introducing Artist of the Year in 2022. Debut album Silence Is Loud (2024) debuted at UK Albums #16 — Jamaican heritage, gospel, and Britpop woven into jungle and drum and bass, with a BRIT Rising Star nomination and MOBO Best Electronic/Dance Act win.',
 7, 7, 6, 7,  6, 7, 7,  8, 7, 5),

-- Nicky Blackmarket (Nicholas Andersson-Gylden) — Jungle, London, Blackmarket Records co-owner
('Nicky Blackmarket',    'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Pioneer who became part-owner of Blackmarket Records in Soho, establishing its dedicated jungle and DnB section as a crucial scene hub in the early 1990s. Pulse FM and pirate radio veteran who released the influential Spam EP as Nick OD — a foundational figure whose improvisational DJ approach and encyclopedic knowledge shaped the jungle tradition across three decades.',
 7, 6, 6, 8,  5, 7, 8,  6, 6, 4);
