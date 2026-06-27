# Customer Churn Prediction & Analytics Dashboard

## Overview

Customer churn is a critical challenge for subscription-based businesses, directly impacting revenue and long-term growth. This project focuses on analyzing customer behavior, identifying churn patterns, predicting customer churn using Machine Learning, and visualizing key business insights through an interactive Power BI dashboard.

The project combines Data Analytics, SQL, Machine Learning, and Business Intelligence techniques to help organizations improve customer retention and make data-driven decisions.

---

## Project Objectives

- Analyze customer demographics and service usage patterns.
- Identify key factors influencing customer churn.
- Perform Exploratory Data Analysis (EDA).
- Generate business insights using SQL queries.
- Build a Machine Learning model for churn prediction.
- Develop an interactive Power BI dashboard.
- Provide actionable recommendations to reduce customer churn.

---

## Dataset Information

**Dataset:** Telco Customer Churn Dataset

**Source:** Kaggle

**Total Records:** 7,043 Customers

### Features Include
- Customer Demographics
- Senior Citizen Status
- Partner & Dependents
- Internet Services
- Contract Type
- Payment Method
- Monthly Charges
- Total Charges
- Customer Tenure
- Churn Status

---

## Tools & Technologies

| Category | Technologies |
|-----------|-------------|
| Programming Language | Python |
| Database | MySQL |
| Dashboard & Reporting | Power BI |
| Machine Learning | Scikit-Learn |
| Data Analysis | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn |
| Version Control | Git & GitHub |

---

## Project Workflow

### 1. Data Collection
- Imported the Telco Customer Churn dataset.
- Reviewed dataset structure and attributes.

### 2. Data Cleaning
- Handled missing values.
- Removed duplicate records.
- Corrected data types.
- Prepared data for analysis and modeling.

### 3. Exploratory Data Analysis (EDA)
- Churn Distribution Analysis
- Contract-wise Customer Analysis
- Revenue Analysis
- Customer Tenure Analysis
- Correlation Analysis

### 4. SQL-Based Analysis
- Customer KPI Analysis
- Churn Rate Calculation
- Revenue Impact Analysis
- Customer Segmentation
- High-Risk Customer Identification

### 5. Machine Learning Model Development
Models Evaluated:
- Logistic Regression
- Decision Tree Classifier
- Random Forest Classifier

### 6. Dashboard Development
An interactive Power BI dashboard was created to visualize:
- Customer Churn Metrics
- Customer Segmentation
- Revenue Analysis
- Predictive Insights

---

## Machine Learning Approach

### Data Preprocessing
- Label Encoding for categorical variables.
- Feature Scaling using StandardScaler.
- Train-Test Split for model evaluation.

### Model Evaluation Metrics
- Accuracy
- Precision
- Recall
- F1 Score
- ROC-AUC Score

### Best Performing Model
**Random Forest Classifier**

The Random Forest model provided the best performance and was selected for churn prediction.

---

## Power BI Dashboard Features

### Executive Summary
- Total Customers
- Total Churned Customers
- Churn Rate
- Revenue Impact
- Contract Analysis

### Customer Analysis
- Churn by Payment Method
- Churn by Internet Service
- Churn by Customer Segment
- Customer Tenure Analysis

### Revenue Analysis
- Revenue by Contract Type
- Revenue Loss Analysis
- Customer Revenue Segmentation

### Machine Learning Insights
- Churn Probability Distribution
- High-Risk Customer Identification
- Predictive Analysis

---

## Key Business Insights

- Customers with shorter tenure are more likely to churn.
- Month-to-Month contracts show higher churn risk than long-term contracts.
- Customers with higher monthly charges exhibit increased churn probability.
- Customer retention strategies should focus on early-stage customers.
- Predictive analytics can help proactively reduce customer churn.

---

## Business Recommendations

- Encourage customers to adopt long-term contracts.
- Improve onboarding experiences for new customers.
- Introduce loyalty and retention programs.
- Monitor customers with high monthly charges.
- Use predictive analytics to identify and engage high-risk customers.

---

## Future Enhancements

- Real-Time Churn Prediction System
- Deep Learning-Based Prediction Models
- Automated Retention Recommendation Engine
- Cloud Deployment using Azure or AWS
- Customer Lifetime Value Analysis

---

## Project Structure

```text
Customer-Churn-Analysis/
│
├── data/
│   ├── telco_churn.csv
│   └── telco_churn_cleaned.csv
│
├── notebooks/
│   └── churn_eda.ipynb
│
├── ml_model/
│   ├── churn_model.py
│   └── churn_predictions.csv
│
├── sql/
│   └── churn_queries.sql
│
├── dashboard/
│   └── powerbi project(2) .pbix
│
├── charts/
│   ├── churn_distribution.png
│   ├── churn_by_contract.png
│   ├── confusion_matrix.png
│   └── feature_importance.png
│
└── README.md
```

---

## Conclusion

This project demonstrates how Data Analytics, SQL, Machine Learning, and Power BI can be integrated to predict customer churn and generate valuable business insights. The solution helps organizations understand customer behavior, identify churn risks, and make informed decisions to improve customer retention and business performance.

---

## Author

### ANS Pranav Chaitanya

**Data Analyst | Business Analyst**


LinkedIn: https://www.linkedin.com/in/anspranavchaitanya



Email: anspranavchaitanya@gmail.com

---

⭐ If you found this project useful, consider giving the repository a star.
