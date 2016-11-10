-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0-rc1
-- Generated: 2016-11-10 17:40

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_duplicate_origin_1 (
    "schema_vendor"     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"    VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"           CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"       TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"          VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"          VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"        VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "original_event_id" CHAR(36)      ENCODE LZO       NOT NULL,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_duplicate_origin_1 IS 'iglu:com.snowplowanalytics.snowplow/duplicate_origin/jsonschema/1-0-0';
