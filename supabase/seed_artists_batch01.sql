-- PolyJamerous: Artist seed data — Batch 01 (A names, pages 1–2)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Run in the Supabase SQL Editor after schema.sql and seed.sql.
-- Columns: name, genre, subgenre, dna,
--          arousal, valence, timbral_brightness, rhythmic_regularity,
--          harmonic_complexity, spatial_dimension, articulation,
--          melodic_salience, structural_entropy, acousticness

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- 4am Kru — London jungle duo, '94 nostalgia meets modern production
('4am Kru',          'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'London duo who channel the infectious energy of ''94 jungle through a modern lens. Blending nostalgic flavours with contemporary production, their festival-ready sound draws from happy hardcore, R&B, and folk alongside classic DnB.',
 7, 7, 7, 7, 6, 7, 7, 7, 7, 4),

-- 4hero — Jazz-fusion jungle pioneers, Reinforced Records, Mercury Prize nominated
('4hero',            'Drum & Bass + Jungle', 'Experimental',
 'Jazz-fusion jungle pioneers and Reinforced Records founders who mentored Goldie and shaped the Metalheadz aesthetic. Mercury Prize-nominated complexity, soulful arrangements, and an enduring influence that bridged club culture with avant-garde music.',
 5, 7, 6, 7, 9, 9, 5, 8, 9, 6),

-- Abstract Elements — Russian Autonomic/post-minimal duo, Exit Records
('Abstract Elements', 'Drum & Bass + Jungle', 'Experimental',
 'Russian duo Bop and Diagram, part of the Autonomic/post-minimal DnB movement. Technical precision blended with emotive depth across Exit Records, Auxiliary, and MethLab — DnB as thoughtful, introspective expression.',
 4, 5, 6, 7, 8, 8, 5, 6, 8, 4),

-- Actraiser — Liquid DnB, atmospheric, Fokuz / Med School / Liquicity
('Actraiser',        'Drum & Bass + Jungle', 'Liquid',
 'A liquid DnB craftsman known for deep, hypnotic productions with lush atmospheric textures across Fokuz, Med School, and Liquicity. Emotive, introspective soundscapes — ''Glow Worm'' and ''Flight Path'' show DnB at its most contemplative.',
 3, 7, 5, 8, 7, 9, 4, 8, 7, 5),

-- Adam F — DnB pioneer, jazz-soul, ''Metropolis'' 1997, Kaos Records
('Adam F',           'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'A DnB pioneer who fused jazz, soul, and funk with Jungle dynamics on his landmark 1997 album ''Metropolis''. Rich harmonic landscapes, soulful melodies, and a timeless crossover appeal that helped define the genre''s golden era.',
 7, 6, 7, 8, 7, 8, 7, 8, 7, 5),

-- Agressor Bunx — Ukrainian neurofunk brothers, Eatbrain / Blackout / Program
('Agressor Bunx',    'Drum & Bass + Jungle', 'Neurofunk',
 'Ukrainian neurofunk duo (brothers Alex and Nikolay Vyunitsky) delivering relentlessly aggressive, technically intricate productions. Sophisticated sound architecture and punishing rhythms that push neurofunk''s intensity ceiling across Eatbrain and Blackout.',
 9, 3, 9, 7, 8, 8, 8, 2, 8, 1),

-- Airstrike — Jungle/Neurofunk, FORCE / Offworld / Unchained Recordings
('Airstrike',        'Drum & Bass + Jungle', 'Neurofunk',
 'A dynamic neurofunk and techstep producer spanning FORCE, Offworld, and Unchained Recordings. Intricate drum patterns, heavy basslines, and atmospheric textures wielded with aggressive intent.',
 8, 4, 8, 7, 7, 7, 8, 4, 7, 2),

-- AK1200 — US DnB pioneer, Planet of the Drums, ''Fully Automatic'' 1995
('AK1200',           'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'A pioneering American DnB ambassador who brought the genre to US audiences via Planet of the Drums and the landmark 1995 mix ''Fully Automatic''. Heavy, driving productions with a wide-ranging stylistic palette spanning the genre''s full spectrum.',
 7, 5, 7, 8, 6, 7, 7, 5, 7, 2),

-- Alex Reece — Liquid/jazz DnB founder, ''Pulp Fiction'', ''So Far'' album
('Alex Reece',       'Drum & Bass + Jungle', 'Liquid',
 'A founding voice of jazz-influenced liquid DnB. Rolling basslines, soulful melodies, and organic warmth — ''Pulp Fiction'' remains one of the genre''s most recognisable anthems, establishing the template for melodic drum and bass.',
 4, 8, 6, 8, 8, 8, 5, 9, 6, 6),

-- Andy C — Legendary DJ, RAM Records co-founder, Double Drop pioneer
('Andy C',           'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'The most celebrated DJ in DnB history and RAM Records co-founder. Pioneer of the ''Double Drop'' technique, his productions and sets span liquid to neurofunk with unmatched technical precision and dancefloor mastery.',
 8, 6, 8, 9, 7, 8, 8, 6, 8, 2),

-- Andromedik — Belgian melodic DnB, classical/jazz training, 75M+ Spotify streams
('Andromedik',       'Drum & Bass + Jungle', 'Melodic/Liquid',
 'A Belgian melodic DnB producer with classical piano and jazz training, crafting uplifting festival anthems with 75M+ streams. Harmonic sophistication meets driving rhythms in emotionally resonant, broadly accessible productions.',
 6, 8, 7, 9, 8, 7, 6, 9, 6, 3),

-- Annix — Jump-Up duo, Playaz Recordings, Cheltenham
('Annix',            'Drum & Bass + Jungle', 'Jump-Up',
 'Cheltenham duo Konichi and Decimal Bass, signed to DJ Hype''s Playaz Recordings. Powerful basslines and technically sharp production deliver heavy dancefloor ammunition with maximum jump-up impact.',
 9, 5, 8, 9, 5, 6, 9, 4, 5, 2),

-- Aphrodite — Jungle/DnB founding father, Urban Takeover label, UK Top 40
('Aphrodite',        'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'A founding father of DnB and jungle who brought the genre from underground raves to global dancefloors. Infectious basslines, high-energy breakbeats, and an enduring influence on the music''s early mainstream expansion via Urban Takeover.',
 8, 7, 8, 8, 5, 7, 8, 6, 6, 3),

-- Audio — Neurofunk heavyweight, Virus Recordings / Snake Pit Records, Killbox
('Audio',            'Drum & Bass + Jungle', 'Neurofunk',
 'A neurofunk heavyweight with two decades of relentless innovation. Precision-engineered aggression and visceral sound design, shaped under Virus Recordings with Ed Rush and honed through his own Snake Pit Records and the Killbox project.',
 9, 3, 9, 7, 8, 8, 9, 2, 8, 1);
