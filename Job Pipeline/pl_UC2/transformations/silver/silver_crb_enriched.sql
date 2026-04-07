-- Silver layer: Enrich CRB data with calendar date dimension
CREATE OR REFRESH MATERIALIZED VIEW silver_crb_enriched
COMMENT "CRB transaction data enriched with calendar date attributes"
AS
SELECT 
  crb.*,
  dim.CDR_MO,
  dim.CDR_MO_NM,
  dim.CDR_QTR,
  dim.CDR_YR,
  dim.DAY_OF_WK,
  dim.FSC_MO,
  dim.FSC_QTR,
  dim.FYR,
  dim.PBLC_HOL_F,
  dim.WRK_HOL_F
FROM bronze_crb crb
LEFT JOIN bronze_cdr_dt_dim dim
  ON crb.txn_date = dim.CDR_DT
