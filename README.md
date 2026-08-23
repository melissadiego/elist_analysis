# Elist_analysis
An executive-level Tableau analytics dashboard analyzing sales performance, YoY revenue growth, and monthly order trends for EList Electronics.

EList Electronics is a global e-commerce retailer specializing in consumer tech and electronic accessories. Operating across multiple international markets and sales channels, the company relies heavily on customer loyalty programs, seasonal promotional strategies, and efficient post-purchase experience management to drive long-term revenue growth.

This project analyzes EList’s multi-year transactional order data from 2019–2022 to evaluate key financial indicators, monitor order volumes, and measure the performance of its customer loyalty program. By addressing raw data quality issues, including standardized identifier formats and cleaned relational lookup schemas, this analysis bridges raw transactional logs with executive-ready decision-making.

**Key Business Objectives**

Revenue Trends & Sales Performance: Track macro sales trajectory, average order value (AOV), and year-over-year (YoY) revenue growth across global regions.

Loyalty Program Impact: Evaluate customer adoption rates and compare purchasing frequency, order value, and total revenue contribution between loyalty and non-loyalty members.

Operational Quality & Refunds: Monitor product refund rates over time to identify operational friction, customer churn risks, and return behavior across channels.

# **Executive Summary**

Between 2019 and 2022, EList Electronics generated $28.11M in total revenue across 108,127 orders, maintaining an average monthly revenue of $573.74K. The company experienced significant pandemic-era growth that peaked in late 2020, followed by a period of post-peak stabilization. 

While overall order volume contracted in 2021–2022, loyalty program adoption scaled rapidly, providing a steady revenue baseline, and operational improvements successfully brought product refund rates down to zero.

<img width="1640" height="156" alt="image" src="https://github.com/user-attachments/assets/5ac95daf-9069-44dd-bd12-14f5f0d5b9fe" />


# Overall Sales Trends
From 2019 through late 2020, EList experienced rapid revenue expansion, followed by a post-pandemic demand stabilization phase through 2022.

Historical Growth Surge (2019 – Late 2020): Sales started at a steady baseline of $250K–$350K per month throughout 2019, then climbed rapidly in 2020. This trajectory peaked in December 2020, reaching an all-time monthly high of $1.25M ($1,251,721) in total revenue.

Post-Peak Stabilization (2021 – 2022): Following the late 2020 spike, monthly sales entered a multi-year contraction as demand normalized across global channels. Revenue held steady around $600K–$800K through 2021 before tapering off in 2022.

Low Point & End-of-Year Recovery: Monthly revenue reached its lowest point of $178K ($178,275) in late 2022, then showed early signs of a holiday upturn heading 
into the end of the year.

<img width="1568" height="371" alt="image" src="https://github.com/user-attachments/assets/4d9b5237-bbd1-4585-a202-a4c7c2c85500" />


# Monthly & Yearly Growth Rates
EList’s performance was characterized by massive growth in 2020, followed by severe post-peak contraction and sharp month-to-month volatility across the 2019–2022 timeline.

**Yearly Growth Dynamics (YoY)**

2020 Surge (+163%): EList experienced exponential expansion in 2020, achieving a +163% year-over-year revenue increase driven by heightened demand for electronics during widespread stay-at-home measures.

2021 Stabilization (-10%): Revenue dipped slightly by -10% YoY as the market adjusted to high baseline comparisons set during the previous year's record surge.

2022 Post-Pandemic Correction (-46%): Performance contracted significantly with a -46% YoY decline, reflecting macroeconomic headwinds, shifting consumer spending habits, and stabilizing post-pandemic demand.

**Monthly Volatility (MoM)**

Peak MoM Increase (+50.3%): The highest single-month expansion reached +50.3%, driven by strong seasonal promotional pushes and peak sales cycles.

Maximum MoM Drop (-55.2%): Conversely, the sharpest month-over-month drop reached -55.2%, highlighting substantial revenue volatility following holiday shopping surges and off-peak transitions.

<img width="1602" height="380" alt="image" src="https://github.com/user-attachments/assets/b5a7ccec-987b-4912-a682-c7d26971226a" />



# Loyalty Program Performance & Strategic Recommendation
Evaluation of customer engagement metrics reveals that while non-members place higher single-order totals, loyalty program adoption provides a critical base of recurring revenue.

**Revenue Adoption & Contribution**
Rapid Expansion (2019–2021): Loyalty program revenue grew from negligible levels in 2019 to steadily overtake non-loyalty sales contributions by mid-2021.

**Revenue Stabilization** 
During the post-peak contraction phase in 2021–2022, loyalty revenue surpassed non-loyalty sales, serving as EList’s primary revenue cushion during overall market pullbacks.

**Customer Behavior Analysis**
Average Order Value (AOV): Non-loyalty customers generate a higher average basket size at $274.61, compared to $240.23 for loyalty members—a difference of $34.3 per order.

**Purchase Frequency**
Loyalty members demonstrate a higher average purchase frequency per user, confirming that member rewards successfully drive repeat transactions over time.

**Strategic Recommendation:** Keep and Optimize the Loyalty Program
Verdict: Yes, EList should continue using the loyalty program.

While non-members spend more per individual order, loyalty members generate predictable, recurring cash flow that kept the business afloat during the 2021–2022 slowdown.

**Actionable Next Steps**

Increase Loyalty AOV: Introduce tiered reward thresholds (e.g., "Spend $275 to unlock free expedited shipping or double points") to bridge the $34.38 gap and match non-member basket sizes.

Convert High-Value Non-Members: Target non-loyalty shoppers at checkout with instant member discounts to capture repeat business from higher-spending single buyers.


<img width="1621" height="387" alt="image" src="https://github.com/user-attachments/assets/6a444828-23d4-46bc-a758-dd1e34168767" />

<img width="1181" height="406" alt="image" src="https://github.com/user-attachments/assets/25c790ff-57e6-4359-a5cd-f7619d3bcbaf" />


# Refund Rates & Average Order Value (AOV)
Refund Rates: Operational improvements yielded major quality gains. After spiking at 9.22% in 2020 due to rapid order expansion, refund rates plummeted to 3.61% in 2021 and reached 0.00% in 2022.

Average Order Value: Non-loyalty customers maintained a higher overall AOV at $274.61, compared to loyalty members at $240.23.ve higher conversion rates across competitive channels.

<img width="438" height="420" alt="image" src="https://github.com/user-attachments/assets/5226d696-3d2c-4141-81e4-ce58ee9cc65a" />


# Strategic Recommendations
Based on executive-level trends across sales volume, loyalty adoption, and operational quality from 2019–2022, EList should execute three primary strategies to reignite growth and optimize profitability.

1. Bridge the Loyalty Average Order Value (AOV) Gap

The Insight: Non-loyalty customers average $274.61 per order, whereas loyalty members average $240.23—leaving a $34.38 revenue gap per transaction on your most frequent shoppers.

Action: Implement minimum spend thresholds for loyalty perks (e.g., "Spend $275 to earn 2x reward points" or free expedited shipping) to encourage members to match non-member basket sizes.

2. Win Back 2020 Peak Customers

The Insight: After 2020’s record +163% YoY growth surge, revenue fell by -46% YoY in 2022. A massive pool of single-time buyers acquired during peak demand has gone cold.

Action: Launch re-engagement email campaigns targeting 2020 guest buyers with personalized recommendations and exclusive initial sign-up incentives to convert them into recurring loyalty members.

3. Capitalize on 0% Refund Rate Operational Excellence

The Insight: Refund rates dropped from a high of 9.22% in 2020 down to 0.00% in 2022, showing massive improvements in product quality control and order fulfillment.

Action: Feature customer satisfaction guarantees, top-tier reliability messaging, and low return metrics prominently across checkout and product pages to drive higher conversion rates from new, non-loyalty traffic.
