-- =============================================================================
-- SQL ANALYSIS: EList E-Commerce Business Insights & Governance Audit
-- Platform: Google BigQuery (Standard SQL)
-- Project ID: elist-project-506918
-- Dataset: elist_dataset.orders_data
-- Analyst: M. Diego
-- =============================================================================
 
-- Query 1: Monthly & Annual Revenue Performance
SELECT
  EXTRACT(YEAR FROM PURCHASE_TS) AS order_year,
  EXTRACT(MONTH FROM PURCHASE_TS) AS order_month,
  COUNT(DISTINCT ORDER_ID) AS total_orders,
  ROUND(SUM(USD_PRICE), 2) AS total_revenue
FROM `elist-project-506918.elist_dataset.orders_data`
GROUP BY 1, 2
ORDER BY order_year ASC, order_month ASC;
 
 
-- Query 2: Average Order Value (AOV) by Customer Loyalty Tier
SELECT 
  CASE 
    WHEN LOYALTY_PROGRAM = 1 THEN 'Loyalty Member'
    ELSE 'Non-Loyalty Customer'
  END AS customer_tier,
  COUNT(DISTINCT USER_ID) AS total_unique_customers,
  COUNT(DISTINCT ORDER_ID) AS total_orders,
  ROUND(SUM(USD_PRICE), 2) AS total_revenue,
  ROUND(SUM(USD_PRICE) / COUNT(DISTINCT ORDER_ID), 2) AS average_order_value
FROM `elist-project-506918.elist_dataset.orders_data`
GROUP BY 1;
 
 
-- Query 3: Annual Refund Rate Audit & Pipeline Gap Analysis
SELECT 
  EXTRACT(YEAR FROM PURCHASE_TS) AS order_year,
  COUNT(DISTINCT ORDER_ID) AS total_orders,
  COUNT(DISTINCT CASE 
    WHEN REFUND_TS IS NOT NULL THEN ORDER_ID 
  END) AS refunded_orders,
  ROUND(
    SAFE_DIVIDE(
      COUNT(DISTINCT CASE WHEN REFUND_TS IS NOT NULL THEN ORDER_ID END) * 100.0, 
      COUNT(DISTINCT ORDER_ID)
    ), 2
  ) AS refund_rate_pct
FROM `elist-project-506918.elist_dataset.orders_data`
GROUP BY 1
ORDER BY order_year ASC;
 
 
-- Query 4: Purchase Frequency per Customer by Loyalty Tier
SELECT
  CASE 
    WHEN LOYALTY_PROGRAM = 1 THEN 'Loyalty Member'
    ELSE 'Non-Loyalty Customer'
  END AS customer_tier,
  COUNT(DISTINCT ORDER_ID) AS total_orders,
  COUNT(DISTINCT USER_ID) AS total_unique_customers,
  ROUND(
    SAFE_DIVIDE(
      COUNT(DISTINCT ORDER_ID), 
      COUNT(DISTINCT USER_ID)
    ), 2
  ) AS purchase_frequency_per_user
FROM `elist-project-506918.elist_dataset.orders_data`
GROUP BY 1;
