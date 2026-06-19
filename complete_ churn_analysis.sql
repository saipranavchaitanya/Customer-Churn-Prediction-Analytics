-- Create database
CREATE DATABASE churn_analysis;
USE churn_analysis;
-- Create table
CREATE TABLE customers (
    id               INT AUTO_INCREMENT PRIMARY KEY,
    gender           VARCHAR(10),
    SeniorCitizen    VARCHAR(5),
    Partner          VARCHAR(5),
    Dependents       VARCHAR(5),
    tenure           INT,
    InternetService  VARCHAR(20),
    Contract         VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod    VARCHAR(50),
    MonthlyCharges   DECIMAL(10,2),
    TotalCharges     DECIMAL(10,2),
    Churn            VARCHAR(5)
);
-- load dataset 
-- right click on database table and select table data import wizard alter
-- import data 
-- table data 
select * from TelcoCustomerChurn;
-- Total customers
SELECT COUNT(*) AS Total_Customers FROM telcocustomerchurn;-- Output: 7043
-- Churn vs Retained with percentage
SELECT
    Churn,
    COUNT(*) AS Customer_Count,
    ROUND(COUNT(*) * 100.0 /
    (SELECT COUNT(*) FROM telcocustomerchurn),2) AS Pct
FROM telcocustomerchurn
GROUP BY Churn;
-- Overall churn rate
SELECT
    ROUND(SUM(CASE WHEN Churn='Yes'
    THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
    AS Churn_Rate_Percent
FROM telcocustomerchurn;
-- Output: 26.54%
-- Average charges & tenure by churn status
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly,
    ROUND(AVG(TotalCharges),2)  AS Avg_Total,
    ROUND(AVG(tenure),1)        AS Avg_Tenure
FROM telcocustomerchurn
GROUP BY Churn;
-- Churn rate by contract type
SELECT
    Contract,
    COUNT(*) AS Total,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        AS Churned,
    ROUND(SUM(CASE WHEN Churn='Yes'
        THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
        AS Churn_Rate
FROM telcocustomerchurn
GROUP BY Contract
ORDER BY Churn_Rate DESC;
-- month to month contract 3875
-- one year contract 1472
-- two year contract 1685
-- Monthly revenue lost from churn
SELECT
    ROUND(SUM(MonthlyCharges),2) AS Monthly_Lost,
    ROUND(SUM(TotalCharges),2)   AS Total_Lost
FROM telcocustomerchurn WHERE Churn='Yes';
-- total-lost 2862926.90
-- Churn by tenure groups
SELECT
    CASE
        WHEN tenure<=12 THEN '0-12 Months'
        WHEN tenure<=24 THEN '13-24 Months'
        WHEN tenure<=48 THEN '25-48 Months'
        ELSE '48+ Months'
    END AS Tenure_Group,
    COUNT(*) AS Total,
    ROUND(SUM(CASE WHEN Churn='Yes'
        THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
        AS Churn_Rate
FROM telcocustomerchurn
GROUP BY Tenure_Group
ORDER BY Churn_Rate DESC;
-- 4 tenure_groups  are 0-12,13-24,25-48,49+ groups
-- Top 20 high risk customers
SELECT customerID, Contract, tenure,
       MonthlyCharges, PaymentMethod
FROM telcocustomerchurn
WHERE Churn='Yes'
  AND MonthlyCharges > 70
  AND tenure < 12
ORDER BY MonthlyCharges DESC
LIMIT 20;
-- 20 high risk customers_id's