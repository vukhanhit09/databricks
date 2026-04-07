-- Bronze layer: Ingest calendar date dimension data
CREATE OR REFRESH MATERIALIZED VIEW bronze_cdr_dt_dim
COMMENT "Calendar date dimension with fiscal and calendar attributes"
AS
SELECT *
FROM mb_poc.gold.cdr_dt_dim
