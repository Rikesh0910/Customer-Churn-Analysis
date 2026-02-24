-- Data Exploration

SELECT
	Gender,
    COUNT(Gender) AS total_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_data), 2) AS gender_pct
FROM
	customer_data
GROUP BY Gender;

SELECT
	Contract,
    COUNT(Contract) AS total_contract,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_data), 2) AS contract_pct
FROM
	customer_data
GROUP BY contract;

SELECT
	Customer_Status,
    COUNT(customer_Status) AS total_count,
    ROUND(SUM(Total_Revenue), 2) AS total_revenue,
    ROUND(SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM customer_data) * 100.0, 2) revenue_pct
FROM
	customer_data
GROUP BY Customer_Status;

SELECT
	State,
    COUNT(State) AS total_count,
    ROUND(COUNT(*) / (SELECT COUNT(*) FROM customer_data) * 100.0, 2) AS state_pct
FROM
	customer_data
GROUP BY State
ORDER BY state_pct DESC;

SELECT DISTINCT
	Internet_Type
FROM
	prod_churn;
    
-- Data Cleaning

CREATE TABLE db_Churn.prod_Churn AS
SELECT
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    IFNULL(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    IFNULL(Multiple_Lines, 'No') AS Multiple_Lines,
    Internet_Service,
    IFNULL(Internet_Type, 'None') AS Internet_Type,
    IFNULL(Online_Security, 'No') AS Online_Security,
    IFNULL(Online_Backup, 'No') AS Online_Backup,
    IFNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    IFNULL(Premium_Support, 'No') AS Premium_Support,
    IFNULL(Streaming_TV, 'No') AS Streaming_TV,
    IFNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    IFNULL(Streaming_Music, 'No') AS Streaming_Music,
    IFNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    IFNULL(Churn_Category, 'Others') AS Churn_Category,
    IFNULL(Churn_Reason, 'Others') AS Churn_Reason
FROM db_Churn.customer_data;

-- Creating Views

CREATE VIEW v_churn_data AS 
SELECT
	*
FROM
	prod_churn
WHERE Customer_Status IN ("Churned", "Stayed");

CREATE VIEW v_join_data AS 
SELECT
	*
FROM
	prod_churn
WHERE Customer_Status IN ("Joined");


