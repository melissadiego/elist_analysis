-- =============================================================================
-- SQL ANALYSIS: EList E-Commerce Business Insights & Governance Audit
-- Dataset: Google BigQuery (Standard SQL)
-- Analyst: M. Diego
-- =============================================================================

-- Query 1: Monthly & Annual Revenue Performance
SELECT 
  EXTRACT(YEAR FROM CAST(purchase_ts AS DATE)) AS order_year,
  EXTRACT(MONTH FROM CAST(purchase_ts AS DATE)) AS order_month,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(CAST(usd_price AS NUMERIC)), 2) AS total_revenue
FROM elist_data_clean
GROUP BY 1, 2
ORDER BY order_year ASC, order_month ASC;


-- Query 2: Average Order Value (AOV) by Customer Loyalty Tier
SELECT 
  CASE 
    WHEN CAST(loyalty_program AS INT64) = 1 THEN 'Loyalty Member'
    ELSE 'Non-Loyalty Customer'
  END AS customer_tier,
  COUNT(DISTINCT user_id) AS total_unique_customers,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(CAST(usd_price AS NUMERIC)), 2) AS total_revenue,
  ROUND(AVG(CAST(usd_price AS NUMERIC)), 2) AS average_order_value
FROM elist_data_clean
GROUP BY loyalty_program;


-- Query 3: Annual Refund Rate Audit & Pipeline Gap Analysis
SELECT 
  EXTRACT(YEAR FROM CAST(purchase_ts AS DATE)) AS order_year,
  COUNT(DISTINCT order_id) AS total_orders,
  COUNT(DISTINCT CASE WHEN refund_ts IS NOT NULL AND refund_ts != '' THEN order_id END) AS refunded_orders,
  ROUND(
    SAFE_DIVIDE(
      COUNT(DISTINCT CASE WHEN refund_ts IS NOT NULL AND refund_ts != '' THEN order_id END) * 100.0, 
      COUNT(DISTINCT order_id)
    ), 2
  ) AS refund_rate_pct
FROM elist_data_clean
GROUP BY 1
ORDER BY order_year ASC;
