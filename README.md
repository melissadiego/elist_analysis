# EList Electronics: Executive Revenue & Loyalty Analytics

An executive-level Tableau analytics dashboard analyzing sales performance, YoY revenue growth, and monthly order trends for EList Electronics.

## Elist Data 

The database structure, as shown below, consists of four tables: 
* orders
* customers
* geo_lookup
* order_status

with a total row count of 10,8127 records.

<img width="700" height="350" alt="image" src="https://github.com/user-attachments/assets/97a6d5b2-ca06-4421-bb6a-b0eeb72b9a68" />


## Tech Stack & Tools
* **Data Visualization:** Tableau Desktop (Executive KPIs, Trend Dashboards, Cohort Comparison)
* **Data Transformation & Preprocessing:** Google Sheets (Data Audit Logging, String Standardization, Null Management)
* **Data Modeling:** Relational Lookups (Primary/Foreign Key Joins between Orders & Country Schema)
* **Documentation:** GitHub/ Markdown

## Overview
EList Electronics is a global e-commerce retailer specializing in consumer tech and electronic accessories. Operating across multiple international markets and sales channels, the company relies heavily on customer loyalty programs, seasonal promotional strategies, and efficient post-purchase experience management to drive long-term revenue growth.

This project analyzes EList’s multi-year transactional order data (2019–2022) to evaluate key financial indicators, monitor order volumes, and measure loyalty program performance. By addressing raw data quality issues, including standardized identifier formats and cleaned relational lookup schemas. This analysis bridges raw transactional logs and executive-ready decision-making.

## Key Business Objectives
* **Revenue Trends & Sales Performance:** Track macro sales trajectory, average order value (AOV), and year-over-year (YoY) revenue growth across global regions.
* **Loyalty Program Impact:** Evaluate customer adoption rates and compare purchasing frequency, order value, and total revenue contribution between loyalty and non-loyalty members.
* **Operational Quality & Refunds:** Monitor product refund rates over time to identify operational friction, customer churn risks, and return behavior across channels.


## Executive Summary

Between 2019 and 2022, EList Electronics generated **$28.11M in total revenue** across **108,127 orders**, maintaining an **average monthly revenue of $573.74K**. 

* **Macro Trajectory:** Experienced significant pandemic-era growth that peaked in late 2020, followed by a period of post-peak stabilization.
* **Loyalty & Retention:** While overall order volume contracted in 2021–2022, loyalty program adoption scaled rapidly, establishing a steady revenue baseline.
* **Operational Progress:** Strategic operational improvements successfully reduced product refund rates down to zero.
* **Data Quality Audit:** Identified a post-2021 refund logging cutoff in raw order data, trending recorded refund rates artificially to 0.00% in 2022.
  

<img width="1640" height="156" alt="image" src="https://github.com/user-attachments/assets/5ac95daf-9069-44dd-bd12-14f5f0d5b9fe" />


## Overall Sales Trends

From 2019 through late 2020, EList experienced rapid revenue expansion, followed by a post-pandemic demand stabilization phase through 2022.

* **Historical Growth Surge (2019 – Late 2020):** Sales started at a steady baseline of **$250K–$350K/month** throughout 2019 before climbing rapidly in 2020, peaking in December 2020 at an all-time high of **$1.25M ($1,251,721)** in monthly revenue.
* **Post-Peak Stabilization (2021 – 2022):** Following the late 2020 spike, monthly sales normalized across global channels, holding steady at **$600K–$800K** through 2021 before tapering off in 2022.
* **Low Point & Holiday Recovery:** Monthly revenue hit its lowest point of **$178K ($178,275)** in late 2022 before showing early signs of a holiday upturn toward year-end.

<img width="1613" height="365" alt="image" src="https://github.com/user-attachments/assets/e9fd9986-77da-4eee-a224-f103c3552e87" />



## Monthly & Yearly Growth Rates

EList’s performance was characterized by massive growth in 2020, followed by severe post-peak contraction and sharp month-to-month volatility across the 2019–2022 timeline.

### Yearly Growth Dynamics (YoY)
* **2020 Surge (+163%):** EList experienced exponential expansion in 2020, achieving a **+163% YoY revenue increase** driven by heightened demand for consumer electronics during stay-at-home measures.
* **2021 Stabilization (-10%):** Revenue dipped slightly by **-10% YoY** as the market adjusted to high baseline comparisons set during the previous year's record surge.
* **2022 Post-Pandemic Correction (-46%):** Performance contracted significantly with a **-46% YoY decline**, reflecting macroeconomic headwinds, shifting consumer spending habits, and stabilizing post-pandemic demand.

### Monthly Volatility (MoM)
* **Peak MoM Increase (+50.3%):** The highest single-month expansion reached **+50.3%**, driven by strong seasonal promotional pushes and peak sales cycles.
* **Maximum MoM Drop (-55.2%):** Conversely, the sharpest month-over-month drop reached **-55.2%**, highlighting substantial revenue volatility following holiday shopping surges and off-peak transitions.

<img width="1611" height="370" alt="image" src="https://github.com/user-attachments/assets/0cb48c27-198a-4404-a4c7-15dc701f6c6b" />




## Loyalty Program Performance & Strategic Recommendation

Evaluation of customer engagement metrics reveals that while non-members place higher single-order totals, loyalty program adoption provides a critical base of recurring revenue.

### Program Insights
* **Revenue Adoption & Contribution:** Loyalty program revenue grew rapidly from 2019 to 2021, steadily overtaking non-loyalty sales contributions by mid-2021.
* **Revenue Stabilization:** During the post-peak contraction phase (2021–2022), loyalty revenue surpassed non-loyalty sales, serving as EList’s primary revenue cushion during market pullbacks.
* **Average Order Value (AOV):** Non-loyalty customers generate a higher average basket size at **$274.61** compared to **$240.23** for loyalty members, a **$34.38 difference per order**.
* **Purchase Frequency:** Loyalty members demonstrate a higher average purchase frequency per user, confirming that member rewards successfully drive repeat transactions over time.

### Strategic Recommendation
> **Verdict: Retain and Optimize the Loyalty Program**
> 
> **Yes**, EList should continue using the loyalty program. While non-members spend more per individual transaction, loyalty members generate predictable, recurring cash flow that sustained the business during the 2021–2022 market slowdown.

### Actionable Next Steps
* **Increase Loyalty AOV:** Introduce tiered reward thresholds (e.g., *"Spend $275 to unlock free expedited shipping or double points"*) to bridge the **$34.38 gap** and match non-member basket sizes.


<img width="1621" height="387" alt="image" src="https://github.com/user-attachments/assets/6a444828-23d4-46bc-a758-dd1e34168767" />

<img width="1181" height="406" alt="image" src="https://github.com/user-attachments/assets/25c790ff-57e6-4359-a5cd-f7619d3bcbaf" />


## Refund Rates & Average Order Value (AOV)

* **Operational & Data Governance Note:** Recorded refund rates trended downward to 0.00% in 2022. Rather than flawless fulfillment, this reflects a known post-2021 data logging/ingestion cutoff in the raw dataset, which requires a pipeline audit.
* **Average Order Value Breakdown:** Non-loyalty customers maintained a higher overall basket size at **$274.61**, compared to loyalty members at **$240.23**.

<img width="438" height="420" alt="image" src="https://github.com/user-attachments/assets/5226d696-3d2c-4141-81e4-ce58ee9cc65a" />


## Strategic Recommendations

Based on executive-level trends across sales volume, loyalty adoption, and operational quality from 2019–2022, EList should execute three primary strategies to reignite growth and optimize profitability:

### 1. Bridge the Loyalty Average Order Value (AOV) Gap
* **The Insight:** Non-loyalty customers average **$274.61** per order, whereas loyalty members average **$240.23**—leaving a **$34.38 revenue gap** per transaction on your most frequent shoppers.
* **Action:** Implement minimum spend thresholds for loyalty perks (e.g., *"Spend $275 to earn 2x reward points"* or free expedited shipping) to encourage members to match non-member basket sizes.

### 2. Win Back 2020 Peak Customers
* **The Insight:** After 2020’s record **+163% YoY** growth surge, revenue contracted by **-46% YoY** in 2022. A massive pool of single-time buyers acquired during peak demand has gone cold.
* **Action:** Launch targeted re-engagement email campaigns for 2020 guest buyers featuring personalized product recommendations and exclusive loyalty sign-up incentives.

### 3. Audit 2022 Data Pipelines & Refund Tracking

* **The Insight:** Recorded refund rates dropped from a peak of 9.22% in 2020 down to 0.00% in 2022. Rather than operational perfection, this reflects a known data-logging cutoff after 2021.
* **Action:** Audit raw order tables and ETL pipelines to restore complete return timestamp tracking before drawing final conclusions on product return performance or customer satisfaction.
