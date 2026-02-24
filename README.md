# Customer-Churn-Analysis
This project involved analyzing customer data to identify churn drivers and build a predictive model that helps anticipate customer attrition before it occurs.

The dataset consisted of ~7,000 customer records with demographic details, account information, service usage, and churn labels. After data cleaning and preprocessing, categorical variables were encoded and features were prepared for modeling.

During exploratory data analysis (EDA), I identified strong churn patterns related to:

-- Tenure (newer customers showed significantly higher churn)

-- Contract type (month-to-month customers churned more frequently)

-- Service add-ons and billing behavior

A classification model was built to predict churn and evaluated on a test set of 1,202 records.
Model performance results:

-- Accuracy: 84%

-- Precision (Churn class): 80%

-- Recall (Churn class): 63%

-- F1-Score (Churn class): 70%

The confusion matrix analysis highlighted the trade-off between identifying churned customers and minimizing false positives, reinforcing the importance of recall in churn-focused business scenarios.

Through this project, I gained hands-on experience in:

-- End-to-end churn analysis and prediction

-- Feature engineering and categorical data handling

-- Model evaluation using business-relevant metrics

-- Translating statistical outputs into actionable insights for customer retention

This project demonstrates my ability to combine data analysis, machine learning, and business understanding to solve real-world customer retention problems.
