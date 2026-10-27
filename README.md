# Customer Churn Analysis | Python, SQL & Power BI

## Project Overview

Customer retention is an important challenge for subscription-based businesses. Understanding which customers are more likely to leave can help organisations identify retention opportunities and make better business decisions.

In this project, I analysed a telecom customer dataset containing **7,043 customers** to explore churn patterns, identify customer segments associated with higher churn and recommend potential retention strategies.

The project combines **Python for data cleaning and exploratory analysis, SQL for answering business questions, and Power BI for interactive reporting and visualisation**.

## Business Objectives

The analysis aimed to answer the following questions:

1. What is the overall customer churn rate?
2. Which contract types and customer characteristics are associated with higher churn?
3. How do customer tenure, monthly charges, payment methods and technical support relate to churn?
4. Which customer segments should be prioritised for retention initiatives?
5. What actionable recommendations can be drawn from the findings?

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and exploratory data analysis |
| Pandas | Data manipulation, validation and analysis |
| SQLite | SQL querying and customer segmentation |
| Power BI | Interactive dashboards, DAX measures and visualisation |
| Jupyter Notebook | Documenting and executing the analysis |

## Dataset

The project uses the IBM Telco Customer Churn dataset, containing 7,043 customer records and 21 original columns.

The dataset includes customer demographics, account information, subscription details, service usage, billing information and churn status.

### Data Preparation

Key preparation steps included:

- Checking for missing values and duplicate records.
- Converting TotalCharges into a numeric field.
- Handling 11 blank TotalCharges values associated with customers with zero tenure.
- Creating customer tenure and monthly charge categories.
- Defining a high-risk customer segment for further analysis.

## Key Findings

### 1. Overall Customer Churn

- Total customers: **7,043**
- Churned customers: **1,869**
- Overall churn rate: **26.54%**
- Retention rate: **73.46%**

### 2. Contract Type and Churn

| Contract Type | Churn Rate |
|---|---:|
| Month-to-month | 42.71% |
| One year | 11.27% |
| Two year | 2.83% |

Customers with month-to-month contracts had substantially higher observed churn rates than those on longer-term contracts.

### 3. Customer Tenure

Customers in their first six months had a churn rate of **52.94%**, compared with **9.51%** among customers with 49–72 months of tenure.

This highlights the importance of investigating early customer experiences.

### 4. Payment Method

Customers paying by electronic check had the highest churn rate at **45.29%**, compared with **15.24%** among customers using automatic credit card payments.

### 5. High-Risk Customer Segment

A customer segment was defined using two characteristics:

- Month-to-month contract
- Customer tenure of six months or less

The analysis identified:

| Metric | Result |
|---|---:|
| Customers in segment | 1,413 |
| Churned customers in segment | 780 |
| Segment churn rate | 55.20% |
| Share of total customers | 20.06% |
| Contribution to total churn | 41.73% |

Although this segment represented approximately **20% of all customers**, it accounted for nearly **42% of churned customers**.

This makes it an important segment for targeted retention investigation.

## Power BI Dashboard

An interactive three-page Power BI dashboard was developed to communicate the findings.

### Page 1 — Customer Retention Overview

Provides an executive summary of overall churn, retention and churn patterns across contract types and internet services.

### Page 2 — Customer Churn Drivers

Explores the relationships between churn and customer tenure, monthly charges, payment methods and technical support.

### Page 3 — Customer Segmentation & Retention Opportunities

Highlights high-risk customer segments, their contribution to overall churn and potential retention actions.

Dashboard screenshots will be added here.

## Recommendations

Based on the analysis, the following actions could be explored:

1. **Improve early customer engagement:** Strengthen onboarding and proactive support during the first six months.
2. **Encourage longer-term contracts:** Explore incentives for customers who may benefit from annual subscription plans.
3. **Investigate service-related churn:** Review the experiences of fiber-optic customers and customers without technical support.
4. **Review payment experiences:** Investigate potential friction associated with electronic check payments and promote convenient payment options.
5. **Prioritise high-risk segments:** Focus retention experiments on new month-to-month customers, who contribute disproportionately to overall churn.

These recommendations are based on observed associations in the dataset and would require further testing to establish their effectiveness.

## Conclusion

The analysis identified clear differences in churn across customer segments, particularly among new customers with month-to-month contracts.

By combining Python, SQL and Power BI, this project demonstrates an end-to-end analytics workflow, from data preparation and exploratory analysis to business reporting and actionable recommendations.

## Data Source

IBM Telco Customer Churn dataset, commonly available through IBM's sample datasets and public analytics learning resources.
