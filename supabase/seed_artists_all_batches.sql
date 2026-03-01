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
-- PolyJamerous: Artist seed data — Batch 02 (A-tail + B names, pages 2–3)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Run in the Supabase SQL Editor after seed.sql and batch 01.

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- === A TAIL ===

-- Anile — Soulful liquid DnB, Hospital / Soul:r / The North Quarter, 15+ years
('Anile',                'Drum & Bass + Jungle', 'Liquid',
 'A soulful liquid DnB producer with 15+ years across Hospital Records, Soul:r, and The North Quarter. Emotionally resonant atmospherics and intricate drum programming crafted with authentic conviction — DnB that feels as well as moves.',
 4, 7, 5, 8, 7, 8, 5, 8, 7, 5),

-- ASC (James Clements) — Autonomic/Atmospheric DnB pioneer, ambient + breakbeats
('ASC',                  'Drum & Bass + Jungle', 'Experimental',
 'British Autonomic movement pioneer (James Clements) who prioritises mood and space over dancefloor intensity. Cinematic soundscapes, ambient textures, and immersive breakbeat structures — DnB as introspective electronic art.',
 2, 5, 5, 6, 7, 10, 4, 5, 8, 5),

-- Askel — Finnish liquid DnB, Soulvent / Spearhead / Fokuz / Hospital
('Askel',                'Drum & Bass + Jungle', 'Liquid',
 'Finnish liquid DnB producer inspired by Calibre and Alix Perez, crafting atmospheric soundscapes with deep soulful melodies across Soulvent, Spearhead, Fokuz, and Hospital Records. Introspective and immersive with a Northern European emotional depth.',
 4, 7, 6, 8, 7, 9, 4, 8, 7, 5),

-- Atlantic Connection (Nathan Hayes) — Liquid DnB, LTJ Bukem influenced, Creative Source / Dispatch / Liquid V
('Atlantic Connection',  'Drum & Bass + Jungle', 'Liquid',
 'Nathan Hayes crafts soulful liquid DnB with deep melodic warmth, inspired by LTJ Bukem''s Logical Progression. Consistent releases across Creative Source, Dispatch, and Liquid V that prioritise emotional depth and atmospheric refinement.',
 4, 7, 6, 8, 7, 8, 5, 8, 7, 5),

-- === B NAMES ===

-- B-Complex (Matúš Lenický) — Melodic DnB, Slovak, Hospital Records ''Beautiful Lies''
('B-Complex',            'Drum & Bass + Jungle', 'Melodic/Liquid',
 'Slovakian melodic DnB producer whose ''Beautiful Lies'' (Hospital Records) became an instant genre classic. Intricate breakbeats, emotive atmospheric melodies, and a balance of energy and emotional depth that transcends conventional DnB expectations.',
 6, 7, 7, 8, 8, 8, 6, 9, 7, 4),

-- Bachelors of Science — Liquid DnB, San Francisco, jazz/soul/funk, CODE / Formation
('Bachelors of Science', 'Drum & Bass + Jungle', 'Liquid',
 'San Francisco liquid DnB collective who fused jazz, soul, and funk with deep atmospheric breakbeats on their landmark debut ''Science Fiction'' (2008). Cinematic, emotionally resonant production across CODE and Formation Records.',
 4, 7, 6, 8, 8, 9, 5, 8, 8, 6),

-- Bad Company UK — Dark/experimental DnB pioneers, London, ''Inside the Machine'' 1998
('Bad Company UK',       'Drum & Bass + Jungle', 'Experimental/Tech',
 'Legendary London collective (dBridge, DJ Fresh, Vegas, Jason Maldini) who pioneered dark, futuristic DnB aesthetics. ''Inside the Machine'' remains a genre landmark — boundary-pushing production that shaped a generation of neurofunk and experimental DnB.',
 9, 3, 8, 7, 8, 8, 8, 3, 9, 1),

-- BCee — Liquid DnB, Spearhead Records founder, soulful and melodic
('BCee',                 'Drum & Bass + Jungle', 'Liquid',
 'Spearhead Records founder and liquid DnB craftsman with a soulful, melodic approach built around atmospheric textures and rolling basslines. A key connector in the deep liquid ecosystem, collaborating with Alix Perez, Lenzman, and Redeyes.',
 4, 8, 6, 8, 7, 8, 5, 8, 7, 5),

-- Benny L — Dark/Tech DnB, Metalheadz / Audioporn, Andy C and Goldie endorsed
('Benny L',              'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'A technically refined dark DnB producer with Metalheadz and Audioporn credentials, endorsed by Andy C and Goldie. Deep, rolling basslines and precision engineering — ''Vanta Black'' exemplifies a sound that balances underground grit with dancefloor effectiveness.',
 8, 4, 8, 8, 7, 8, 8, 4, 7, 2),

-- Benny Page — Ragga jungle, dub/dancehall, Digital Soundboy / High Culture Recordings
('Benny Page',           'Drum & Bass + Jungle', 'Jungle',
 'UK ragga jungle specialist who fuses dub, dancehall, and hip-hop with DnB energy across Digital Soundboy and his own High Culture Recordings. Heavy basslines, tight dancefloor production, and BBC Radio 1 reach — jungle with genuine Caribbean soul.',
 8, 7, 7, 8, 5, 7, 8, 6, 6, 5),

-- Billain — Neurofunk/experimental, Sarajevo, audio-visual, dystopian concept art
('Billain',              'Drum & Bass + Jungle', 'Experimental/Tech',
 'Sarajevo-based neurofunk and concept-art producer with a background in visual arts. Cinematic, dystopian sound design that blurs the line between club music and science fiction — contributions spanning music, film, video games, and AI research.',
 8, 3, 9, 6, 9, 9, 7, 3, 9, 2),

-- Bizzy B — Jungle pioneer, Art of Noise Records, early 90s scene
('Bizzy B',              'Drum & Bass + Jungle', 'Jungle',
 'A pioneering figure in early jungle and DnB whose Art of Noise Records became a hub for high-octane breakbeat music. Raw rave energy, classic jungle rhythms, and a decades-long legacy that helped establish the London underground scene.',
 8, 6, 7, 7, 5, 6, 7, 5, 7, 5),

-- Black Sun Empire — Neurofunk, Dutch trio, Blackout Music NL founders
('Black Sun Empire',     'Drum & Bass + Jungle', 'Neurofunk',
 'Dutch neurofunk trio behind Blackout Music NL, known for cinematic intensity and precise dark production. Collaborators with Noisia and Audio — ''Arrakis'' and ''Caterpillar'' balance aggressive energy with atmospheric depth in foundational neurofunk engineering.',
 9, 3, 9, 7, 8, 9, 8, 3, 8, 1);
-- PolyJamerous: Artist seed data — Batch 03 (B-tail + C + D starts)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Blame — Classic DnB/Jungle pioneer, ''Music Takes You'', 90s institution
('Blame',            'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'A DnB pioneer since the early ''90s whose ''Music Takes You'' became an enduring genre classic. Conrad Shafie has spent three decades innovating across jungle and contemporary DnB, collaborating with Andy C, High Contrast, and Netsky along the way.',
 6, 6, 7, 8, 6, 7, 7, 7, 7, 4),

-- Blocks & Escher — Liquid DnB duo, Hospital Records, soulful and melodic
('Blocks & Escher',  'Drum & Bass + Jungle', 'Liquid',
 'Hospital Records liquid DnB duo known for soulful, melodic productions with warm atmospheric depth. A consistent voice in the liquid tradition with a knack for emotionally resonant compositions and refined low-end design.',
 4, 8, 6, 8, 7, 8, 5, 8, 7, 5),

-- Blu Mar Ten — Liquid/Atmospheric DnB, London duo, Good Looking / Hospital / Blu Mar Ten Music
('Blu Mar Ten',      'Drum & Bass + Jungle', 'Deep/Liquid',
 'London duo who helped define atmospheric liquid DnB alongside LTJ Bukem on Good Looking Records. Three decades of sophisticated musicality — from the ''Logical Progression'' compilations to Hospital Records and their own Blu Mar Ten Music label.',
 3, 7, 5, 7, 8, 10, 4, 7, 8, 6),

-- Break — Tech/Liquid DnB, Symmetry Recordings, Critical / Metalheadz / Shogun
('Break',            'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'One of DnB''s most technically skilled producers, known for meticulous sound design and sharp drum programming across Symmetry Recordings, Critical, Metalheadz, and Shogun. Fluid between liquid warmth and dancefloor-driven tech — a true scene cornerstone.',
 7, 5, 8, 8, 7, 7, 8, 5, 7, 3),

-- Breakage — Liquid/Soul DnB, ''Digital Fears'', Hospital / Digital Soundboy, organic warmth
('Breakage',         'Drum & Bass + Jungle', 'Liquid/Soul',
 'A soulful DnB artist who weaves organic warmth and vocal performances into liquid foundations. ''Digital Fears'' and work across Hospital and Digital Soundboy showcase a production style that bridges DnB with soul and R&B sensibility.',
 5, 7, 6, 8, 7, 7, 5, 8, 7, 6),

-- Brookes Brothers — Melodic DnB, vocal anthems, Breakbeat Kaos / Viper, BBC Radio 1
('Brookes Brothers', 'Drum & Bass + Jungle', 'Dancefloor/Pop',
 'London siblings known for uplifting melodic anthems with soulful vocals. Breakbeat Kaos to Viper Recordings — endorsed by Andy C and BBC Radio 1, their accessible, euphoric DnB makes them consistent dancefloor favourites with genuine crossover reach.',
 7, 8, 7, 9, 6, 7, 7, 9, 6, 5),

-- Bryan Gee — V Recordings founder, jungle/DnB institution, 30+ years
('Bryan Gee',        'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'Founder and curator of the legendary V Recordings label — 30+ years as one of DnB''s most respected tastemakers. Productions and label stewardship that have championed countless artists across jungle, liquid, and dancefloor DnB traditions.',
 6, 7, 6, 8, 6, 7, 7, 7, 6, 5),

-- === D NAMES ===

-- dBridge (Darren White) — Experimental DnB, Exit Records, Bad Company UK, autonomic movement
('dBridge',          'Drum & Bass + Jungle', 'Experimental',
 'A pioneering experimental DnB figure who co-founded Bad Company and runs Exit Records. From Renegade Hardware''s dark techstep roots to the autonomic movement, dBridge''s career maps DnB''s most forward-thinking evolution — ''The Gemini Principle'' is a benchmark.',
 5, 5, 7, 7, 8, 8, 6, 5, 9, 3),

-- DJ Fresh (Daniel Stein) — Dancefloor/Pop crossover, Bad Company, Breakbeat Kaos, ''Louder'' UK #1
('DJ Fresh',         'Drum & Bass + Jungle', 'Dancefloor/Pop',
 'Co-founder of Bad Company and Breakbeat Kaos, DJ Fresh brought DnB to its mainstream peak with ''Louder'' — the first DnB track to hit UK #1. A producer who balanced underground credibility with chart ambition, launching Pendulum and Sigma in the process.',
 8, 7, 8, 9, 6, 7, 7, 8, 6, 4);
-- PolyJamerous: Artist seed data — Batch 04 (C names + D starts)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Calyx & TeeBee — Dancefloor/Tech duo, RAM Records, six-deck sets, ''All or Nothing'' 2012
('Calyx & TeeBee',   'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'Cornerstone DnB duo (Larry Cons and Torgeir Byrknes) known for precision engineering and legendary six-deck live setups. RAM Records'' ''All or Nothing'' cemented their reputation for balancing melodic hooks with razor-sharp basslines in technically brilliant dancefloor productions.',
 8, 6, 9, 8, 7, 8, 8, 7, 7, 2),

-- Commix — Liquid/Jazz DnB, Metalheadz / Good Looking Records, ''Call to Mind'' 2007
('Commix',           'Drum & Bass + Jungle', 'Deep/Liquid',
 'Cambridge collective turned solo project on Metalheadz and Good Looking Records. ''Call to Mind'' established their blend of liquid funk, atmospheric jazz, and sophisticated arrangement — introspective DnB that rewards attentive listening over repeated plays.',
 4, 7, 6, 8, 8, 9, 5, 7, 8, 6),

-- Command Strange — Liquid DnB, Kazakhstan, V Recordings / Fokuz, groove-laden rollers
('Command Strange',  'Drum & Bass + Jungle', 'Liquid',
 'Kazakhstani liquid DnB producer signed to V Recordings, whose groove-laden rollers combine soulful melodies with heavyweight bass. Emotive, polished productions with a natural dancefloor warmth that earns both headphone listening and club play.',
 5, 8, 7, 8, 7, 8, 6, 8, 6, 5),

-- Danny Byrd — Melodic DnB, Hospital Records founding artist, ''Supersized'' / ''Rave Digger''
('Danny Byrd',       'Drum & Bass + Jungle', 'Melodic/Liquid',
 'A Hospital Records founding artist who blends jungle heritage with R&B, garage, and hip-hop influences into melodic, accessible DnB. ''Supersized'' and ''Rave Digger'' made him a festival staple — infectious energy with genuine musical breadth.',
 7, 8, 7, 8, 7, 7, 7, 9, 7, 5),

-- Delta Heavy — Dancefloor DnB/bass crossover, RAM Records, ''Space Time'', cinematic
('Delta Heavy',      'Drum & Bass + Jungle', 'Dancefloor',
 'English bass duo on RAM Records who fuse drum and bass, dubstep, and cinematic production with emotive melodies and heavy drops. ''Space Time'' and the conceptual ''Paradise Lost'' album showcase a sound built for festival mainstages and serious headphones.',
 8, 7, 8, 8, 7, 8, 8, 8, 7, 3),

-- Dieselboy (Damian Higgins) — Dark Tech DnB, Philadelphia, US pioneer, Human Imprint Records
('Dieselboy',        'Drum & Bass + Jungle', 'Neurofunk',
 'A pioneering American DnB ambassador from Philadelphia whose legendary compilations like ''The 6ixth Session'' introduced dark, technical drum and bass to US audiences. Human Imprint Records founder — thunderous basslines and cinematic brutality.',
 8, 3, 8, 8, 7, 8, 8, 3, 8, 2),

-- DJ Marky (Marco Silva) — Liquid DnB, Brazilian, ''LK'' UK Top 20, InnerGround Records
('DJ Marky',         'Drum & Bass + Jungle', 'Liquid',
 'Brazilian liquid DnB pioneer whose ''LK'' (with XRS and Stamina MC) reached the UK Top 20. A key architect of Brazil''s world-class DnB scene through InnerGround Records and a long-running São Paulo residency — soulful melodies and infectious rhythmic warmth.',
 5, 8, 7, 8, 7, 7, 7, 8, 6, 6);
-- PolyJamerous: Artist seed data — Batch 05 (C-tail, H, L legends)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Congo Natty (Rebel MC / Michael West) — Jungle/Ragga pioneer, ''Jungle Revolution''
('Congo Natty',        'Drum & Bass + Jungle', 'Jungle',
 'From Rebel MC to jungle pioneer — Congo Natty fused Rastafarian culture, reggae roots, and explosive jungle breakbeats into socially conscious music. ''Jungle Revolution'' and Congo Natty Records became cornerstones of the genre''s cultural soul.',
 8, 7, 7, 7, 5, 7, 7, 7, 7, 6),

-- Current Value (Tim Eliot) — Neurofunk/Darkstep, Berlin, Björk collaborator, Eatbrain
('Current Value',      'Drum & Bass + Jungle', 'Neurofunk',
 'Berlin-based neurofunk and darkstep pioneer who collaborated with Björk and built a reputation for meticulous sound design and technical depth. Part of MachineCode duo — intricate production with relentless darkness across Eatbrain and Position Chrome.',
 8, 3, 9, 7, 9, 8, 8, 2, 9, 2),

-- High Contrast (Lincoln Barrett) — Liquid DnB, Hospital Records, Welsh, vocal-led
('High Contrast',      'Drum & Bass + Jungle', 'Liquid',
 'Welsh liquid DnB pioneer whose ''True Colours'' on Hospital Records helped define the genre''s melodic tradition. Soulful, vocal-led productions with jazz sophistication — collaborations with Adele and Tiësto, and an appearance on the London Olympics ceremony soundtrack.',
 6, 8, 7, 9, 8, 8, 6, 9, 7, 6),

-- Klute (Tom Withers) — Experimental/Dark Liquid, Commercial Suicide Records, legendary
('Klute',              'Drum & Bass + Jungle', 'Experimental',
 'Ipswich producer and Commercial Suicide Records founder whose work spans dark liquid and downtempo. ''Time 4 Change'' was the last tune played by John Peel on air — a career that launched Break, Calibre, and Spirit, and defined experimental DnB''s most reflective edge.',
 4, 5, 6, 7, 8, 8, 5, 6, 8, 5),

-- London Elektricity (Tony Colman) — Liquid/Live DnB, Hospital Records co-founder, live band
('London Elektricity', 'Drum & Bass + Jungle', 'Liquid/Soul',
 'Hospital Records co-founder who pioneered live instrumentation in DnB. Jazz, soul, and electronica woven through intricate breakbeats — ''Power Ballads'' and full live band sets demonstrated drum and bass as mature musical art. BBC 1Xtra Best Live Act 2007.',
 5, 8, 7, 8, 8, 8, 6, 8, 8, 8),

-- LTJ Bukem (Daniel Williamson) — Atmospheric/Intelligent DnB, Good Looking Records, legendary
('LTJ Bukem',          'Drum & Bass + Jungle', 'Ambient/Garage',
 'The father of intelligent drum and bass — classically trained pianist turned DnB innovator. Good Looking Records and the Progression Sessions defined atmospheric, jazz-fused DnB for a generation, proving the genre could be as sophisticated as it was physical.',
 2, 7, 4, 7, 9, 10, 4, 7, 7, 7);
-- PolyJamerous: Artist seed data — Batch 06 (D-tail, E, F, L names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Digital (Steve Carr) — Jungle/DnB, roots reggae/dub fusion, Function Records, Ipswich
('Digital',        'Drum & Bass + Jungle', 'Jungle',
 'Ipswich DnB legend who has fused roots reggae and dub with hard-hitting drum and bass since 1995''s ''Touch Me''. Function Records founder and Spirit collaborator — a pioneer of the sound that gave DnB its deepest organic roots.',
 6, 6, 6, 7, 6, 8, 6, 7, 7, 6),

-- Enei (Alexey Egorchenkov) — Tech/Atmospheric DnB, Russian, Critical Music, ''Machines'' 2012
('Enei',           'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'St. Petersburg-born tech DnB master signed to Critical Music under Kasra. ''Machines'' established a sound of meticulous layering, atmospheric depth, and hard-hitting rhythms — endorsed by Andy C, Goldie, and London Elektricity for technical sophistication.',
 7, 4, 8, 7, 8, 8, 7, 5, 8, 2),

-- Friction (Ed Keeley) — Dancefloor/Tech, Shogun Audio founder, BBC Radio 1 DnB presenter
('Friction',       'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'Shogun Audio founder, BBC Radio 1 DnB show presenter, and prolific dancefloor producer. Ed Keeley championed Alix Perez, SpectraSoul, and Technimatic while delivering hard-hitting, technically sophisticated productions across Hospital, Shogun, and RAM.',
 8, 6, 8, 8, 7, 8, 8, 6, 7, 2),

-- Lenzman (Teije van Vliet) — Liquid DnB, Dutch, The North Quarter, jazz/hip-hop/R&B
('Lenzman',        'Drum & Bass + Jungle', 'Liquid',
 'Dutch liquid DnB producer and The North Quarter label founder who blends jazz harmonics, hip-hop soul, and R&B warmth with rolling breakbeats. Collaborations with DRS and Fox on Metalheadz represent the genre''s most emotionally literate tradition.',
 4, 7, 6, 8, 8, 8, 5, 8, 7, 6),

-- LSB (Luke Beavon) — Liquid DnB, Essex, Soul:r / Spearhead / Liquicity, melancholic
('LSB',            'Drum & Bass + Jungle', 'Liquid',
 'Essex liquid DnB producer who debuted on Soul:r with the influential ''The View''. Melancholic soundscapes built around soulful piano melodies and smooth rolling rhythms — one of liquid DnB''s most emotionally refined and consistent voices.',
 3, 6, 5, 8, 8, 8, 4, 9, 6, 6);
-- PolyJamerous: Artist seed data — Batch 07 (D/I/K/M/P/R/S/W names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Shy FX (Andre Williams) — Jungle/Ragga pioneer, Digital Soundboy, ''Original Nuttah'' 1994
('Shy FX',         'Drum & Bass + Jungle', 'Jungle/Ragga',
 'London jungle pioneer whose 1994 ''Original Nuttah'' with UK Apache was one of the genre''s first mainstream anthems. Digital Soundboy founder who fuses ragga, dancehall, and reggae into drum and bass — three decades of innovation from underground raves to Glastonbury mainstages.',
 8, 7, 7, 8, 5, 7, 7, 7, 6, 5),

-- Roni Size (Ryan Owen Granville Williams) — Mercury Prize winner, Bristol, Reprazent, Full Cycle
('Roni Size',      'Drum & Bass + Jungle', 'Liquid/Soul',
 'Bristol drum and bass pioneer who won the Mercury Prize in 1997 for New Forms with the Reprazent collective — a landmark fusion of jazz, soul, and live instrumentation with rolling breakbeats. Co-founder of Full Cycle Records and architect of DnB''s most credible crossover moment.',
 6, 7, 7, 8, 8, 8, 7, 7, 7, 8),

-- Krust (Kirk Thompson) — Experimental DnB, Bristol, Reprazent, V Recordings, philosopher-producer
('Krust',          'Drum & Bass + Jungle', 'Experimental',
 'Bristol drum and bass pioneer who co-founded Reprazent with Roni Size and contributed to the Mercury Prize-winning New Forms. A philosopher-producer on V Recordings whose cinematic atmospheres and narrative storytelling define DnB''s most intellectually ambitious edge.',
 5, 5, 6, 7, 8, 8, 6, 6, 8, 4),

-- Dillinja (Karl Francis) — Dancefloor/Tech, South London, Valve Recordings, bass pioneer
('Dillinja',       'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'South London DnB titan who set new benchmarks in bass weight and sound design through tracks like Hard Noize and Valve Sound. Co-founder of Valve Recordings and creator of the custom Valve Sound System — his bass-first approach made him one of the genre''s most revered studio craftsmen.',
 8, 3, 6, 8, 6, 8, 8, 4, 6, 2),

-- Ed Rush (Ben Settle) — Neurofunk/Techstep, Virus Recordings, ''Wormhole'' 1998 with Optical
('Ed Rush',        'Drum & Bass + Jungle', 'Neurofunk',
 'London techstep pioneer who transformed drum and bass through a defining partnership with Optical on Virus Recordings. Their 1998 album Wormhole introduced sci-fi soundscapes, complex rhythms, and cinematic brutality — Bludclot Artattack and Alien Girl remain genre-defining texts.',
 8, 2, 7, 8, 8, 8, 8, 3, 7, 1),

-- Photek (Rupert Parkes) — Minimalist/Intelligent DnB, Metalheadz, Ipswich, Grammy nominated
('Photek',         'Drum & Bass + Jungle', 'Experimental',
 'Ipswich-born minimalist who redefined drum and bass through intricate breakbeat manipulation and cinematic precision on Metalheadz. Modus Operandi (1997) and Ni Ten Ichi Ryu set a template for intelligent DnB — a career extended into film scoring (Blade) and three consecutive Grammy nominations for remixing.',
 4, 5, 5, 7, 8, 9, 8, 5, 7, 4),

-- Icicle (Jeroen Snik) — Dancefloor/Tech DnB, Dutch/London, Shogun Audio exclusive
('Icicle',         'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'Dutch-born producer who relocated to London and became a cornerstone of Shogun Audio through technical precision, intricate rhythms, and atmospheric soundscapes. Albums Under the Ice (2011), Entropy (2014), and Exiled (2019) trace a career balancing dancefloor impact with genuine production depth.',
 7, 4, 7, 8, 7, 8, 8, 5, 7, 2),

-- Marcus Intalex (Marcus Julian Kaye) — Liquid DnB, Manchester, Soul:r founder, passed 2017
('Marcus Intalex', 'Drum & Bass + Jungle', 'Liquid',
 'Manchester-born liquid DnB pioneer who founded Soul:r in 2001, nurturing Calibre, DJ Marky, and ST Files into the genre''s most emotionally resonant label. His debut album 21 and techno alias Trevino demonstrated rare musicality — a beloved scene architect who passed in 2017.',
 3, 7, 5, 8, 8, 8, 5, 8, 7, 6),

-- Skeptical — Experimental/Atmospheric DnB, Metalheadz, Exit Records, Rubi Records
('Skeptical',      'Drum & Bass + Jungle', 'Experimental',
 'UK drum and bass producer celebrated for precision engineering and atmospheric depth across Metalheadz, Exit Records, and Soul:r. Collaboration with Dub Phizix on Marka became a streaming phenomenon — 2017 D&B Awards Best Alternative Artist and founder of Rubi Records in 2023.',
 5, 5, 6, 7, 7, 8, 7, 6, 8, 3),

-- DLR (Dave Litten-Read) — Deep/Liquid DnB, Bristol, Dispatch/Metalheadz, Sofa Sound co-founder
('DLR',            'Drum & Bass + Jungle', 'Deep/Liquid',
 'Bristol-based producer whose deep, groove-laden approach across Dispatch Recordings and Metalheadz captures the reflective spirit of the city''s DnB heritage. Co-founder of Sofa Sound — debut album Seeing Sounds (2015) and the Dreamland project with Mako and Villem showcase a forward-thinking sensibility.',
 4, 6, 5, 8, 7, 8, 6, 6, 7, 4),

-- Whiney (Will Hine) — Liquid DnB, Coventry, Hospital Records / Med School
('Whiney',         'Drum & Bass + Jungle', 'Liquid',
 'Coventry producer signed to Hospital Records'' Med School imprint who melds rolling basslines, intricate sound design, and emotive melodies into a distinctly modern liquid DnB sound. Debut album Talisman (2017) and collaborations with Inja and London Elektricity established him as one of the genre''s most consistent creative voices.',
 5, 7, 6, 8, 7, 7, 6, 8, 6, 5),

-- Grey Code (Spencer Warren) — Experimental DnB, Metalheadz, Dispatch, ''Renewal'' 2022
('Grey Code',      'Drum & Bass + Jungle', 'Experimental',
 'British producer who emerged via Dispatch Recordings and made a landmark debut on Metalheadz with the Reprieve EP (2019). Debut album Renewal (2022) blends emotive melodies with complex rhythms — a leading voice in contemporary DnB''s forward-thinking tradition, collaborating with Phace and remixing Goldie.',
 5, 5, 6, 7, 8, 8, 6, 7, 8, 3);
-- PolyJamerous: Artist seed data — Batch 08 (J/O/P/R names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Jubei (Paul Ager) — Atmospheric/Liquid DnB, Metalheadz, Carbon Music
('Jubei',         'Drum & Bass + Jungle', 'Experimental',
 'British producer whose debut on Metalheadz, Nothing Ventured Nothing Gained (2010), showcased intricate DnB crafted alongside dBridge and S.P.Y. Debut album To Have & Have Not refined his signature atmospheric soundscapes and precision engineering — a trusted collaborator to Goldie, Alix Perez, and Skeptical across three decades.',
 5, 5, 6, 7, 7, 8, 7, 6, 7, 3),

-- Total Science (Jason Greenhalgh + Paul Smith) — Liquid/Deep DnB, Oxford, CIA Records
('Total Science',  'Drum & Bass + Jungle', 'Deep/Liquid',
 'Oxford duo who bonded over hip-hop before founding CIA Records in 1997 and releasing the landmark album Advance (2000). Thirty years of sophisticated, liquid-influenced DnB across CIA, Metalheadz, and Hospital Records — their tune Champion Sound became a scene anthem.',
 5, 7, 6, 8, 7, 8, 6, 7, 7, 5),

-- Phace (Florian Harres) — Neurofunk, Hamburg, Neosignal co-founder
('Phace',         'Drum & Bass + Jungle', 'Neurofunk',
 'Hamburg-based neurofunk producer who co-founded Neosignal and built a reputation for complex rhythms, futuristic sound design, and experimental techno fusion. A close collaborator with Noisia, Misanthrop, and Mefjus — over two decades of meticulous production at the cutting edge of DnB''s technical frontier.',
 7, 3, 8, 8, 8, 8, 9, 3, 8, 1),

-- Optical (Matt Quinn) — Neurofunk/Techstep, London, Virus Recordings co-founder
('Optical',       'Drum & Bass + Jungle', 'Neurofunk',
 'London techstep pioneer who co-founded Virus Recordings with Ed Rush and co-produced the landmark album Wormhole (1998). From To Shape the Future on Metalheadz to The Creeps — futuristic production techniques and sonic design that shaped neurofunk''s development for a generation.',
 8, 2, 7, 8, 8, 8, 8, 3, 7, 1),

-- DJ Hype (Kevin Ford) — Jump-Up DnB, London, Playaz Recordings co-founder
('DJ Hype',       'Drum & Bass + Jungle', 'Jump-Up',
 'London jump-up institution who co-founded Playaz Recordings with DJ Zinc and Pascal, and founded Ganja Records in 1994. From Shut Up and Dance and pirate radio to legendary Fabric residencies — razor-sharp scratch techniques and relentless jump-up energy across four decades of DnB performance.',
 9, 7, 8, 9, 4, 6, 9, 6, 5, 3),

-- Ray Keith — Jungle/Dread, Essex, Dread Recordings founder
('Ray Keith',     'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'Essex jungle pioneer who founded Dread Recordings in 1994 and shaped the genre''s bass-heavy, soulful identity through tracks like Chopper and Terrorist. Operating under aliases including Dark Soldier and Renegade, his productions blended jungle with jazz, funk, and soul — a founding architect of DnB''s most raw spiritual roots.',
 7, 6, 6, 8, 5, 7, 7, 6, 6, 5);
-- PolyJamerous: Artist seed data — Batch 09 (L/N/O/R/T names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Randall (McNeil) — Jungle/DnB DJ legend, London, Mac II Recordings, passed 2024
('Randall',          'Drum & Bass + Jungle', 'Jungle/Dancefloor',
 'Legendary London drum and bass DJ who shaped the early scene through residencies at AWOL and Metalheadz sessions in the 1990s. Founder of Mac II Recordings and renowned for mixing precision and seamless transitions — a beloved scene architect who passed in 2024.',
 7, 6, 7, 9, 5, 7, 8, 6, 6, 4),

-- DJ Trace (Duncan Hutchison) — Techstep pioneer, London, DSCI4 / No U-Turn Records
('DJ Trace',         'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'London techstep architect whose 1995 Mutant Remix became a seminal genre text. Collaborations with Ed Rush, Nico, and Fierce on the Torque LP for No U-Turn Records — and founder of DSCI4 in 1999 — defined the dark, mechanistic heart of DnB''s most technical evolution.',
 8, 2, 7, 8, 7, 7, 8, 3, 7, 2),

-- Origin Unknown (Andy C + Ant Miles) — Atmospheric DnB, RAM Records, ''Valley of the Shadows'' 1993
('Origin Unknown',   'Drum & Bass + Jungle', 'Ambient/Garage',
 'Pioneering drum and bass duo formed by Andy C and Ant Miles who released the iconic Valley of the Shadows (1993) — one of the genre''s most atmospheric and enduring productions. Architects of RAM Records and Ram Trilogy alongside Shimon — the defining statement of atmospheric DnB''s spiritual foundations.',
 3, 5, 4, 7, 7, 10, 5, 6, 7, 5),

-- Technical Itch (Mark Caro) — Neurofunk/Techstep, Birmingham, Tech Itch Recordings founder
('Technical Itch',   'Drum & Bass + Jungle', 'Neurofunk',
 'Birmingham-born neurofunk architect who founded Tech Itch Recordings in 1993 and became one of the genre''s most uncompromising voices. From Moving Shadow to his own imprint — heavy basslines, dystopian atmospheres, and intricate drum patterns that helped define drum and bass''s dark, futuristic wing.',
 7, 2, 7, 8, 8, 8, 8, 2, 8, 1),

-- Nymfo (Bardo Camp) — Tech/Liquid DnB, Amsterdam, Commercial Suicide / Metalheadz / Hospital
('Nymfo',            'Drum & Bass + Jungle', 'Dancefloor/Tech',
 'Amsterdam DJ and producer who transitioned from gabber to drum and bass in the early 2000s, developing a signature blend of techno-tinged dancefloor rhythms and soulful liquid melodies. Co-founder of the Red Zone residency with Martyn — a consistent presence across Commercial Suicide, Metalheadz, and Hospital Records.',
 6, 5, 7, 8, 7, 7, 7, 6, 7, 2),

-- Logistics (Matt Gresham) — Liquid/Soul DnB, Cambridge, Hospital Records, BBC 1Xtra award
('Logistics',        'Drum & Bass + Jungle', 'Liquid/Soul',
 'Cambridge-born Hospital Records mainstay who bridges liquid funk warmth with high-energy dancefloor DnB. Debut album Now More Than Ever (2006) launched a career celebrated with a BBC 1Xtra Xtra Bass Award — brother of Nu:Tone and regular Nu:Logic collaborator, part of Hospital''s most melodically accomplished generation.',
 6, 8, 7, 8, 7, 7, 6, 8, 6, 6);
