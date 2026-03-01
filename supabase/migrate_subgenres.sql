-- PolyJamerous: Migrate subgenre (TEXT) → subgenres (TEXT[])
-- Canonical taxonomy source: reddit.com/r/DnB/comments/m2wvz2
--
-- Run order:
--   1. This file  — adds the subgenres column
--   2. update_subgenres_canonical.sql — per-artist assignments
--   3. (optional) uncomment DROP COLUMN below once verified

-- 1. Add new column
ALTER TABLE artists ADD COLUMN IF NOT EXISTS subgenres TEXT[];

-- 2. Run update_subgenres_canonical.sql for accurate per-artist assignments.
--    (Generic CASE mapping replaced by individual artist evaluation.)

-- 3. Drop old column once you've verified the migration looks correct
-- ALTER TABLE artists DROP COLUMN subgenre;
