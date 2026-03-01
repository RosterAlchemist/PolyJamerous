-- PolyJamerous: Artist seed data — Batch 16 (T-Z names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Turno (Francesco Moliterno) — Jump Up/Dancefloor, Bedford, DnB Allstars/Crucast, UK#37 ''Rave Out''
('Turno',                'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'Bedford producer whose Rave Out (feat. Skepsis & Charlotte Plank) reached UK Singles Chart #37 in 2023. DnB Allstars Records and Crucast mainstay with a personal story of loss turned into mental health advocacy — partnered with Mind charity and the BBC We Are England documentary, channelling lived experience into high-energy dancefloor DnB with genuine emotional resonance.',
 8, 7, 8, 8,  5, 6, 8,  7, 5, 1),

-- Twisted Individual (Lee Greenaway) — Jump Up/Dancefloor, UK, Grid Recordings founder
('Twisted Individual',   'Drum & Bass + Jungle', 'Jump Up', ARRAY['Jump Up', 'Dancefloor'],
 'British producer and Grid Recordings founder whose satirical, irreverent approach to jump-up DnB — Bandwagon Blues, Heavy Metal, Rusty Sheriffs Badge — earned him cult status across two decades. A distinctive quirky flair fused with heavyweight basslines and cutting-edge production sets him apart; Labour Camp (2025) confirms sustained creative output and international festival presence.',
 8, 6, 8, 8,  4, 6, 9,  5, 6, 1),

-- Ulterior Motive (Davidson + Hepworth) — Dancefloor/Tech, Bournemouth, Metalheadz/Shogun/Guidance
('Ulterior Motive',      'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Deep'],
 'Bournemouth duo James Davidson and Greg Hepworth who released two critically acclaimed albums — The Fourth Wall (2014, Metalheadz) and The Real (2017, Shogun Audio) — before founding Guidance label in 2017 and splitting in 2021 after 18 years. Inspired by Ed Rush & Optical, their technical sophistication and dancefloor-oriented production across Fabric and Sun & Bass residencies left a lasting mark.',
 7, 4, 7, 8,  7, 8, 8,  5, 7, 2),

-- Unglued (Josh Croft) — Dancefloor/Jungle, UK, Hospital Records, ''Interplanetary Radio'' 2021
('Unglued',              'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Jungle'],
 'Hospital Records producer who broke through with Bootstrap Bill and a bootleg of High Contrast''s If We Ever before releasing debut album Interplanetary Radio (2021) — a wide-ranging fusion of jungle, jazz, funk, and hardcore influences. Annie Mac, Andy C, Danny Byrd, and Noisia support confirmed his standing; Fixate and Halogenix remixes of his material underline cross-scene respect.',
 7, 7, 7, 7,  7, 7, 8,  7, 8, 4),

-- Urbandawn (Felipe Wrechiski) — Dancefloor/Melodic DnB, Brazil, Hospital Records, Nike/Red Bull sync
('Urbandawn',            'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'Brazilian producer with classical guitar and audio engineering training whose Come Together (2019) won the Drum & Bass Arena Award for Best Track. Hospital Records and V Recordings releases blend Brazilian soul, orchestral richness, and dancefloor DnB — global sync placements for Nike, Red Bull, and Audi campaigns, and recognition from Noisia, Skrillex, and Pendulum place him at the genre''s international vanguard.',
 7, 7, 8, 8,  7, 7, 7,  7, 6, 3),

-- Villem (Andrew Wilson) — Liquid/Deep DnB, Ipswich, Metalheadz/Dispatch/DREGS Music, Mako duo
('Villem',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Ipswich producer with a deep connection to rave culture whose Metalheadz, Hospital Records, and Dispatch Recordings catalogue emphasises soulful, innovative drum and bass. Playing the Changes album with McLeod on Spearhead Records is an acclaimed collaboration — DREGS Music home base for recent output including KRONOS (2026), with Mako and Zero T as frequent creative partners.',
 4, 7, 6, 8,  7, 8, 6,  7, 7, 4),

-- Voltage (Rouen Wilkins) — Jungle/Dancefloor, UK, Nice N' Decent/Souped Up, Kings of the Rollers member
('Voltage',              'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British producer with approximately 300 releases who spans jump-up, jungle, and deeper drum and bass with analogue synths, reggae influences, and ambient soundscapes. Core member of the Kings of the Rollers supergroup alongside Serum and Bladerunner — solo album Balance Over Symmetry and collaborations with SHY FX, Chimpo, and Stevie Hyper-D illustrate the breadth of a defining modern DnB figure.',
 7, 6, 7, 8,  5, 7, 8,  6, 7, 3),

-- Wax Doctor (Paul Saunders) — Atmospheric/Melodic DnB, Slough, Metalheadz/R&S/Talkin' Loud, ex-footballer
('Wax Doctor',           'Drum & Bass + Jungle', 'Deep', ARRAY['Deep', 'Liquid'],
 'Slough producer and former Crystal Palace and Reading reserve footballer who became a pioneer of melodic, atmospheric drum and bass in the early 1990s. Atmospheric Funk (1995, Talkin'' Loud) and The Spectrum on Metalheadz — synthesising jungle, techno, and jazz into layered, soulful compositions with Alex Reece, establishing the template for contemporary atmospheric DnB production.',
 4, 7, 5, 7,  8, 9, 5,  7, 7, 4),

-- Xample (Gavin Harris) — Dancefloor DnB, London, RAM Records, Loadstar co-founder
('Xample',               'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'London producer who built a solo RAM Records catalogue — Lowdown, Lowlife, and Heaven & Hell established him as a scene presence — before co-founding Loadstar with Ant Miles, the duo achieving Glastonbury and Creamfields bookings and Andy C endorsement on RAM. A cornerstone of early-2010s melodic dancefloor DnB whose drumming background gives his rhythmic work a distinctive human feel.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Zardonic (Federico Ágreda Álvarez) — Crossbreed/Metal DnB, Venezuela, FiXT/Wool Music, masked
('Zardonic',             'Drum & Bass + Jungle', 'Crossbreed', ARRAY['Crossbreed', 'Neurofunk'],
 'Venezuelan producer active since 2001 who pioneered Metal & Bass — fusing industrial metal aggression with drum and bass speed into his signature masked persona. Sound design for the video game Superhot and Arturia/Slate Digital artist presets demonstrate technical breadth; FiXT and Wool Music releases alongside Pythius collaboration Fearless represent one of bass music''s most distinctive cross-genre visions.',
 9, 2, 9, 8,  6, 7, 9,  3, 7, 1),

-- Zero T — Liquid/Soul DnB, Ireland, The North Quarter/Dispatch/Shogun Audio, hip-hop rooted
('Zero T',               'Drum & Bass + Jungle', 'Liquid', ARRAY['Liquid', 'Deep'],
 'Irish drum and bass producer whose soulful, jazz and trip-hop influenced approach — drawing from Massive Attack, Tricky, and Portishead — produces gritty yet warm drum and bass of unusual emotional depth. The North Quarter, Dispatch, Shogun Audio, and C.I.A. credits across decades; the Off Broadway EP on Lenzman''s label and recent Fox collaboration Play Fool EP (Shogun, 2025) confirm sustained creative vitality.',
 4, 6, 6, 8,  8, 8, 6,  7, 7, 5),

-- Zero G — Jungle/Hardcore, UK, Reinforced Records, ''Ganja Man'' 1993 ragga jungle classic
('Zero G',               'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK jungle producer best known for Ganja Man (1993, Reinforced Records) — one of the definitive early ragga jungle anthems — alongside Lennie De-Ice. Reinforced Records sessions and collaborations with early 1990s rave and jungle scene figures place Zero G among the first generation of producers who fused Jamaican soundsystem culture with breakbeat science.',
 8, 7, 6, 7,  4, 7, 8,  7, 7, 5),

-- Zombie Cats (Fehr + Deschamp) — Neurofunk/Tech, Germany/Australia, Eatbrain/Dispatch/Liquicity
('Zombie Cats',          'Drum & Bass + Jungle', 'Neurofunk', ARRAY['Neurofunk', 'Dancefloor'],
 'German-Australian duo formed in 2014 whose Tech Dreams album (2023) balances cinematic atmospheres with driving, tech-inflected neurofunk basslines. Eatbrain, Dispatch Recordings, and Liquicity releases — collaborations with Joe Ford and hip-hop artist The Game demonstrate unusual creative range — global touring across Europe, Asia, and Australia confirms growing international footprint.',
 7, 4, 8, 8,  6, 7, 8,  5, 7, 1),

-- Shapeshifter — Dancefloor/Live DnB, New Zealand, Kasino Records/Shogun Audio, live band
('Shapeshifter',         'Drum & Bass + Jungle', 'Dancefloor', ARRAY['Dancefloor', 'Liquid'],
 'New Zealand''s pre-eminent drum and bass live act who blend driving DnB rhythms with live musicianship — bass guitar, keyboards, and vocals alongside electronic production. Kasino Records founders whose Upbeats and Soulstice albums established them as Australasia''s most credible DnB export; regular Shogun Audio collaborators and festival headliners across Shambhala, Outlook, and Glastonbury.',
 7, 7, 7, 8,  7, 8, 7,  7, 6, 7);

-- Tim Reaper — Jungle/Footwork, London, Shall Not Fade/Lobster Theremin/Exit Records, modern jungle
('Tim Reaper',           'Drum & Bass + Jungle', 'Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'London producer who emerged in the 2010s revival of raw, sample-based jungle and became a key figure bridging classic rave aesthetics with footwork and experimental club music. Shall Not Fade, Lobster Theremin, and Exit Records releases — intricate Amen break manipulation, heavy sub pressure, and unpredictable structural choices make him one of the most exciting voices in the current jungle renaissance.',
 7, 6, 6, 7,  5, 8, 8,  5, 9, 2);
