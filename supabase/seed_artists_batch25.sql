-- PolyJamerous: Artist seed data — Batch 25 (gap-fill: C-W names, global artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES


-- Ill Truth — Deep/Liquid DnB, Bristol, CIA/Shogun Audio/Overview, ''Party''s Over'' 2024 LP
('Ill Truth',            'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Dancefloor'],
 'Bristol duo Haden and Jay who emerged in 2016 and built a catalogue of deep, rolling drum and bass with signature atmospheric layering and soulful dancefloor energy across CIA, Shogun Audio, and Overview Music. Party''s Over LP (2024) and DLR/Melinki collaboration partners — Boomtown and Fabric festival performers whose music bridges the liquid warmth of the Bristol scene with harder underground dancefloor demands.',
 6, 6, 7, 8,  7, 8, 7,  6, 7, 2),

-- Parly B — Jungle/Ragga MC, Doncaster, Scotch Bonnet/Liondub/Serial Killaz/Born on Road, Glastonbury
('Parly B',              'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Doncaster MC who emerged in 2013 with In a Competition and built a multi-genre reputation across reggae, dancehall, and jungle through Scotch Bonnet Records, Liondub International, Serial Killaz, and Born on Road. Lyrics Spree (2018 debut album) and festival appearances at Glastonbury, Boomtown, and Outlook across three continents confirm his reputation as one of DnB''s most versatile and internationally bookable vocal artists.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 5),



-- ST Files (Luca Antonioli) — Liquid/Soul DnB, Italy, Soul:R/Metalheadz/31 Records, Italian liquid pioneer
('ST Files',             'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Italian producer Luca Antonioli who became one of Soul:R''s most celebrated artists under Marcus Intalex''s wing — bringing Italian musical sensibility to soulful, jazz-influenced liquid drum and bass through Metalheadz and 31 Records. Total Science and Marcus Intalex collaboration partner whose melodically sophisticated productions carry a warmth and harmonic richness that elevates them beyond conventional liquid DnB into genuinely soulful composition.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 5),

-- Specimen A already covered — inserting Charlotte Haining instead
-- Charlotte Haining — Vocal/Liquid DnB, UK, Shogun Audio/Hospital/BCee collab, female vocalist
('Charlotte Haining',    'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British vocalist whose collaborations with BCee on Spearhead Records, Flava D on Hospital Records, and across the liquid DnB underground have established her as one of the genre''s most sought-after voices. Warm, emotionally expressive vocals that anchor liquid and melodic DnB productions — an artist whose vocal craft elevates the emotional register of collaborative tracks without ever overwhelming the rhythmic architecture beneath.',
 5, 8, 7, 8,  6, 8, 6,  9, 5, 5),


-- Dwarde — Dark/Experimental DnB, UK, Exit Records/Critical, atmospheric minimal DnB
('Dwarde',               'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Halftime'],
 'UK producer whose Exit Records and Critical Music releases explore the darker, more minimal edges of drum and bass — austere productions that prioritise atmosphere, texture, and tension over conventional energy dynamics. A genuinely experimental voice in the scene whose music operates in the space between DnB, techno, and dark electronica; patient, structurally adventurous work respected across the underground for uncompromising artistic intent.',
 5, 3, 6, 6,  7, 9, 7,  4, 9, 2),

-- Chase & Status already in DB via seed.sql — inserting Chimpo instead
-- Chimpo (Matthew Lambert) — Jungle/Grime, Manchester, Shall Not Fade/Exit, Northern UK bass culture
('Chimpo',               'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'Manchester producer Matthew Lambert whose Shall Not Fade and Exit Records output fuses jungle, grime, and experimental club music from a distinctly Northern English perspective — sampling culture, breakbeat manipulation, and a playful irreverence that channels the DIY energy of Manchester''s bass music scene. A respected voice in the jungle underground whose catalogue straddles multiple bass genres without sitting comfortably in any single one.',
 7, 6, 6, 7,  5, 8, 8,  5, 8, 2),

-- Indivision (Lars van Grinsven) — Liquid/Dancefloor DnB, Netherlands, Liquicity/Fokuz, Dutch liquid star
('Indivision',           'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'Dutch producer Lars van Grinsven who became one of Liquicity Records'' most prominent artists — melodic, uplifting liquid DnB defined by euphoric chord progressions, clean production, and consistent dancefloor energy. Fokuz Recordings and international festival bookings at Liquicity Festival confirm his status as a leading figure in European melodic DnB whose approachable, radio-friendly sound bridges underground credibility with broad audience appeal.',
 6, 8, 7, 8,  6, 7, 7,  9, 5, 2),

-- Ekko & Sidetrack — Liquid/Dancefloor DnB, UK, Hospital/Shogun Audio, melodic duo
('Ekko & Sidetrack',     'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo whose Hospital Records and Shogun Audio releases deliver consistently warm, melodic liquid DnB — rolling basslines, emotive chord work, and clean production across a growing catalogue that has earned them Radio 1 support and major festival bookings. A newer act building momentum at the accessible, emotionally resonant end of the contemporary liquid DnB spectrum with genuine potential for sustained scene impact.',
 6, 7, 7, 8,  6, 7, 7,  8, 5, 2),

-- Paul T & Edward Oberon — Liquid/Dancefloor DnB, UK, Hospital Records, melodic producers
('Paul T & Edward Oberon', 'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Dancefloor'],
 'British duo whose Hospital Records home and melodic, polished liquid DnB has earned them consistent placement across Hospitality compilations and BBC Radio 1Xtra support. Rolling basslines, warm melodies, and confident song structures — a reliable and likeable presence on the contemporary Hospital roster whose productions reflect the label''s characteristic blend of underground credibility and accessible emotional warmth.',
 5, 7, 7, 8,  6, 7, 6,  8, 5, 3);


-- Impish — Dancefloor/Liquid DnB, UK, Hospital Records/Metalheadz, emerging scene talent
('Impish',               'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'British producer signed to Hospital Records and Metalheadz whose melodic, dancefloor-oriented drum and bass has established him as a promising contemporary scene voice — well-crafted rolling productions with accessible hooks and precise sound design. Hospitality On The Beach and Hospital30 anniversary performer with an upward trajectory among Hospital''s next generation of flagship artists.',
 6, 7, 7, 8,  6, 7, 7,  7, 5, 2);
