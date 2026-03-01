-- PolyJamerous: Artist seed data — Batch 19 (gap-fill: S-W names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- SpectraSoul (Kennett + Stevens) — Liquid DnB, UK, Shogun Audio/Critical/Metalheadz
('SpectraSoul',          'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo Dave Kennett and Jack Stevens who became synonymous with forward-thinking liquid drum and bass through Shogun Audio, Critical Music, and Metalheadz releases. How We Live (2017) showcased their ability to balance emotive depth with dancefloor energy — collaborators with dBridge, Lenzman, and Calibre, and Sun & Bass, Outlook, and Let It Roll veterans with a devoted international following.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 3),

-- Stray (J) — Experimental/Halftime DnB, London, Exit Records/Critical, Ivy Lab co-founder
('Stray',                'Drum & Bass + Jungle', 'Halftime', ARRAY['Halftime', 'Deep'],
 'London producer and Ivy Lab co-founder (alongside Sabre and Halogenix) who pioneered the halftime subgenre by merging hip-hop and trap aesthetics with drum and bass structure. Exit Records and Critical Music releases — Paradise (2015), Chatterbox EP (2014) — and the collaborative Oblique (with Sabre and Halogenix) demonstrate a minimalistic, experimental approach that has influenced a generation of forward-thinking producers.',
 5, 5, 6, 6,  7, 8, 7,  5, 9, 2),

-- Sully — Jungle/Garage, UK, Astrophonica/Uncertain Hour, Tim Reaper collaborator, modern jungle revival
('Sully',                'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'British breakbeat producer who emerged from the grime and garage underground and became a central figure in the modern jungle resurgence through detailed sample edits, emotional chord work, and deep rave heritage. Astrophonica and Uncertain Hour releases — UHFR001 and CRFR001 collaborations with Tim Reaper, and Nights (2024) show a career of avoiding trends in favour of building lasting musical legacies.',
 6, 6, 6, 7,  7, 8, 8,  5, 8, 3),

-- T. Power (Marc Royal) — Intelligent/Experimental DnB, UK, Botchit & Scarper, ''Self Evident Truth'' 1995
('T. Power',             'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Jungle'],
 'Pioneer whose seminal album The Self Evident Truth of an Intuitive Mind (1995) is one of drum and bass''s most forward-thinking and atmospheric works. Botchit & Scarper label co-founder and collaborator with Shy FX — jazz-influenced programming, intricate polyrhythms, and genre-defying experimentation across a career that refuses conventional structures and continues to evolve through 2024.',
 4, 5, 5, 6,  9, 9, 6,  6, 9, 4),

-- Task Horizon (Matteo + Samuele) — Neurofunk, Switzerland, Eatbrain/Evolution Chamber, precision DnB
('Task Horizon',         'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'Swiss duo who represent their country on the global neurofunk stage through precision-engineered productions on Eatbrain and Evolution Chamber. Complex drum programming, heavyweight basslines, and technically uncompromising sound design — remixes for Ed Rush, Phace, and Rido alongside Joe Ford collaborations confirm their standing as one of European neurofunk''s most consistent and respected acts.',
 8, 3, 8, 8,  6, 7, 9,  3, 6, 1),

-- The Panacea (Mathis Mootz) — Techstep/Industrial DnB, Germany, Position Chrome/PRSPCT, ''Low Profile Darkness'' 1997
('The Panacea',          'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Techstep'],
 'German producer from Wetzlar whose debut Low Profile Darkness (1997) introduced industrial and digital hardcore aesthetics to techstep — founding Chrome Records (later Position Chrome), a cornerstone of German dark DnB. Classical choir background meets relentless sonic brutality across Twisted Designz (1998), Phoenix Metabolism (1999), and collaborations with Current Value and Limewax at the uncompromising intersection of DnB and industrial.',
 9, 2, 9, 8,  6, 7, 9,  2, 8, 1),

-- UK Apache (Abdul Wahab) — Ragga Jungle, Tooting/London, Shy FX''s ''Original Nuttah'' 1994, reggae-conscious
('UK Apache',            'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Tooting-born vocalist whose collaboration with Shy FX on Original Nuttah (1994) — the first jungle track in the UK Top 40 — made him an icon of the genre''s ragga fusion tradition. A deeply reggae-informed vocalist who withdrew from music after industry disillusionment before returning with spiritually-grounded conscious lyrics; Original Nuttah 25 (2019) with SHY FX and Chase & Status reaffirmed his enduring cultural significance.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 5),

-- Vibe Chemistry — Dancefloor/Melodic DnB, UK, DnB Allstars/0207 Def Jam, ''Balling'' breakout
('Vibe Chemistry',       'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Emerging British producer whose breakout single Balling became a dancefloor anthem and whose subsequent tracks Living Like This and Shella demonstrated consistent ability to merge vocal hooks with rolling bass patterns. DnB Allstars Records and Island Records releases bridge underground credibility with mainstream appeal — collaborations with LaMeduza, Maduk, and Document One mark him as one of the scene''s most commercially promising new voices.',
 7, 7, 7, 8,  5, 7, 7,  8, 5, 2),

-- Wickaman (Andrew Parsons) — Dancefloor DnB, UK, RAM/Infrared, J Majik collab UK Top 40 ''Crazy World''
('Wickaman',             'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jump Up'],
 'British producer who achieved mainstream recognition when Crazy World (2008) with J Majik entered the UK Top 40 at #37. RAM Records and Infrared imprint releases with collaborators Adam F, DJ Hype, and Hoodlum — versatile dancefloor DnB with crossover remixes including a Deadmau5 rework demonstrating sonic range beyond the underground.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 2),

-- Mollie Collins — already in batch 18 — replacing with Melinki

-- Melinki — Liquid/Dancefloor DnB, UK, Shogun Audio/Hospital/Metalheadz, soulful rollers
('Melinki',              'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British producer whose soulful, groove-driven liquid DnB has earned releases across Shogun Audio, Hospital Records, and Metalheadz — the three pillars of quality DnB production. Rolling basslines, warm melodies, and precise drum programming define a sound built for both dancefloor warmth and emotional depth, supported by Andy C and Friction and delivered at major UK festivals.',
 6, 7, 7, 8,  6, 8, 7,  8, 5, 3),

-- Skepsis (Archie Ross) — Jump Up/Dancefloor, UK, Shogun/Hospital/Crucast, ''Rave Out'' Turno collab
('Skepsis',              'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'British producer who emerged through Shogun Audio and built a dancefloor following with aggressive yet melodic jump-up DnB. Rave Out with Turno and Charlotte Plank (2023, UK #37) brought him to mainstream audiences — Crucast and DnB Allstars Records home for a high-energy catalogue that spans jump-up anthems and festival-ready crossover productions.',
 8, 7, 8, 9,  5, 6, 8,  7, 5, 1),

-- Noisestorm — Crossbreed/Neurofunk, UK, Monstercat/Eatbrain, ''Crab Rave'' phenomenon
('Noisestorm',           'Drum & Bass + Jungle', 'Crossbreed', ARRAY['Crossbreed', 'Neurofunk'],
 'British producer known principally for Crab Rave (2018, Monstercat) — a meme-defining internet phenomenon whose infectiously euphoric drum and bass reached global pop culture. Beneath the viral notoriety lies serious technical DnB craft across Eatbrain and Monstercat with productions like Breakout and Sentinel showing a producer comfortable with both mass appeal and underground neurofunk precision.',
 8, 7, 8, 8,  5, 7, 9,  7, 5, 1),

-- Hedex (James Sherbourne) — Dancefloor/Jump Up, UK, Ram/Viper/Monstercat, prolific anthems
-- [Already in original skip list — replacing with Hooversound label artists...]

-- Document One — Dancefloor/Liquid DnB, UK, Hospital Records/DnB Allstars, anthemic productions
('Document One',         'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British production duo whose melodic, anthemic drum and bass earned them a home at Hospital Records and DnB Allstars — consistently uplifting, radio-friendly productions that balance accessible hooks with genuine dancefloor weight. Collaborations with Vibe Chemistry and regular festival bookings mark them as dependable crowd-pleasers at the accessible, euphoric end of the contemporary liquid-dancefloor spectrum.',
 7, 8, 7, 8,  6, 7, 7,  8, 5, 2),

-- Gerra & Stone — Liquid/Dancefloor DnB, UK, Hospital Records/Spearhead, melodic duo
('Gerra & Stone',        'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo whose Hospital Records and Spearhead releases deliver melodic, groove-laden liquid DnB with warm production and anthemic hooks. A consistent presence in Hospital''s house style — polished arrangements, emotive chord progressions, and precise bass design that combines approachability with genuine production craft across Hospitality in the Park and touring festival circuits.',
 5, 8, 7, 8,  7, 7, 6,  8, 5, 3);

-- Loadstar — already in batch 12, replacing with LaMeduza

-- LaMeduza — Dancefloor/Vocal DnB, UK, DnB Allstars/Island, emerging crossover star
('LaMeduza',             'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British producer and vocalist who emerged as one of drum and bass''s most exciting crossover prospects through DnB Allstars Records and Island Records releases. Infectious vocal-led dancefloor DnB built for both club and festival — collaborations with Vibe Chemistry and Maduk demonstrate her knack for melodic hooks and rolling basslines that appeal across the DnB and mainstream electronic divide.',
 7, 8, 7, 8,  5, 7, 7,  9, 5, 3);
