CREATE TABLE gis_shared_streets.output_table_structure
(
    reference_id text COLLATE pg_catalog."default",
    from_intersection text COLLATE pg_catalog."default",
    to_intersection text COLLATE pg_catalog."default",
    road_class text COLLATE pg_catalog."default",
    ss_direction text COLLATE pg_catalog."default",
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

ALTER TABLE gis_shared_streets.output_table_structure
    OWNER to natalie;

GRANT SELECT ON TABLE gis_shared_streets.output_table_structure TO bdit_humans;

GRANT ALL ON TABLE gis_shared_streets.output_table_structure TO natalie;

COMMENT ON TABLE gis_shared_streets.output_table_structure
    IS 'The ideal table structure for all sharedstreets returned match results.';
