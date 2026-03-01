-- PolyJamerous: Per-artist canonical subgenre assignment
-- Run AFTER migrate_subgenres.sql (which adds the subgenres TEXT[] column).
-- Each artist is evaluated individually against the canonical taxonomy.
--
-- Taxonomy: Jungle · Dancefloor · Liquid · Neurofunk · Jump Up · Crossbreed
--           Deep · Halftime · Drumstep · Sambass · Ragga DnB
-- Sub-subgenres: Atmospheric Jungle · Ragga Jungle · Drumfunk · Breakcore
--                Techstep · Technoid · Darkstep
--                Leftfield Bass · 170 · Autonomic

UPDATE artists AS a
SET subgenres = v.sg
FROM (VALUES

    -- ── SEED.SQL (original 31) ────────────────────────────────────────────

    -- Jump Up specialist; pure dancefloor chaos
    ('Basstripper',    ARRAY['Jump Up']),
    -- Bridges hard neurofunk with dancefloor energy
    ('MUZZ',           ARRAY['Neurofunk', 'Dancefloor']),
    -- Technical dancefloor; sharp sound design, festival-ready
    ('Grafix',         ARRAY['Dancefloor']),
    -- Rock-band DnB crossover; unambiguously Dancefloor
    ('Pendulum',       ARRAY['Dancefloor']),
    -- Pop-crossover DnB; Radio 1 dancefloor
    ('Sigma',          ARRAY['Dancefloor']),
    -- Founding neurofunk voice; RAM Records veteran
    ('TeeBee',         ARRAY['Neurofunk']),
    -- Polished festival dancefloor; slick melodic hooks
    ('Sub Focus',      ARRAY['Dancefloor']),
    -- Heavy trap-influenced jump-up energy
    ('Kumarion',       ARRAY['Jump Up']),
    -- Melodic liquid with accessible warmth
    ('Feint',          ARRAY['Liquid']),
    -- Soul and R&B woven into liquid; live instrumentation
    ('Rudimental',     ARRAY['Liquid']),
    -- Orchestral melodic liquid; Hospital cinematic style
    ('Justin Hawkes',  ARRAY['Liquid']),
    -- Jungle father; Metalheadz; Timeless is atmospheric jungle
    ('Goldie',         ARRAY['Jungle', 'Atmospheric Jungle']),
    -- Deep rolling liquid; velvet textures
    ('Hybrid Minds',   ARRAY['Liquid']),
    -- Atmospheric deep; half-time pulse; post-dubstep adjacency
    ('Phaeleh',        ARRAY['Deep', 'Liquid']),
    -- Neurofunk apex; Maximum Sorrow is a benchmark
    ('Noisia',         ARRAY['Neurofunk']),
    -- Bright, technical dancefloor; melodic hooks
    ('Metrik',         ARRAY['Dancefloor']),
    -- Deep atmospheric liquid; Shackleton / Exit era influence
    ('Alix Perez',     ARRAY['Deep', 'Liquid']),
    -- Liquid with strong pop-crossover melodic identity
    ('Netsky',         ARRAY['Liquid', 'Dancefloor']),
    -- Big-room dancefloor; jungle heritage in DNA
    ('Chase & Status', ARRAY['Dancefloor', 'Jungle']),
    -- Jump Up king; Bou is the genre's defining modern voice
    ('Bou',            ARRAY['Jump Up']),
    -- Polished mainstream dancefloor; FM-ready hooks
    ('Dimension',      ARRAY['Dancefloor']),
    -- Hard neurofunk-leaning dancefloor; relentless energy
    ('A.M.C',          ARRAY['Neurofunk', 'Dancefloor']),
    -- Jump Up; DJ Hype endorsed high-energy impact
    ('Hedex',          ARRAY['Jump Up']),
    -- Liquid/deep master; the genre's most refined low-end voice
    ('Calibre',        ARRAY['Liquid', 'Deep']),
    -- Technical dancefloor; RAM Records progressive edge
    ('Bensley',        ARRAY['Dancefloor', 'Neurofunk']),
    -- Dark-edged liquid; Hospital / Metalheadz crossover
    ('S.P.Y',          ARRAY['Liquid']),
    -- Straight dancefloor energy; festival staple
    ('Kanine',         ARRAY['Dancefloor']),
    -- Pop-dancefloor crossover; chart-ready melodic DnB
    ('Wilkinson',      ARRAY['Dancefloor']),
    -- Progressive melodic; liquid warmth meets dancefloor ambition
    ('Camo & Krooked', ARRAY['Liquid', 'Dancefloor']),
    -- Neurofunk heavyweight; peak technical aggression
    ('Mefjus',         ARRAY['Neurofunk']),
    -- High-energy melodic dancefloor
    ('Culture Shock',  ARRAY['Dancefloor']),

    -- ── BATCH 01 ─────────────────────────────────────────────────────────

    -- Jungle nostalgia meets modern festival energy
    ('4am Kru',          ARRAY['Jungle', 'Dancefloor']),
    -- Jazz-fusion Jungle pioneers; Reinforced Records; intelligent jungle
    ('4hero',            ARRAY['Atmospheric Jungle', 'Jungle']),
    -- Autonomic/post-minimal; Exit Records; deep introspective DnB
    ('Abstract Elements', ARRAY['Autonomic', 'Halftime']),
    -- Deep melodic liquid; contemplative atmospherics
    ('Actraiser',        ARRAY['Liquid']),
    -- Early jungle architect; jazz-soul warmth; Metropolis is a classic
    ('Adam F',           ARRAY['Jungle', 'Liquid']),
    -- Eastern European neurofunk precision; Eatbrain's heavy artillery
    ('Agressor Bunx',    ARRAY['Neurofunk']),
    -- Neurofunk/techstep hybrid; dark intricate rhythms
    ('Airstrike',        ARRAY['Neurofunk', 'Techstep']),
    -- US DnB pioneer; wide-ranging but primarily dancefloor-oriented
    ('AK1200',           ARRAY['Dancefloor', 'Neurofunk']),
    -- Founding liquid voice; Pulp Fiction is genre canon
    ('Alex Reece',       ARRAY['Liquid']),
    -- The definitive DnB DJ; pan-genre but dancefloor-primary
    ('Andy C',           ARRAY['Dancefloor']),
    -- Classical-trained melodic liquid; festival uplift
    ('Andromedik',       ARRAY['Liquid', 'Dancefloor']),
    -- Jump Up specialists; Playaz Recordings' heavy hitters
    ('Annix',            ARRAY['Jump Up']),
    -- Jungle founding father; Urban Takeover dancefloor energy
    ('Aphrodite',        ARRAY['Jungle', 'Dancefloor']),
    -- Neurofunk heavyweight; Virus/Snake Pit precision
    ('Audio',            ARRAY['Neurofunk']),

    -- ── BATCH 02 ─────────────────────────────────────────────────────────

    -- Soulful liquid; Hospital/Soul:r emotional depth
    ('Anile',                ARRAY['Liquid']),
    -- Autonomic pioneer; cinematic breakbeat introspection
    ('ASC',                  ARRAY['Autonomic', 'Halftime']),
    -- Nordic atmospheric liquid; Soulvent/Spearhead depth
    ('Askel',                ARRAY['Liquid']),
    -- LTJ Bukem-influenced deep soulful liquid
    ('Atlantic Connection',  ARRAY['Liquid']),
    -- Beautiful Lies era melodic liquid; broader than pure liquid
    ('B-Complex',            ARRAY['Liquid', 'Dancefloor']),
    -- Jazz/soul-infused cinematic liquid; Science Fiction LP
    ('Bachelors of Science', ARRAY['Liquid']),
    -- Foundational dark/technical DnB; predates neurofunk taxonomy
    ('Bad Company UK',       ARRAY['Techstep', 'Neurofunk']),
    -- Soulful liquid craftsman; Spearhead Records
    ('BCee',                 ARRAY['Liquid']),
    -- Dark technical Metalheadz sound; neuro-adjacent dancefloor
    ('Benny L',              ARRAY['Neurofunk', 'Dancefloor']),
    -- Ragga jungle specialist; dancehall/dub/DnB fusion
    ('Benny Page',           ARRAY['Jungle', 'Ragga Jungle']),
    -- Neurofunk concept-artist; dystopian cinematic sound design
    ('Billain',              ARRAY['Neurofunk']),
    -- Early jungle pioneer; Art of Noise Records raw energy
    ('Bizzy B',              ARRAY['Jungle']),
    -- Cinematic Dutch neurofunk; Blackout Music NL
    ('Black Sun Empire',     ARRAY['Neurofunk']),

    -- ── BATCH 03 ─────────────────────────────────────────────────────────

    -- Jungle pioneer into contemporary DnB; Music Takes You
    ('Blame',            ARRAY['Jungle', 'Dancefloor']),
    -- Hospital liquid duo; soulful melodic warmth
    ('Blocks & Escher',  ARRAY['Liquid']),
    -- Atmospheric liquid; Good Looking / Logical Progression lineage
    ('Blu Mar Ten',      ARRAY['Liquid', 'Deep']),
    -- Technical dancefloor; meticulous Symmetry sound design
    ('Break',            ARRAY['Dancefloor', 'Neurofunk']),
    -- Soulful liquid with organic R&B warmth; Digital Soundboy
    ('Breakage',         ARRAY['Liquid']),
    -- Melodic dancefloor with vocal pop energy; Breakbeat Kaos
    ('Brookes Brothers', ARRAY['Dancefloor', 'Liquid']),
    -- V Recordings label steward; jungle/liquid DnB institution
    ('Bryan Gee',        ARRAY['Jungle', 'Dancefloor']),
    -- Exit Records; autonomic movement architect; Bad Company roots
    ('dBridge',          ARRAY['Halftime', 'Autonomic']),
    -- Mainstream pop-DnB crossover; Louder UK #1
    ('DJ Fresh',         ARRAY['Dancefloor']),

    -- ── BATCH 04 ─────────────────────────────────────────────────────────

    -- Technical dancefloor precision; RAM Records six-deck legends
    ('Calyx & TeeBee',   ARRAY['Dancefloor', 'Neurofunk']),
    -- Atmospheric jazz-liquid; Metalheadz / Good Looking sophistication
    ('Commix',           ARRAY['Liquid', 'Deep']),
    -- Soulful groove-laden liquid; V Recordings warmth
    ('Command Strange',  ARRAY['Liquid']),
    -- Melodic liquid with jungle heritage; Hospital founding artist
    ('Danny Byrd',       ARRAY['Liquid', 'Dancefloor']),
    -- Big festival dancefloor; bass music crossover
    ('Delta Heavy',      ARRAY['Dancefloor']),
    -- American dark/technical DnB ambassador; Human Imprint brutality
    ('Dieselboy',        ARRAY['Neurofunk', 'Techstep']),
    -- Brazilian liquid pioneer; LK; InnerGround / Sambass scene bridge
    ('DJ Marky',         ARRAY['Liquid', 'Sambass']),

    -- ── BATCH 05 ─────────────────────────────────────────────────────────

    -- Rastafarian jungle culture; Jungle Revolution; reggae roots
    ('Congo Natty',        ARRAY['Jungle', 'Ragga Jungle']),
    -- Berlin neurofunk / darkstep precision; MachineCode; Björk collab
    ('Current Value',      ARRAY['Neurofunk', 'Darkstep']),
    -- Liquid DnB architect; True Colours; jazz-vocal sophistication
    ('High Contrast',      ARRAY['Liquid']),
    -- Dark atmospheric liquid; Commercial Suicide; last John Peel tune
    ('Klute',              ARRAY['Liquid', 'Deep']),
    -- Live DnB innovation; Hospital co-founder; jazz/soul instrumentation
    ('London Elektricity', ARRAY['Liquid']),
    -- Father of intelligent/atmospheric DnB; Good Looking Records
    ('LTJ Bukem',          ARRAY['Atmospheric Jungle', 'Liquid']),

    -- ── BATCH 06 ─────────────────────────────────────────────────────────

    -- Roots reggae/dub DnB fusion; Function Records; organic jungle roots
    ('Digital',        ARRAY['Jungle', 'Ragga DnB']),
    -- Russian tech DnB precision; Critical Music; atmospheric layers
    ('Enei',           ARRAY['Neurofunk', 'Dancefloor']),
    -- Shogun Audio / BBC Radio 1; technical dancefloor authority
    ('Friction',       ARRAY['Dancefloor', 'Neurofunk']),
    -- Dutch soulful jazz-liquid; The North Quarter; emotional depth
    ('Lenzman',        ARRAY['Liquid']),
    -- Melancholic piano liquid; Soul:r / Spearhead / Liquicity
    ('LSB',            ARRAY['Liquid']),

    -- ── BATCH 07 ─────────────────────────────────────────────────────────

    -- Original Nuttah; ragga jungle / dancehall fusion pioneer
    ('Shy FX',         ARRAY['Jungle', 'Ragga Jungle']),
    -- Mercury Prize; Reprazent; jazz/soul/live DnB; Full Cycle Bristol
    ('Roni Size',      ARRAY['Liquid', 'Jungle']),
    -- Bristol Reprazent philosopher; cinematic narrative DnB
    ('Krust',          ARRAY['Deep', 'Jungle']),
    -- Valve Recordings bass pioneer; heavy technical dancefloor
    ('Dillinja',       ARRAY['Dancefloor', 'Techstep']),
    -- Virus Recordings co-founder; techstep/neurofunk definition
    ('Ed Rush',        ARRAY['Neurofunk', 'Techstep']),
    -- Minimalist intelligent DnB; Metalheadz; Modus Operandi classic
    ('Photek',         ARRAY['Atmospheric Jungle', 'Deep']),
    -- Shogun Audio technical depth; Under the Ice atmospheric neuro
    ('Icicle',         ARRAY['Neurofunk', 'Deep']),
    -- Soul:r founder; liquid DnB emotional architecture; passed 2017
    ('Marcus Intalex', ARRAY['Liquid']),
    -- Metalheadz / Exit atmospheric depth; Marka streaming phenomenon
    ('Skeptical',      ARRAY['Deep', 'Liquid']),
    -- Bristol deep DnB; Dispatch / Metalheadz groove-laden reflection
    ('DLR',            ARRAY['Deep', 'Liquid']),
    -- Hospital / Med School modern liquid; Talisman LP
    ('Whiney',         ARRAY['Liquid']),
    -- Forward-thinking deep DnB; Metalheadz / Dispatch; Renewal LP
    ('Grey Code',      ARRAY['Deep', 'Neurofunk']),

    -- ── BATCH 08 ─────────────────────────────────────────────────────────

    -- Metalheadz atmospheric precision; dBridge / S.P.Y collaborator
    ('Jubei',         ARRAY['Liquid', 'Deep']),
    -- CIA Records Oxford liquid/deep sophistication; Champion Sound
    ('Total Science',  ARRAY['Liquid', 'Deep']),
    -- Hamburg neurofunk futurism; Neosignal / Noisia collaborator
    ('Phace',         ARRAY['Neurofunk']),
    -- Virus Recordings techstep co-founder; Wormhole co-architect
    ('Optical',       ARRAY['Neurofunk', 'Techstep']),
    -- Jump Up institution; Playaz / Ganja Records; four-decade veteran
    ('DJ Hype',       ARRAY['Jump Up']),
    -- Essex jungle pioneer; Dread Recordings; soulful bass heritage
    ('Ray Keith',     ARRAY['Jungle']),

    -- ── BATCH 09 ─────────────────────────────────────────────────────────

    -- AWOL / Metalheadz DJ legend; Mac II Recordings; jungle architect
    ('Randall',        ARRAY['Jungle']),
    -- Techstep/neurofunk pioneer; Mutant Remix; No U-Turn / DSCI4
    ('DJ Trace',       ARRAY['Techstep', 'Neurofunk']),
    -- Valley of the Shadows; RAM Records; atmospheric DnB spiritual core
    ('Origin Unknown', ARRAY['Atmospheric Jungle', 'Liquid']),
    -- Tech Itch Recordings neurofunk/darkstep; Birmingham dark architect
    ('Technical Itch', ARRAY['Neurofunk', 'Darkstep']),
    -- Amsterdam techno-tinged dancefloor with liquid soul; Commercial Suicide
    ('Nymfo',          ARRAY['Dancefloor', 'Neurofunk']),
    -- Hospital liquid soul; BBC 1Xtra award; Nu:Logic sibling
    ('Logistics',      ARRAY['Liquid'])

) AS v(artist_name, sg)
WHERE a.name = v.artist_name
  AND a.genre = 'Drum & Bass + Jungle';
