CREATE TABLE gis_shared_streets.platonic_ideal_table
(
    reference_id text COLLATE pg_catalog."default",
    from_intersection text COLLATE pg_catalog."default",
    to_intersection text COLLATE pg_catalog."default",
    road_class text COLLATE pg_catalog."default",
    direction text COLLATE pg_catalog."default",
    reference_length numeric,
    side text COLLATE pg_catalog."default",
    section numrange,
    score double precision,
    geometry geometry,
    query_num numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE gis_shared_streets.platonic_ideal_table
    OWNER to natalie;

GRANT SELECT ON TABLE gis_shared_streets.platonic_ideal_table TO bdit_humans;

GRANT ALL ON TABLE gis_shared_streets.platonic_ideal_table TO natalie;

COMMENT ON TABLE gis_shared_streets.platonic_ideal_table
    IS 'The ideal table structure for all sharedstreets returned match results.';
