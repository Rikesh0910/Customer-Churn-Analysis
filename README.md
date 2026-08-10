# Customer Churn Analysis

An end-to-end customer analytics project analyzing **6,418 customers** to identify churn patterns, understand customer behavior, and identify factors associated with customer attrition.

## Business Objective

Analyze customer demographics, subscription details, services, payment methods, and tenure to identify high-risk customer segments and understand the major drivers of churn.

## Tools

**Python | Pandas | NumPy | Matplotlib | Seaborn | Scikit-learn | Power BI**

## Analysis

- Cleaned and prepared customer data using Python
- Performed exploratory data analysis to identify churn patterns
- Analyzed churn across age groups, gender, tenure, contract type, payment method, and internet type
- Compared churn behavior across different customer services
- Analyzed churn by state and customer segment
- Identified the major reasons behind customer churn
- Built a machine learning model to predict customer churn
- Developed an interactive Power BI dashboard for churn monitoring

## Key Insights

- **6,418** total customers analyzed
- **1,732** customers churned
- Overall churn rate of **27.0%**
- **Month-to-month** customers had the highest churn rate at **46.5%**
- Customers using **fiber optic** internet had a **41.1%** churn rate
- Customers paying by **mailed check** had the highest payment-method churn rate at **37.8%**
- Customers aged **under 20** had the highest churn rate at **31.6%**
- Customers with **less than 6 months** of tenure had a **26.4%** churn rate
- **Competitor-related factors** were among the leading reported churn reasons

## Dashboard

### Customer Churn Overview

![Customer Churn Overview](Images/Customer_Churn_Analysis_page-0001.jpg)

### Churn Prediction

![Churn Prediction](Images/Customer_Churn_Analysis_page-0002.jpg)

### Churn Reasons

![Churn Reasons](Images/Customer_Churn_Analysis_page-0003.jpg)

## Key Findings

- Customers on **month-to-month contracts** represent a significantly higher churn-risk segment.
- **Fiber optic customers** showed substantially higher churn than other internet types.
- Payment method and customer tenure were useful indicators of churn behavior.
- Competitor-related issues were a major contributor to reported churn.
- The analysis can help prioritize retention efforts toward high-risk customer segments.

## Machine Learning

A classification model was developed to predict whether a customer would churn.

**Target:** Customer Churn

The model was evaluated using classification performance metrics and used to identify customers with a higher likelihood of churn.

## Project Structure

```text
Customer-Churn-Analysis/
│
├── data/
├── notebooks/
├── Images/
├── powerbi/
├── README.md
└── requirements.txt
