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

**Based on this analysis, I recommend the following actions:**

### Question 2 Insights and recommendations

**Key Insights:**

**Based on this analysis, I recommend the following actions:**

### Question 3 Insights and recommendations

**Key Insights:**

**Based on this analysis, I recommend the following actions:**

### Question 4 Insights and recommendations

**Key Insights:**

**Based on this analysis, I recommend the following actions:**

### Question 5 Insights and recommendations

**Key Insights:**

**Based on this analysis, I recommend the following actions:**
