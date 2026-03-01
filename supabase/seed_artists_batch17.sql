-- PolyJamerous: Artist seed data — Batch 17 (gap-fill: C-E names missed in earlier batches)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Cause4Concern (Optiv + Clement + StuC4C) — Neurofunk/Dark DnB, Renegade Hardware/Virus/C4C
('Cause4Concern',        'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'UK collective formed in 1999 — Optiv, Mark Clement, and StuC4C — who pioneered the dark and technical side of drum and bass through Renegade Hardware and Virus Recordings before founding C4C Recordings as their own creative platform. Pandemic, Headroom, and Syonide define a sound of heavy basslines, haunting atmospheres, and intricate rhythms built over two decades of relentless underground output.',
 8, 2, 8, 8,  7, 8, 8,  3, 7, 1),

-- Coco Bryce — Jungle/Experimental, Netherlands, Myor/Lobster Theremin, old-school rave revival
('Coco Bryce',           'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'Dutch producer with over two decades in jungle and DnB who bridges vintage rave aesthetics with forward-thinking production. Myor, Lobster Theremin, and Critical Music releases — Night on Earth and Wuthering Heights are celebrated tracks — a deep vinyl culture connection and close collaborative relationship with Tim Reaper position him as a leading voice in the contemporary jungle renaissance.',
 7, 6, 6, 7,  6, 8, 8,  5, 8, 2),

-- Danny Breaks (Daniel Whiddett) — Jungle/Experimental DnB, Essex, Droppin'' Science founder, ''Far Out'' 1991
('Danny Breaks',         'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Essex producer who charted as Sonz of a Loop Da Loop Era with Far Out (1991) before founding Droppin'' Science in 1994 and transitioning to innovative jungle and DnB production. Moving Shadow and Hospital Records credits across experimental, hip-hop-adjacent soundscapes — relocated to Cologne in 2015, continuing to push drumfunk and experimental breakbeat production from the scene''s foundational generation.',
 6, 6, 6, 7,  7, 8, 8,  5, 8, 3),

-- Dave Owen — Liquid/Soul DnB, Indianapolis/UK, Good Looking/Dispatch/Creative Source, transatlantic jazz
('Dave Owen',            'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Indianapolis-born, UK-raised producer whose transatlantic upbringing shapes a soulful liquid DnB sound blending jazz, hip-hop, and R&B from both sides of the Atlantic. Good Looking Records, Dispatch Recordings, and Liquid V releases — supported by LTJ Bukem, Fabio, and Grooverider — with Outlook and Sunandbass festival appearances confirming genuine scene respect.',
 4, 7, 5, 8,  8, 8, 5,  8, 6, 5),

-- DJ Brockie (Ian Michael Campbell) — Jungle/Dancefloor, London, Undiluted Recordings, 30+ years
('DJ Brockie',           'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London jungle pioneer who emerged in the early 1990s and became a household name in DnB through three decades of high-energy performances and eclectic mixing. Co-founder of the iconic Brockie & Ed Solo partnership — Undiluted Recordings home and regular BBC radio presence, bridge the classic jungle era with contemporary dancefloor drum and bass through tireless touring and community building.',
 7, 6, 6, 8,  5, 7, 8,  6, 6, 4),

-- DJ Die (Daniel Kausman) — Liquid/Soul DnB, Bristol, Full Cycle co-founder, Mercury Prize ''New Forms'' 1997
('DJ Die',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Bristol producer who met Roni Size at Replay Records in 1992, co-founded Full Cycle Recordings, and contributed to the Mercury Prize-winning New Forms (1997) as part of Reprazent. Breakbeat Era project with Roni Size and Leonie Laws — Gutterfunk label founder whose soulful, groove-laden DnB carries three decades of Bristol''s unique musical heritage.',
 6, 7, 7, 8,  7, 8, 6,  7, 7, 5),

-- DJ Patife (Wagner Ribeiro de Souza) — Liquid/Soul DnB, São Paulo/Brazil, V Recordings, Roni Size collab
('DJ Patife',            'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'São Paulo drum and bass pioneer who performed with Roni Size at the Mercury Prize ceremony in 1997 and has championed Brazilian DnB internationally ever since. V Recordings mainstay — debut Sounds of Drum''n''Bass (2000) and collaborations with DJ Marky, Makoto, and Redeyes on Innerground blend soulful breakbeats with rich Brazilian musical heritage into joyous, melodic liquid DnB.',
 5, 8, 7, 8,  7, 7, 6,  7, 6, 6),

-- DJ Rap (Charissa Saverio) — Jungle/Dancefloor, UK, Propa Talent founder, ''Spiritual Aura''
('DJ Rap',               'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Pioneering producer and DJ who broke barriers as one of electronic music''s most recognised female figures since the early 1990s. Propa Talent label founder and Suburban Base recording artist — Spiritual Aura is a timeless jungle classic while Learning Curve (1999) crossed over to mainstream audiences. Active through 2026 with consistent output and festival performances alongside mentoring emerging talent.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 4),

-- E-Z Rollers (Hurren + Banks + Richards) — Liquid/Jazz DnB, Suffolk, Moving Shadow, ''Walk This Land'' 1998
('E-Z Rollers',          'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Suffolk collective of Jay Hurren, Alex Banks, and vocalist Kelly Richards whose Walk This Land — featured on the Lock, Stock and Two Smoking Barrels soundtrack — brought DnB to mainstream audiences in 1998. Moving Shadow and their own Intercom Recordings home — jazz, funk, and hip-hop woven into intricate drum and bass production; Short Change in GTA2 and Soundclash in Rollcage extend their cultural footprint.',
 5, 8, 6, 8,  7, 8, 6,  8, 7, 5),

-- Ed Solo — Jungle/Dancefloor, UK, Jungle Cakes founder, Brockie & Deekline collaborator
('Ed Solo',              'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Veteran producer and DJ who emerged in the late 1990s through collaborations with DJ Brockie and Deekline, becoming a driving force in the jungle and DnB scene. Founder of Jungle Cakes label — Represent, Age of Dub, and Soundboy Killa are signature tracks — sharp drum programming, heavy basslines, and reggae-infused energy delivered at DnB Allstars and Born on Road festival events.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 4),

-- Electrosoul System (Andrey Burtaev) — Atmospheric/Progressive DnB, Moscow, Hospital/Kos.Mos.Music
('Electrosoul System',   'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Moscow producer and Kos.Mos.Music label founder who has shaped atmospheric and progressive drum and bass since 1998, connecting Russian and regional electronic talent with UK and European audiences. Hospital Records and Spearhead credits — No One Knows and On The Run are signature tracks — a career of genre-blending exploration that encompasses DnB, house, techno, and progressive alongside consistent international touring.',
 4, 7, 6, 8,  7, 8, 5,  7, 7, 4),

-- Emperor (Leon Anscomb) — Neurofunk/Hardstep, UK, Digital Soundboy/Metalheadz/Sector7, live bass
('Emperor',              'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'British producer and live bassist Leon Anscomb who brings rare organic energy to neurofunk and hardstep through live bass guitar integrated into electronic production. Digital Soundboy and Metalheadz releases — Sector7 Records artist whose marriage of live musicianship with hard-hitting DnB construction gives his productions a visceral, human quality within the otherwise purely electronic neurofunk landscape.',
 8, 4, 8, 8,  6, 7, 8,  4, 7, 4),

-- Etherwood (Edward Allen) — Liquid/Melodic DnB, Lincoln, Hospital/Med School, singer-songwriter
-- [Already covered in batch 10 — skip, inserting Equinox instead]

-- Equinox — Deep/Atmospheric DnB, UK, Good Looking Records/Soul:r, late 90s classic era
('Equinox',              'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Liquid'],
 'UK drum and bass producer whose work on Good Looking Records in the late 1990s contributed to the genre''s most atmospheric and melodic tradition. A part of the intelligent DnB movement cultivated around LTJ Bukem''s stable — layered soundscapes, emotive progressions, and careful rhythmic construction that rewards patient listening over pure dancefloor impact.',
 3, 7, 5, 7,  8, 9, 4,  7, 7, 4),

-- Fixate (Declan Curran) — already in batch 10 — replacing with Fanu

-- Fanu (Janne Hatula) — Drumfunk/Experimental DnB, Finland, Lightless Recordings/Metalheadz, jazz-rooted
('Fanu',                 'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Drumfunk'],
 'Finnish producer whose classical and jazz training produced some of the most harmonically sophisticated and rhythmically intricate drum and bass in the genre. Lightless Recordings founder and Metalheadz contributor — introspective compositions with rich chord structures, evolving drumfunk patterns, and a musicality that places him closer to jazz composition than conventional DnB, respected across three decades of output.',
 4, 6, 5, 7,  9, 8, 6,  6, 8, 5);

-- Fox (Jodie Fox) — Liquid/Soul DnB, UK, Metalheadz/Lenzman/Soul:r, vocalist and producer
('Fox',                  'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'British vocalist and producer whose collaborations with Lenzman on Metalheadz and The North Quarter have produced some of the most emotionally affecting liquid DnB of the past decade. Featured extensively on Soul:r compilations and Zero T''s Play Fool EP — her warm, jazz-inflected vocals and production instincts anchor soulful DnB with rare song-writing craft.',
 4, 8, 6, 8,  7, 8, 5,  9, 6, 6);
