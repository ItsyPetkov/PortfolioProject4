# Passenger Experience Intelligence Dashboard – British Airways Service Quality, Fleet & Satisfaction Optimisation Study

## Target Users: Executive Leadership, Operations & Customer Experience Management, Business Stakeholders

This analysis is designed for airline leaders, operations managers, and customer experience professionals seeking to improve service quality and passenger satisfaction through data-driven insights. It delivers actionable intelligence across customer sentiment trends, service quality drivers, fleet-level experience variation, geographic performance differences, and traveller segmentation, enabling informed decisions on service optimisation, fleet investment prioritisation, and experience-led growth strategy.

## Understanding the Data

The data for this project consists of two sperate spreadsheets: ba_reviews.csv, Countries.csv

<table>
<tr>
<td valign="top">

**ba_reviews Table**

| Column Name        | Data Type  |
|--------------------|------------|
| header             | Text       |
| author             | Text       |
| date               | Date       |
| place              | Text       |
| content            | Text       |
| aircraft           | Text       |
| traveller_type     | Text       |
| seat_type          | Text       |
| route              | Text       |
| date_flown         | Date       |
| recommended        | Text       |
| trip_verified      | Text       |
| rating             | Number     |
| seat_comfort       | Number     |
| cabin_staff_service| Number     |
| food_beverages     | Number     |
| ground_service     | Number     |
| value_for_money    | Number     |
| entertainment      | Number     |


</td>
<td valign="top">

**Countries Table**

| Column Name   | Data Type  |
|---------------|------------|
| Country       | Text       |
| Code          | Text       |
| Continent     | Text       |
| Region        | Text       |

</td>
</tr>
</table>

Data processing is performed in MS SQL using the 'ETL_pipiline_for_Tableau.sql' script. For more information, please read through the 'Data Analysis Framework' section below. This results in the following datasets: 1) ba_reviews_cleande.csv; and 2) Countries_cleaned.csv. The cleaned datasets are used for the Exploratory Data Analysis (EDA) conducted in this project.

## Data Analysis Framework

## Analytical Focus & Key Business Question

List of business-related enquiries and their relevance:

1. *How is British Airways performing overall, and how has customer satisfaction changed over time?* => Enables executive leadership to monitor brand health, assess the impact of strategic initiatives, and course-correct based on long-term customer satisfaction trends.

2. *Which aircraft types receive the highest and lowest customer ratings?* => Supports fleet and operations leadership in prioritising refurbishment, retirement, and capital investment decisions based on customer experience impact.

3. *How do ratings differ by geography or country?* => Empowers regional and commercial leaders to identify market-level performance gaps and deploy targeted service and commercial interventions.

4. *Which aspects of the flight experience are rated highest or lowest?* => Guides customer experience and product owners in prioritising high-impact improvements across the end-to-end passenger journey.

5. *Do ratings vary based on traveller type, seat type, or time period?* => Enables marketing, revenue, and product strategy teams to refine segmentation, optimise pricing, and tailor service propositions to maximise customer value and loyalty.

## Key Insights & Strategic Action Recommendations

This section presents a concise overview of the patterns and trends revealed through Exploratory Data Analysis (EDA) in relation to each of the questions posed above, followed by recommendations derived from the findings.

### Interactive Dashboard

![image](https://github.com/user-attachments/assets/ab2a2ef3-3e4b-4af3-9a5d-723f086e6429)

### Question 1 Insights and recommendations

**Key Insights:**

* Overall customer satisfaction averages 4.2, indicating acceptable but underwhelming performance.

* Monthly ratings display high volatility, reflecting inconsistent service delivery.

* No sustained upward trend is visible, suggesting limited long-term impact from current improvement initiatives.

* Periodic declines imply vulnerability during peak operational stress periods.

* Stability without improvement signals competitive risk in a customer-driven market.

**Based on this analysis, I recommend the following actions:**

* Implement root-cause analysis on low-performing months to isolate operational drivers of customer dissatisfaction.
* Establish experience consistency programs focused on standardising service quality across routes, aircraft, and crews.
* Align frontline performance incentives with customer satisfaction metrics to reinforce accountability.
* Enhance operational resilience during peak periods through staffing optimisation, contingency planning, and predictive demand modelling.
* Introduce closed-loop customer feedback mechanisms to rapidly identify issues and validate improvement effectiveness.

### Question 2 Insights and recommendations

**Key Insights:**

* Customer ratings vary significantly across aircraft types, indicating inconsistent onboard experience.

* Wide-body aircraft generally achieve higher satisfaction, particularly on long-haul routes.

* Lower-rated aircraft likely reflect outdated interiors and inferior cabin configurations.

* Experience inconsistency weakens brand coherence and customer trust.

* Fleet composition is a critical driver of satisfaction outcomes.

**Based on this analysis, I recommend the following actions:**

* Prioritise refurbishment of lowest-rated aircraft types to rapidly lift baseline experience.
* Incorporate customer satisfaction metrics into fleet investment decision-making.
* Standardise cabin experience guidelines across aircraft wherever operationally feasible.
* Accelerate retirement of persistently underperforming aircraft models.
* Use aircraft-level feedback to inform interior design and seat configuration strategy.

### Question 3 Insights and recommendations

**Key Insights:**

* Customer satisfaction varies substantially by country, reflecting uneven service execution.

* Local operational conditions significantly influence customer perception.

* Some regions act as best-practice benchmarks, while others require targeted intervention.

* Geographic inconsistency undermines brand coherence.

* Localised improvement strategies are more effective than broad global initiatives.

**Based on this analysis, I recommend the following actions:**

* Conduct regional deep-dive diagnostics to isolate root causes of dissatisfaction.
* Deploy targeted operational improvement programs in lowest-performing markets.
* Replicate best practices from high-performing regions across the network.
* Strengthen local accountability structures for service quality delivery.
* Align airport partner performance metrics with customer satisfaction Key Performance Indicators (KPI).

### Question 4 Insights and recommendations

**Key Insights:**

* Entertainment is the lowest-rated service dimension, representing a major experience gap.

* Food, beverage and seat comfort also significantly underperform in terms of expectations.

* Interpersonal service performs comparatively better.

* Onboard product quality now dominates satisfaction outcomes.

* Targeted improvements can generate high-impact experience gains.

**Based on this analysis, I recommend the following actions:**

* Prioritise inflight entertainment system upgrades, focusing on reliability and content breadth.
* Redesign onboard food and beverage strategy to align with premium customer expectations.
* Accelerate seat comfort enhancement initiatives, especially on long-haul aircraft.
* Re-evaluate value proposition and pricing alignment to improve perceived value for money.
* Introduce continuous monitoring of service dimension Key Performance Indicators (KPI).

### Question 5 Insights and recommendations

**Key Insights:**

* Satisfaction varies significantly by traveller type and seat class.

* Premium segments consistently outperform economy segments.

* Economy dissatisfaction reflects comfort and value perception gaps.

* Segment differences influence loyalty and repeat purchase behaviour.

* Targeted interventions can unlock material revenue upside.

**Based on this analysis, I recommend the following actions:**

* Enhance economy cabin comfort and service interaction points within cost constraints.
* Develop differentiated experience strategies by traveller type.
* Refine segmentation-based pricing and bundling strategies.
* Target loyalty incentives toward high-risk, low-satisfaction segments.
* Continuously monitor satisfaction at segment level to drive agile improvements.
