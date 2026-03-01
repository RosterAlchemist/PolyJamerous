-- PolyJamerous: Artist seed data — Batch 21 (gap-fill: C-M names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Crissy Criss (b. 1987) — Dancefloor/Liquid DnB, London, BBC Radio 1Xtra, Hospital/Eatbrain/War on Silence
('Crissy Criss',         'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'London DJ and producer who became the youngest artist to host a show on BBC Radio 1Xtra at age 15 — stepson of legendary DJ Kenny Ken. Hospital Records, Technique Recordings, Eatbrain, and his own War on Silence label home for over two decades of high-energy drum and bass — Malux and Erb N Dub collaborations and consistent festival bookings at Let It Roll and Boomtown mark him as one of the scene''s most respected DJs.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 2),

-- DJ Dara (Darragh Guilfoyle) — Technical DnB, Brooklyn/NYC via Ireland, Breakbeat Science founder 1996
('DJ Dara',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Deep'],
 'Irish-born Brooklyn DJ Darragh Guilfoyle who co-founded Breakbeat Science in 1996 — the first drum and bass specialty record store in the United States — helping establish DnB in the American market. Mix albums From Here to There and Future Perfect are scene documents; Herd Killing Recordings artist whose technical precision and dynamic track selection have anchored the US DnB scene for three decades.',
 6, 5, 6, 8,  6, 7, 7,  5, 7, 3),


-- DJ Zinc (Benjamin Pettit) — Multi-genre/Jungle, London, Super Sharp Shooter 1995, UK#27 ''138 Trek'' 1999
('DJ Zinc',              'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London pioneer Benjamin Pettit whose Super Sharp Shooter (1995) is one of the defining early drum and bass anthems — spanning hardcore roots through ragga, hardstep, and UK garage before conceptual album Faster (2004) bridged genres with progressive tempo shifts. True Playaz founding member alongside DJ Hype and Ganja Kru collaborator — 138 Trek reached UK Singles Chart #27 in 1999, confirming mainstream crossover power.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 4),

-- Dynamite MC (Dominic Smith) — Jungle MC, UK, Mercury Prize ''New Forms'' 1997 Reprazent, Andy C/LTJ Bukem
('Dynamite MC',          'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British MC Dominic Smith who performed on Roni Size and Reprazent''s Mercury Prize-winning New Forms (1997) and contributed to In the Mode — one of DnB''s most celebrated MCs. Dynavibez, Hospital Records, and Andy C collaborator whose dynamic presence across drum and bass, jungle, and hip-hop stages — Need for Speed: Carbon soundtrack credit and Kiss FM radio career confirm a multi-platform DnB personality.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 4),

-- Flava D (Danielle Gooding) — Multi-genre/DnB, Bournemouth, Hospital Records/TQD, UK garage to DnB crossover
('Flava D',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Bournemouth producer Danielle Gooding who built her reputation across UK garage, grime, and bassline through TQD supergroup (with Royal-T and DJ Q) before joining Hospital Records in 2020 and transitioning to drum and bass. Voyager, Energy, and Antidote showcase melodic dancefloor DnB with club-ready energy — Nu:Tone and SpectraSoul collaborations confirm a smooth creative integration into DnB''s premier liquid stable.',
 7, 7, 7, 8,  5, 7, 7,  7, 5, 3),

-- Future Cut (Mallett + Babalola) — Dancefloor/Tech DnB, London, Renegade Hardware/Future Cut Recordings
('Future Cut',           'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Neurofunk'],
 'London duo Darren Mallett and Tunde Babalola whose Renegade Hardware and Future Cut Recordings productions blend melodic elements with hard-hitting technical beats — Andy C, Goldie, and Roni Size supporters confirm their multi-decade standing. Whiplash, Dominator, and René LaVice/Pola & Bryson collaborations display a prolific output with both dancefloor authority and tonal sophistication.',
 7, 5, 7, 8,  6, 7, 8,  5, 6, 2),

-- Genotype (Matthew Ryan) — Dark/Jungle DnB, London, Metalheadz/Renegade Hardware/Dispatch/Exit, Loxy collab
('Genotype',             'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Jungle'],
 'London producer Matthew Ryan whose 100+ release discography across Metalheadz, Renegade Hardware, Exit Records, and Dispatch Recordings blends dark, atmospheric jungle textures with deep rolling basslines and hard-hitting rhythmic construction. Tribal Army series, Test of Time, and Loxy/Ink collaborations define a sound respected and championed by Goldie and Dillinja — a consistent underground presence for over two decades.',
 7, 3, 6, 7,  7, 8, 8,  4, 8, 2),


-- Dope Ammo entry was moved to batch 20 — replacing with Loxy

-- Shimon (Shimon Reece) — Dancefloor/Tech, Sheffield, Moving Shadow/CIA/Ram, vinyl era architect
('Shimon',               'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Neurofunk'],
 'Sheffield producer and DJ whose Moving Shadow, CIA Records, and RAM Records releases in the late 1990s and 2000s placed him among the leading architects of technical, hard-edged dancefloor DnB. Andy C RAM collaboration Nightlife vol.2 standout contributor — Red One and Move to the Rhythm are signature tracks demonstrating precise engineering and driving momentum across a prolific vinyl-era catalogue.',
 8, 4, 8, 8,  6, 7, 9,  4, 6, 1),


-- Ant Miles — Dancefloor DnB, UK, RAM Records, Loadstar co-founder
('Ant Miles',            'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British DJ and producer who co-founded Loadstar alongside Xample — one of the most successful duos on RAM Records with Glastonbury main stage and Creamfields bookings alongside Andy C endorsement. Prior solo RAM Records output established his dancefloor instincts before the Loadstar partnership delivered consistently anthemic melodic DnB that crossed from underground credibility to festival headline status.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Bukem in the Jungle — Good Looking pioneer, but LTJ Bukem already in DB — insert Peshay instead
-- Peshay (Paul Pesce) — Liquid/Intelligent DnB, London, Metalheadz/Island Records, jazz-informed
('Peshay',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'London producer Paul Pesce whose Metalheadz and Island Records releases in the late 1990s helped define liquid and intelligent drum and bass — Miles From Home and You Got Me Rocking are foundational tracks that fuse jazz, soul, and electronic production into emotionally resonant DnB. A key figure of the Goldie/Metalheadz stable whose musicality and warmth of production influenced the entire liquid subgenre.',
 4, 7, 5, 8,  8, 9, 5,  8, 7, 4);

-- Pendulum already in DB — inserting Evol Intent instead
-- Evol Intent (Stu + Eric) — Neurofunk/Dark DnB, USA, Evol Intent Records/Citrus, US neurofunk vanguard
('Evol Intent',          'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'American neurofunk duo who founded Evol Intent Records and Citrus Recordings to champion dark, technically precise drum and bass in the United States. Era of Diversion album, Infected Euphoria EP, and extensive Renegade Hardware collaborations established them as the leading voice of US neurofunk — building community and infrastructure for American DnB production at a time when the genre was almost exclusively a British export.',
 8, 3, 8, 8,  6, 7, 9,  3, 7, 1);
