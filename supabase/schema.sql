-- PolyJamerous: Supabase schema
-- Run this in the Supabase SQL editor before seeding data.

CREATE TABLE IF NOT EXISTS artists (
    id                  BIGSERIAL PRIMARY KEY,
    name                TEXT        NOT NULL,
    genre               TEXT        NOT NULL,   -- parent genre (e.g. "Drum & Bass + Jungle")
    subgenre            TEXT,
    dna                 TEXT,                   -- dash-joined scores for quick display
    arousal             SMALLINT    CHECK (arousal             BETWEEN 1 AND 10),
    valence             SMALLINT    CHECK (valence             BETWEEN 1 AND 10),
    timbral_brightness  SMALLINT    CHECK (timbral_brightness  BETWEEN 1 AND 10),
    rhythmic_regularity SMALLINT    CHECK (rhythmic_regularity BETWEEN 1 AND 10),
    harmonic_complexity SMALLINT    CHECK (harmonic_complexity BETWEEN 1 AND 10),
    spatial_dimension   SMALLINT    CHECK (spatial_dimension   BETWEEN 1 AND 10),
    articulation        SMALLINT    CHECK (articulation        BETWEEN 1 AND 10),
    melodic_salience    SMALLINT    CHECK (melodic_salience    BETWEEN 1 AND 10),
    structural_entropy  SMALLINT    CHECK (structural_entropy  BETWEEN 1 AND 10),
    acousticness        SMALLINT    CHECK (acousticness        BETWEEN 1 AND 10)
);

-- One row per (dimension × genre).
-- genre = 'Universal' stores the canonical description and metrics with no anchors.
-- genre = a specific parent genre stores low/mid/high artist anchors.
CREATE TABLE IF NOT EXISTS musical_dimensions (
    id              BIGSERIAL   PRIMARY KEY,
    dimension_name  TEXT        NOT NULL,
    genre           TEXT        NOT NULL,
    description     TEXT,       -- populated on 'Universal' rows
    metrics         TEXT,       -- populated on 'Universal' rows
    low_anchor      TEXT,       -- populated on genre-specific rows
    mid_anchor      TEXT,
    high_anchor     TEXT,
    UNIQUE (dimension_name, genre)
);
