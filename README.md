# EList Electronics: Executive Revenue & Loyalty Analytics

An executive-level Tableau analytics dashboard analyzing sales performance, YoY revenue growth, and monthly order trends for EList Electronics.

## Elist Data 

The database structure, as shown below, consists of four tables: 
* orders
* customers
* geo_lookup
* order_status

with a total row count of 108,124 records.

<img width="845" height="512" alt="image" src="https://github.com/user-attachments/assets/8e7bdd7d-9466-4f64-9516-dd35add2f04d" />



## Tech Stack & Tools
* **Data Visualization:** Tableau Desktop (Executive KPIs, Trend Dashboards, Cohort Comparison)
* **Data Transformation & Preprocessing:** Google Sheets (Data Audit Logging, String Standardization, Null Management)
* **Data Modeling:** Relational Lookups (Primary/Foreign Key Joins between Orders & Country Schema)
* **Documentation:** GitHub/ Markdown

**Data Preprocessing Note:** The row count difference between the total relational database records (108,124) and the cleaned orders dataset (101,129) accounts for foreign key join boundaries and the exclusion of unlinked non-transactional system logs.

## Overview
EList Electronics is a global e-commerce retailer specializing in consumer tech and electronic accessories. Operating across multiple international markets and sales channels, the company relies heavily on customer loyalty programs, seasonal promotional strategies, and efficient post-purchase experience management to drive long-term revenue growth.

This project analyzes EList's multi-year transactional order data (2019–2022) to evaluate key financial indicators, monitor order volumes, and measure loyalty program performance. The analysis also addresses raw data quality issues, including inconsistent identifier formats and incomplete relational lookup schemas, to bridge the gap between raw transactional logs and executive-ready decision-making.

## Key Business Objectives
* **Revenue Trends & Sales Performance:** Track macro sales trajectory, average order value (AOV), and year-over-year (YoY) revenue growth across global regions.
* **Loyalty Program Impact:** Evaluate customer adoption rates and compare purchasing frequency, order value, and total revenue contribution between loyalty and non-loyalty members.
* **Operational Quality & Refunds:** Monitor product refund rates over time to identify operational friction, customer churn risks, and return behavior across channels.


## Executive Summary

Between 2019 and 2022, EList Electronics generated **$28.11M** in total revenue across 108,124 orders, maintaining an average monthly revenue of **$585.68K**.

* **Macro Trajectory:** Significant pandemic-era growth peaked in late 2020, followed by a period of post-peak stabilization and gradual decline.
* **Loyalty & Retention:** While overall order volume contracted in 2021–2022, loyalty program adoption scaled rapidly, establishing a steady revenue baseline that cushioned the downturn.
* **Operational Progress:** Recorded product refund rates dropped to zero by 2022 — but this is a data artifact, not a real operational win.
* **Data Quality Audit:** Identified a post-2021 refund logging cutoff in the raw order data, which artificially trends recorded refund rates to 0.00% in 2022.
  
<img width="1626" height="148" alt="image" src="https://github.com/user-attachments/assets/7eafde03-4949-46f3-9b7d-ebb57bfcf16d" />



## Overall Sales Trends

From 2019 through late 2020, EList experienced rapid revenue expansion, followed by a post-pandemic demand stabilization phase through 2022.

* **Historical Growth Surge (2019 – Late 2020):**Sales started at a steady baseline of $250K–$350K/month throughout 2019 before climbing rapidly in 2020, peaking in December 2020 at an all-time high of **$1.25M ($1,251,721)** in monthly revenue.
* **Post-Peak Stabilization (2021 – 2022):** Following the late-2020 spike, monthly sales normalized across global channels, holding steady at $600K–$800K through 2021 before tapering off in 2022.
* **Low Point & Holiday Recovery:** Monthly revenue hit its lowest point of $178K ($178,275) in late 2022, before showing early signs of a holiday upturn toward year-end.

<img width="1613" height="365" alt="image" src="https://github.com/user-attachments/assets/e9fd9986-77da-4eee-a224-f103c3552e87" />



## Monthly & Yearly Growth Rates

EList's performance was characterized by massive growth in 2020, followed by a severe post-peak contraction and sharp month-to-month volatility over the 2019–2022 period.

### Yearly Growth Dynamics (YoY)
* **2020 Surge (+163%):** EList experienced exponential expansion in 2020, achieving a **+163% YoY revenue increase** driven by heightened demand for consumer electronics during stay-at-home measures.
* **2021 Stabilization (-10%):** Revenue dipped slightly by **-10% YoY** as the market adjusted to high baseline comparisons set during the previous year's record surge.
* **2022 Post-Pandemic Correction (-46%):** Performance contracted significantly with a **-46% YoY decline**, reflecting macroeconomic headwinds, shifting consumer spending habits, and stabilizing post-pandemic demand.

### Monthly Volatility (MoM)
* **Peak MoM Increase (+50.3%):** The highest single-month expansion reached **+50.3%**, driven by strong seasonal promotional pushes and peak sales cycles.
* **Maximum MoM Drop (-55.2%):** Conversely, the sharpest month-over-month drop reached **-55.2%**, highlighting substantial revenue volatility following holiday shopping surges and off-peak transitions.

<img width="1611" height="370" alt="image" src="https://github.com/user-attachments/assets/0cb48c27-198a-4404-a4c7-15dc701f6c6b" />




## Loyalty Program Performance & Strategic Recommendation

Evaluation of customer engagement metrics reveals a more nuanced picture than the notion that "loyalty members are simply better customers." Non-members place higher-value single orders and buy marginally more often but loyalty program adoption still provides a critical, stable base of recurring revenue for the business.

### Program Insights

* **Revenue Adoption & Contribution:** Loyalty program revenue grew rapidly from 2019 to 2021, steadily overtaking non-loyalty sales contributions by mid-2021, and now represents 39% of total revenue from 45% of the customer base.
* **Revenue Stabilization:** During the post-peak contraction phase (2021–2022), loyalty revenue tracked closely with non-loyalty sales, serving as a more stable revenue stream during market pullbacks and swinging less sharply than non-member sales.
* **Average Order Value (AOV):** Non-loyalty customers generate a higher average basket size at $274.61 compared to $240.23 for loyalty members a $34.43 gap per order.
* **Purchase Frequency:** Non-loyalty customers actually show marginally higher purchase frequency per user (1.26) than loyalty members (1.16). This is a small gap in absolute terms and doesn't support a claim that the loyalty program drives more frequent repeat purchases — the program's value case rests on revenue stability and predictability, not on outpacing non-members in either AOV or frequency.
Strategic Recommendation

**Verdict: Retain the Loyalty Program, but Reassess Its Value Proposition**

On a per-transaction and per-customer basis, non-loyalty customers currently outperform loyalty members on both AOV and purchase frequency. EList should continue the program; its adoption and consistent revenue contribution through the 2021–2022 slowdown still make it a meaningful stabilizer, but it should not assume it is currently driving the behavioral loyalty (bigger, more frequent orders) that a rewards program is typically designed to create. That gap points to a program design opportunity rather than a program cancellation case.

### Actionable Next Steps
* **Close the AOV and Frequency Gap:** Introduce tiered reward thresholds (e.g., "Spend $275 to unlock free expedited shipping or double points") and frequency-based incentives (e.g., a third-purchase discount) to actually produce the behavior change the program should be driving, rather than assuming it's already happening.
* **Re-verify the Program's ROI:** Given loyalty members underperform on both AOV and frequency, confirm what specific benefit (e.g., lower acquisition cost, higher lifetime retention beyond this order-level window) justifies the program's cost before further investment.


<img width="1621" height="387" alt="image" src="https://github.com/user-attachments/assets/6a444828-23d4-46bc-a758-dd1e34168767" />

<img width="1181" height="406" alt="image" src="https://github.com/user-attachments/assets/25c790ff-57e6-4359-a5cd-f7619d3bcbaf" />


## Refund Rates & Average Order Value (AOV)

* **Operational & Data Governance Note:** Recorded refund rates trended downward to 0.00% in 2022. Rather than reflecting flawless fulfillment, this pattern reflects a known post-2021 data logging/ingestion cutoff in the raw dataset — REFUND_TS values are no longer populated after 2021. This requires a pipeline audit before any conclusions are drawn about product return performance or customer satisfaction.
  
<img width="438" height="420" alt="image" src="https://github.com/user-attachments/assets/5226d696-3d2c-4141-81e4-ce58ee9cc65a" />


## Strategic Recommendations

Based on executive-level trends across sales volume, loyalty adoption, and operational quality from 2019–2022, EList should execute three primary strategies to reignite growth and optimize profitability:

### 1. Bridge the Loyalty AOV and Frequency Gap
**The Insight:** Non-loyalty customers average $274.61 per order versus $240.23 for loyalty members (a $34.43 gap), and also purchase marginally more often (1.26 vs. 1.16 orders per user). The loyalty program is not currently producing the higher-spend, higher-frequency behavior it's designed to incentivize.

**Action:** Implement minimum spend thresholds and frequency-based rewards (e.g., "Spend $275 to earn 2x reward points," free expedited shipping, or a discount on a customer's next purchase within 60 days) to close both gaps.

### 2. Win Back 2020 Peak Customers
**The Insight:** After 2020's record +163% YoY growth surge, revenue contracted -46% YoY by 2022. A large pool of single-time buyers acquired during peak demand has gone cold.

**Action:**  Launch targeted re-engagement email campaigns for 2020 guest buyers, featuring personalized product recommendations and exclusive loyalty sign-up incentives.

### 3. Audit 2022 Data Pipelines & Refund Tracking
**The Insight:** Recorded refund rates dropped from a peak of 9.22% in 2020 to 0.00% in 2022, a known data-logging cutoff after 2021, not a real operational outcome.

**Action:** Audit raw order tables and ETL pipelines to restore complete return timestamp tracking before drawing conclusions on product returns or customer satisfaction.

