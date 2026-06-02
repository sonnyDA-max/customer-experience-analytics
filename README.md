
# Customer Experience Analytics Platform

## Project Overview

This project analyzes airline passenger satisfaction data to identify the key drivers of customer experience and develop actionable business recommendations.

The analysis combines Python, SQL, Google Cloud Platform (GCP), and BigQuery to simulate an end-to-end analytics workflow commonly used in enterprise environments.

---

## Business Problem

Customer satisfaction is a critical indicator of customer loyalty and business performance.

The objective of this project was to:

* Understand overall customer satisfaction levels
* Identify the factors most strongly associated with customer satisfaction
* Evaluate customer experience across different customer segments
* Generate business recommendations supported by data

---

## Tools & Technologies

### Analytics

* Python
* Pandas
* Matplotlib
* Jupyter Notebook

### Cloud & Data Warehousing

* Google Cloud Platform (GCP)
* Google Cloud Storage
* BigQuery

### Query Language

* SQL (Google BigQuery)

### Version Control

* Git
* GitHub

---

## Project Architecture

CSV Dataset
→ Python Data Profiling & Exploratory Analysis
→ Google Cloud Storage
→ BigQuery
→ SQL Analytics
→ Business Insights

---

## Analysis Performed

### Data Quality Assessment

* Dataset structure validation
* Missing value analysis
* Data completeness assessment

### Customer Satisfaction Analysis

* Satisfaction distribution analysis
* Customer sentiment evaluation

### Service Driver Analysis

* Online Boarding
* Inflight Entertainment
* Seat Comfort
* Food & Drink
* Inflight WiFi

### Customer Segmentation

* Loyal vs Disloyal Customers
* Travel Class Analysis
* Satisfaction comparison across customer groups

### BigQuery SQL Analysis

* Data validation
* Satisfaction KPIs
* Service driver assessment
* Customer segmentation
* Travel class analysis

---

## Key Findings

### 1. Customer Satisfaction Opportunity

Approximately 56.7% of customers were classified as Neutral or Dissatisfied.

### 2. Service Quality Drives Satisfaction

The strongest satisfaction differentiators were:

* Online Boarding
* Inflight Entertainment
* Seat Comfort

### 3. Customer Loyalty Matters

Loyal customers reported significantly higher satisfaction levels than disloyal customers.

### 4. Travel Class Influences Satisfaction

Business Class customers demonstrated substantially higher satisfaction rates than Economy passengers.

### 5. Delays Contribute to Dissatisfaction

Customers with lower satisfaction reported higher average arrival delays, although service quality factors exhibited stronger relationships with satisfaction outcomes.

---

## Repository Structure

```text
customer-experience-analytics
│
├── README.md
├── notebooks
│   └── 01_Data_Profiling.ipynb
│
├── sql
│   └── customer_experience_analysis.sql
│
├── data
│
├── docs
│
└── dashboard
```

---

## Future Enhancements

* Interactive Power BI Dashboard
* Advanced Customer Segmentation
* Customer Satisfaction Prediction Model
* Automated Data Pipeline using GCP

---

## Author

Analytics portfolio project developed to demonstrate practical skills in:

* Python
* SQL
* BigQuery
* Data Analysis
* Business Intelligence
* Cloud Analytics
