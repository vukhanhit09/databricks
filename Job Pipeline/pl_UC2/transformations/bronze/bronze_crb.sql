-- Bronze layer: Ingest raw data from crb table
CREATE OR REFRESH MATERIALIZED VIEW bronze_crb
COMMENT "Raw CRB transaction data with balance amounts and dimension groups"
AS
SELECT *
FROM mb_poc.data_raw.crb
