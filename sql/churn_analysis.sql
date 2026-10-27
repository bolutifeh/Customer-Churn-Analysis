-- CUSTOMER CHURN ANALYSIS
-- Dataset: IBM Telco Customer Churn
-- SQL Dialect: SQLite

-- QUESTION 1: What is the overall customer churn rate?
SELECT
    Churn,
    COUNT(*) AS Total_Customers,
    ROUND(
        100.0 * COUNT(*) /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS Percentage
FROM customers
GROUP BY Churn;


-- QUESTION 2: Which contract types have the highest churn rates?
SELECT
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate DESC;


-- QUESTION 3: How does customer tenure affect churn?
SELECT
    tenure_group,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY tenure_group
ORDER BY Churn_Rate DESC;


-- QUESTION 4: Which payment methods have the highest churn rates?
SELECT
    PaymentMethod,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;


-- QUESTION 5: Which customer segment should be prioritised for retention?
-- New monthly customers: tenure <= 6 months and month-to-month contract
SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Churn_Rate,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / (
            SELECT COUNT(*)
            FROM customers
            WHERE Churn = 'Yes'
        ),
        2
    ) AS Churn_Contribution
FROM customers
WHERE tenure <= 6
    AND Contract = 'Month-to-month';