-- PolyJamerous: initial seed data
-- Run after schema.sql in the Supabase SQL editor.

-- -------------------------------------------------------------------------
-- musical_dimensions: Universal rows (description + metrics, no anchors)
-- -------------------------------------------------------------------------
INSERT INTO musical_dimensions (dimension_name, genre, description, metrics) VALUES
(
    'Arousal', 'Universal',
    'The physiological activation level the music induces. High arousal triggers the sympathetic nervous system — dense note clusters, punishing dynamics, high BPM — while low arousal is sedating and expansive. Maps to the vertical axis of Russell''s circumplex model of affect.',
    'Peak loudness (LUFS), tempo (BPM), note/event density per bar.'
),
(
    'Valence', 'Universal',
    'The perceived emotional sign of the music — positive/triumphant vs. negative/ominous. Primarily driven by harmonic choices, though timbre and context modulate it. Note: minor = sad is a Western convention; the dimension measures perceived affect, not just key.',
    'Major/minor mode, consonance vs. dissonance ratio, harmonic tension and release patterns.'
),
(
    'Timbral Brightness', 'Universal',
    'The perceived edge or sharpness of the sound. Technically the weighted mean frequency of the power spectrum — high brightness means more energy in the upper frequencies. A cello is dark; a distorted lead synth or crashing cymbal is extremely bright.',
    'Spectral centroid, high-frequency energy ratio, presence of upper harmonics (above 4kHz).'
),
(
    'Rhythmic Regularity', 'Universal',
    'How confidently a listener can locate the beat. High regularity = locked grid, 4-on-the-floor, clappable. Low regularity = rubato, polyrhythmic layering, or deliberately erratic timing. Separates groove-based music from abstract or improvisational forms.',
    'Beat salience, syncopation index, degree of polyrhythm, timing variance relative to grid.'
),
(
    'Harmonic Complexity', 'Universal',
    'The density and sophistication of the musical language. Simple = 3-chord progressions with root-position triads; complex = extended chords (7th, 9th, 13th), chromaticism, modal interchange, or atonality. Measures how much harmonic vocabulary is deployed.',
    'Chord extension degree, chromaticism ratio, modulation frequency, dissonance density.'
),
(
    'Spatial Dimension', 'Universal',
    'The perceived physical size of the sonic space. A dry, close-miked acoustic guitar scores low; a cavernous ambient pad with 8-second reverb tails scores high. Also captures stereo width and the sense of depth in the mix.',
    'Reverb decay time (RT60), stereo width (correlation coefficient), delay density, perceived room size.'
),
(
    'Articulation', 'Universal',
    'The shape of individual notes and sounds — how they begin and end. Technically analogous to ADSR envelope design. Staccato (plucked string, short transient) scores low; legato (bowed strings, long flowing phrases) scores high. Determines whether the texture feels punchy or liquid.',
    'Transient attack time, sustain-to-decay ratio, note overlap (legato) vs. gap (staccato).'
),
(
    'Melodic Salience', 'Universal',
    'How much a distinct, singable melodic line dominates the listener''s attention. High salience = melody is primary (pop hook, classical theme). Low salience = melody is absent or dissolved into texture (techno, drone, noise). Measures foreground vs. background hierarchy.',
    'Pitch contour clarity, melodic interval range, thematic repetition rate, melody-to-texture mix ratio.'
),
(
    'Structural Entropy', 'Universal',
    'How much the music transforms across its runtime. Low entropy = hypnotic loop-based structure with minimal change (minimal techno, drone). High entropy = progressive journey with distinct sections, dramatic shifts, and developmental variation (prog rock, IDM, classical sonata form).',
    'Section transition frequency, rate of change in instrumentation/dynamics, information density over time.'
),
(
    'Acousticness', 'Universal',
    'The perceived degree to which sounds are natural/human vs. synthetic/machine-made. Captures organic resonance, performance imperfections (vibrato drift, timing micro-variations, breath noise) vs. mechanical precision and purely electronic timbres.',
    'Presence of inharmonic partials, timing jitter vs. quantisation, organic resonance signatures, acoustic room coupling.'
);

-- -------------------------------------------------------------------------
-- musical_dimensions: Drum & Bass + Jungle genre anchors
-- -------------------------------------------------------------------------
INSERT INTO musical_dimensions (dimension_name, genre, low_anchor, mid_anchor, high_anchor) VALUES
('Arousal',             'Drum & Bass + Jungle', 'Phaeleh',      'Chase & Status', 'A.M.C'),
('Valence',             'Drum & Bass + Jungle', 'Noisia',        'Pendulum',       'Netsky'),
('Timbral Brightness',  'Drum & Bass + Jungle', 'Calibre',       'Sub Focus',      'Mefjus'),
('Rhythmic Regularity', 'Drum & Bass + Jungle', 'Goldie',        'Alix Perez',     'Sub Focus'),
('Harmonic Complexity', 'Drum & Bass + Jungle', 'Basstripper',   'Wilkinson',      'TeeBee'),
('Spatial Dimension',   'Drum & Bass + Jungle', 'Bou',           'Metrik',         'Phaeleh'),
('Articulation',        'Drum & Bass + Jungle', 'Hybrid Minds',  'Culture Shock',  'Basstripper'),
('Melodic Salience',    'Drum & Bass + Jungle', 'A.M.C',         'Calibre',        'Wilkinson'),
('Structural Entropy',  'Drum & Bass + Jungle', 'Sigma',         'Bensley',        'Camo & Krooked'),
('Acousticness',        'Drum & Bass + Jungle', 'Noisia',        'Justin Hawkes',  'Rudimental');

-- -------------------------------------------------------------------------
-- artists: Drum & Bass + Jungle
-- Columns: name, genre, subgenre, dna,
--          arousal, valence, timbral_brightness, rhythmic_regularity,
--          harmonic_complexity, spatial_dimension, articulation,
--          melodic_salience, structural_entropy, acousticness
-- -------------------------------------------------------------------------
INSERT INTO artists
    (name, genre, subgenre, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES
('Basstripper',    'Drum & Bass + Jungle', 'Jump-Up',           '9-6-8-9-2-4-9-3-4-2',   9, 6, 8, 9, 2, 4, 9, 3, 4, 2),
('MUZZ',           'Drum & Bass + Jungle', 'Dancefloor/Neuro',  '9-5-8-8-7-7-8-6-8-3',   9, 5, 8, 8, 7, 7, 8, 6, 8, 3),
('Grafix',         'Drum & Bass + Jungle', 'Dancefloor/Tech',   '8-7-9-8-6-6-8-7-7-2',   8, 7, 9, 8, 6, 6, 8, 7, 7, 2),
('Pendulum',       'Drum & Bass + Jungle', 'Dancefloor/Rock',   '9-6-7-9-6-8-7-8-8-4',   9, 6, 7, 9, 6, 8, 7, 8, 8, 4),
('Sigma',          'Drum & Bass + Jungle', 'Dancefloor/Pop',    '6-8-6-9-5-7-6-9-5-4',   6, 8, 6, 9, 5, 7, 6, 9, 5, 4),
('TeeBee',         'Drum & Bass + Jungle', 'Neurofunk',         '8-4-9-6-9-8-7-4-9-3',   8, 4, 9, 6, 9, 8, 7, 4, 9, 3),
('Sub Focus',      'Drum & Bass + Jungle', 'Dancefloor',        '7-7-8-9-6-7-7-8-6-3',   7, 7, 8, 9, 6, 7, 7, 8, 6, 3),
('Kumarion',       'Drum & Bass + Jungle', 'Heavy/Trap',        '9-4-8-8-3-5-9-4-5-2',   9, 4, 8, 8, 3, 5, 9, 4, 5, 2),
('Feint',          'Drum & Bass + Jungle', 'Melodic/Liquid',    '6-7-7-8-6-6-7-8-6-3',   6, 7, 7, 8, 6, 6, 7, 8, 6, 3),
('Rudimental',     'Drum & Bass + Jungle', 'Liquid/Soul',       '4-8-5-7-7-8-5-9-7-7',   4, 8, 5, 7, 7, 8, 5, 9, 7, 7),
('Justin Hawkes',  'Drum & Bass + Jungle', 'Experimental',      '5-5-6-7-7-7-7-6-8-5',   5, 5, 6, 7, 7, 7, 7, 6, 8, 5),
('Goldie',         'Drum & Bass + Jungle', 'Jungle',            '4-4-7-5-8-9-5-3-9-4',   4, 4, 7, 5, 8, 9, 5, 3, 9, 4),
('Hybrid Minds',   'Drum & Bass + Jungle', 'Liquid',            '3-7-4-9-6-8-4-8-5-5',   3, 7, 4, 9, 6, 8, 4, 8, 5, 5),
('Phaeleh',        'Drum & Bass + Jungle', 'Ambient/Garage',    '2-6-3-7-7-10-3-6-7-6',  2, 6, 3, 7, 7,10, 3, 6, 7, 6),
('Noisia',         'Drum & Bass + Jungle', 'Neurofunk',         '10-3-10-6-9-9-9-2-10-1',10, 3,10, 6, 9, 9, 9, 2,10, 1),
('Metrik',         'Drum & Bass + Jungle', 'Dancefloor',        '8-7-9-9-7-7-8-8-7-2',   8, 7, 9, 9, 7, 7, 8, 8, 7, 2),
('Alix Perez',     'Drum & Bass + Jungle', 'Deep/Liquid',       '3-5-5-7-8-8-5-5-8-6',   3, 5, 5, 7, 8, 8, 5, 5, 8, 6),
('Netsky',         'Drum & Bass + Jungle', 'Liquid/Pop',        '5-8-7-9-5-7-6-9-5-3',   5, 8, 7, 9, 5, 7, 6, 9, 5, 3),
('Chase & Status', 'Drum & Bass + Jungle', 'Jungle/Dancefloor', '7-5-7-8-6-6-7-6-7-5',   7, 5, 7, 8, 6, 6, 7, 6, 7, 5),
('Bou',            'Drum & Bass + Jungle', 'Jump-Up',           '9-5-8-9-3-4-9-3-4-2',   9, 5, 8, 9, 3, 4, 9, 3, 4, 2),
('Dimension',      'Drum & Bass + Jungle', 'Dancefloor',        '7-7-8-9-5-7-7-8-6-3',   7, 7, 8, 9, 5, 7, 7, 8, 6, 3),
('A.M.C',          'Drum & Bass + Jungle', 'Neurofunk',         '10-4-9-8-7-6-9-2-8-1',  10, 4, 9, 8, 7, 6, 9, 2, 8, 1),
('Hedex',          'Drum & Bass + Jungle', 'Jump-Up',           '9-5-9-9-3-5-9-3-4-2',   9, 5, 9, 9, 3, 5, 9, 3, 4, 2),
('Calibre',        'Drum & Bass + Jungle', 'Deep/Liquid',       '2-7-4-8-8-7-4-6-7-6',   2, 7, 4, 8, 8, 7, 4, 6, 7, 6),
('Bensley',        'Drum & Bass + Jungle', 'Experimental/Tech', '6-5-8-7-8-8-7-7-9-3',   6, 5, 8, 7, 8, 8, 7, 7, 9, 3),
('S.P.Y',          'Drum & Bass + Jungle', 'Liquid/Dark',       '6-4-6-8-6-7-6-5-6-4',   6, 4, 6, 8, 6, 7, 6, 5, 6, 4),
('Kanine',         'Drum & Bass + Jungle', 'Dancefloor',        '8-6-8-9-5-6-8-6-6-2',   8, 6, 8, 9, 5, 6, 8, 6, 6, 2),
('Wilkinson',      'Drum & Bass + Jungle', 'Dancefloor/Pop',    '6-8-7-9-5-7-6-9-5-4',   6, 8, 7, 9, 5, 7, 6, 9, 5, 4),
('Camo & Krooked', 'Drum & Bass + Jungle', 'Dancefloor/Minimal','8-6-9-7-9-8-8-7-10-2',  8, 6, 9, 7, 9, 8, 8, 7,10, 2),
('Mefjus',         'Drum & Bass + Jungle', 'Neurofunk',         '10-3-10-6-9-9-9-2-10-1',10, 3,10, 6, 9, 9, 9, 2,10, 1),
('Culture Shock',  'Drum & Bass + Jungle', 'Dancefloor',        '7-7-8-9-7-7-7-8-7-3',   7, 7, 8, 9, 7, 7, 7, 8, 7, 3);
