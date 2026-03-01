-- PolyJamerous: Artist seed data — Batch 23 (gap-fill: DRS, MCs, international artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- DRS (Delroy Pottinger) — Soul MC, Manchester, Good Looking/DnB Allstars, Calibre/LTJ Bukem collaborator
('DRS',                  'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Manchester MC Delroy Pottinger who emerged on Good Looking Records as a key collaborator with LTJ Bukem and Calibre — Constellation, Horizons, and a decades-long catalogue of deeply personal, poetic vocal performances that transcend conventional MC styles. Mid Mic Crisis and The Blue Hour albums showcase profound lyricism and emotional vulnerability; one of drum and bass''s most respected and distinctive vocal voices across three decades.',
 4, 7, 5, 8,  7, 9, 5,  8, 7, 5),


-- Inja — Jungle/Hip-Hop MC, UK, V Recordings/Hospital/Kings of the Rollers, spoken word and DnB fusion
('Inja',                 'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'UK MC, rapper, poet, and writer whose V Recordings, Hospital Records, and Kings of the Rollers releases blend hip-hop lyricism with DnB dancefloor energy — Gunfinger Fam with Serum and Voltage, Blow Them Away, and Red Eyes demonstrate versatility across jungle and contemporary DnB. Works with educational programmes on creative writing and social advocacy — a sharp, socially conscious voice within the DnB community.',
 7, 6, 6, 8,  5, 7, 8,  7, 6, 4),


-- Navigator — Jungle MC/Sound System, London, Liondub/Jungle Cakes/Dub Shotta, reggae-roots veteran
('Navigator',            'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London MC and sound system veteran whose roots in early 1990s jungle and reggae culture have sustained a career across Liondub International, Jungle Cakes, and Dub Shotta spanning three decades. Benny Page, D Double E, and Harry Shotta collaboration partner whose reggae-informed lyricism and deep sound system knowledge keep him grounded in the authentic jungle tradition while maintaining a prolific contemporary release schedule.',
 7, 7, 6, 8,  4, 7, 8,  7, 6, 5),



-- Wrec (James Wrec) — Jungle/Dancefloor, UK, Chronic Records/Jungle Fever, south London rave scene veteran
('Wrec',                 'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'South London DJ and producer from the early 1990s Chronic Records and Jungle Fever rave circuit whose loyal underground following and consistent dancefloor output made him a respected figure in the classic jungle scene. A south London rave culture veteran who contributed to the dense network of artists, labels, and events that made the jungle movement a genuinely community-rooted phenomenon in its formative years.',
 7, 6, 6, 8,  4, 7, 8,  6, 6, 4),


-- Trace (Lee Ford) — Techstep/Darkstep, UK, No U Turn/Metalheadz, ''Shadow Boxing'' 1996, Rollers co-founder
('Trace',                'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Techstep'],
 'UK producer Lee Ford and Rollers co-founder whose Shadow Boxing (No U Turn, 1996) and Metalheadz releases helped architect the dark, mechanistic techstep sound. A pioneer of the intelligent-to-dark DnB transition who forged the template for late-90s technical drum and bass — No U Turn label stalwart alongside DJ Trace, Nico, and Ed Rush/Optical; his sparse, haunting productions remain touchstones of the genre''s most experimental period.',
 8, 2, 7, 8,  7, 8, 9,  3, 8, 1),

-- Random Movement already in batch 14 — replacing with Scar
-- Script (David Whiting) — Experimental/Autonomic DnB, UK, Exit Records/SCAR, dBridge collaborator
('Script',               'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Halftime'],
 'UK producer David Whiting whose Exit Records catalogue and SCAR duo (with Survival) represent some of drum and bass''s most exploratory output — The Orkyd Project (2016) blending autonomic, halftime, and experimental DnB textures. An uncompromising sonic artist who operates at the genre''s experimental margins, prioritising long-form textural exploration over conventional energy arcs; respected across the underground for genuine artistic risk-taking.',
 4, 4, 6, 6,  8, 9, 6,  4, 9, 2),

-- Spectrasoul already in batch 19 — replacing with Logistics (already batch 09) — inserting Audio instead
-- Wait — Audio was already listed in batch 01 — inserting Jubei instead

-- Harry Shotta — Ragga/Dancefloor MC, UK, Benny Page/Jungle Cakes, 2026 Battle Champion
('Harry Shotta',         'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK MC and freestyle battle champion whose razor-sharp lyrical delivery, impressive syllabic speed, and Benny Page collaboration partnership have made him a formidable presence in ragga jungle and dancefloor DnB. Jungle Cakes and Serial Killaz artist — viral freestyle performances and consistent festival bookings at Boomtown and Born On Road confirm a growing reputation as one of drum and bass''s most technically accomplished and energetic live MCs.',
 8, 7, 7, 8,  4, 7, 9,  7, 5, 3),

-- SP:MC (Steve Prescott) — Jungle MC/Liquid, UK, Metalheadz/Hospital/Shogun, Etherwood and Calibre host
('SP:MC',                'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'UK MC Steve Prescott who has become one of drum and bass''s most respected hosting voices — a Metalheadz, Hospital Records, and Shogun Audio fixture who brings warmth and sophistication to liquid and deeper DnB sets. Etherwood, Calibre, and Seba collaboration partner whose understated, melody-conscious lyrical style suits the emotional register of liquid DnB far better than harder jump-up; a trusted ambassador between producers and audiences at Outlook, Sun & Bass, and Fabric.',
 5, 7, 6, 8,  6, 8, 7,  7, 6, 4);

-- Mele (Melanie Griffiths) — Dancefloor/Future Garage, UK, Hospital Records, female DJ and producer
('Mele',                 'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British DJ, producer, and educator who came from a non-music background and built a profile through the London scene before joining Hospital Records — an advocate for women and LGBTQ+ communities in electronic music. Energetic dancefloor DnB with warm melodic sensibilities and consistent festival bookings; works as a music technology tutor alongside production career, representing the contemporary Hospital sound''s commitment to diversity and accessibility.',
 7, 7, 7, 8,  5, 7, 7,  7, 5, 2);
