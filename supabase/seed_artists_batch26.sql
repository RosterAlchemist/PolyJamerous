-- PolyJamerous: Artist seed data — Batch 26 (gap-fill: C-W vocalists + DnB newcomers)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Charlotte Plank — Indie-Pop/Jungle Vocalist, Australia/UK, Black Butter/RCA, UK#5 ''Dancing Is Healing'' 2023
('Charlotte Plank',      'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jungle'],
 'Australian-born, UK-raised vocalist and producer whose unique fusion of indie-pop, 90s grunge, and drum and bass brought mainstream recognition through Dancing Is Healing (UK #5, 2023) with Rudimental and Vibe Chemistry. Black Butter and RCA Records artist who emerged through London''s Loud LDN collective — Skepsis, General Levy, and Congo Natty collaborations alongside early 2022 self-releases confirm a diverse cross-genre creative vision.',
 7, 8, 7, 8,  5, 7, 7,  9, 5, 4),

-- Collette Warren (Laura Pacheco Hill) — Soul Vocalist, Birmingham/London, V Recordings/Spearhead/Liquicity
('Collette Warren',      'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Birmingham vocalist whose Motown, jazz, reggae, and 90s R&B influences bring rare emotional richness to liquid DnB vocal collaborations — Hidden Lines EP (Beatport #5, 2018), Calibre, Technimatic, and Seba collaboration partner. V Recordings, Spearhead Records, and Liquicity home — The Mic Diaries podcast host and advocate for women in drum and bass whose artistry combines genuine musical heritage with consistent scene engagement.',
 5, 7, 6, 8,  7, 8, 5,  9, 6, 6),



-- Riya (Laura Pacheco Hill) — Soul Vocalist, UK, V Recordings/Spearhead/Liquicity, DBA Award Winner 2014-15
('Riya',                 'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Vocalist who won the Drum&BassArena Award for Best Vocalist in both 2014 and 2015 — Open Page and Kismet are signature tracks that demonstrate her emotive, heartfelt vocal style within liquid DnB. V Recordings, Spearhead Records, and Liquicity releases; Lenzman, Hybrid Minds, and Technimatic collaboration partner who pioneered live DJ-plus-vocals performance formats and continues delivering soulful, harmonically rich contributions to the liquid scene.',
 4, 8, 6, 8,  7, 8, 5,  9, 5, 6),

-- SHY FX (Andre Williams) — Jungle/Ragga DnB, London, Digital Soundboy, ''Original Nuttah'' 1994 co-creator
('SHY FX',               'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London producer Andre Williams who co-created Original Nuttah (1994) with UK Apache — the first jungle track in the UK Top 40 — making him a pioneering figure in ragga jungle''s mainstream breakthrough. Digital Soundboy label founder and Shake Ur Body producer — Dizzee Rascal, Ms. Dynamite, Plan B, and Lily Allen collaboration partner whose versatility spans jungle''s entire evolution from 1994 to Original Nuttah 25 anniversary (2019) and beyond.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 4),



-- Dillinja already in batch 20 — replacing with Sephirot
-- Skepta x DnB — actually Skepta is grime; inserting Loxy's label partner Ink instead
-- Ink (Darren Foulger) — Dark/Experimental DnB, UK, Metalheadz/Dispatch/Wheel & Deal, Genotype/Loxy partner
('Ink',                  'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Jungle'],
 'UK producer whose Metalheadz, Dispatch Recordings, and Wheel & Deal releases explore the darker, more atmospheric corners of deep drum and bass — a long-standing creative partner of Loxy and Genotype whose collaborative output represents some of the underground''s most uncompromising sonic explorations. Intricate drum construction, deep bass textures, and restrained emotional complexity define a body of work that rewards patient, attentive listening.',
 5, 3, 5, 7,  7, 9, 7,  4, 8, 2),

-- Marcus Visionary — Liquid DnB, Canada, Influence Records/Metalheadz, Canadian DnB ambassador
('Marcus Visionary',     'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Canadian producer who built the North American liquid DnB scene through Influence Records and Metalheadz — decades of soulful, groove-laden productions that demonstrate Canadian perspectives on a predominantly British genre. A key figure in establishing DnB infrastructure outside of the UK and Europe — hosting events, supporting emerging talent, and maintaining consistent production output that connects North American and international underground communities.',
 5, 7, 6, 8,  7, 8, 6,  7, 6, 4),

-- Noisia already in DB — inserting Phentix instead
-- Phentix (Tim Jansen) — Melodic/Dancefloor DnB, Netherlands, Shogun Audio/C4C/Hospital, uplifting rollers
('Phentix',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Dutch producer Tim Jansen whose Shogun Audio, C4C Recordings, and Hospital Records releases deliver uplifting, melodically rich dancefloor DnB — Synergy and Lights Out are signature tracks balancing groove and energy with accessible melodic intelligence. A respected Dutch voice at the melodic end of the dancefloor spectrum whose consistent output and festival bookings at Rampage and Liquicity demonstrate broad European underground appeal.',
 6, 7, 7, 8,  6, 7, 7,  8, 5, 2),

-- Matrix & Futurebound already in batch 13 — inserting Futurebound solo context as note, using Limewax instead
-- Limewax already in batch 12 — replacing with Calyx
-- Calyx (Nick Scott) — Techstep/Dark DnB, UK, RAM Records, ''Calyx & TeeBee'' duo
('Calyx',                'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'UK producer Nick Scott who built solo credibility on RAM Records before forming the highly successful Calyx & TeeBee duo — a consistently intense technical drum and bass producer whose solo catalogue displays the same precision and dancefloor instinct that would define the duo''s larger body of work. Heavy basslines, precise drum engineering, and a no-compromise approach to DnB production that defined the RAM Records aesthetic of the early 2010s.',
 8, 4, 8, 8,  6, 7, 8,  4, 6, 1),


-- Skeptical already done above — inserting Skepta as a crossover note? No — inserting Intelligent Manners
-- Intelligent Manners — Liquid/Soul DnB, UK, V Recordings/CIA/Creative Source, UK liquid veterans
('Intelligent Manners',  'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'UK production duo who built their reputation on V Recordings, CIA Records, and Creative Source through soulful, harmonically rich liquid DnB rooted in jazz and R&B influences. Command Strange collaboration partner and representatives of the intelligent and liquid DnB traditions — consistent underground output that carries the aesthetic DNA of the Good Looking school of atmospheric, headphone-focused drum and bass production.',
 3, 7, 5, 8,  8, 9, 4,  7, 7, 4);

-- Pola & Bryson already in batch 14 — inserting Dimension instead
