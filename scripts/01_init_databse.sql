/*
=============================================================
Create Database and tables
=============================================================
Script Purpose:
    This script creates a new database named 'customer_churn', create the table and insert the data.
	
*/

Drop table dbo.telecom_customers;
CREATE TABLE telecom_customers (
    customerID VARCHAR(50),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(20)
);

BULK INSERT telecom_customers
FROM 'C:\Users\Saksh\Downloads\WA_Fn-UseC_-Telco-Customer-Churn.csv'
WITH (
    FIRSTROW = 2,              -- Skip header row
    FIELDTERMINATOR = ',',     -- CSV separator
    ROWTERMINATOR = '\n',      -- New line
    TABLOCK
);
