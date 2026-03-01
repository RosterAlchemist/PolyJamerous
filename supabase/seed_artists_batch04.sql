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
