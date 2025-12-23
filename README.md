# online-retail-data-engineering
End-to-end data engineering pipeline using PySpark, PostgreSQL, and dbt
# Online Retail Data Engineering Project

End-to-end data engineering pipeline built using **PySpark**, **PostgreSQL**, and **dbt** to process, transform, and model retail transaction data into analytics-ready datasets.

---

## 📌 Project Overview

This project demonstrates a complete **data engineering workflow**, starting from raw CSV ingestion to analytics-ready tables using modern data engineering tools and best practices.

Key objectives:
- Clean and transform large-scale retail data
- Design a dimensional data model (star schema)
- Load data into a PostgreSQL data warehouse
- Build dbt staging and mart models for analytics

---

## 🏗️ Architecture

```text
Raw CSV Dataset
      |
      v
PySpark (Cleaning & Transformation)
      |
      v
PostgreSQL (Fact & Dimension Tables)
      |
      v
dbt (Staging + Mart Models)
      |
      v
Analytics / Reporting
🛠️ Tech Stack
PySpark – large-scale data cleaning and transformations

PostgreSQL – relational data warehouse

dbt – data modeling, transformations, and testing

Python – orchestration and scripting

GitHub – version control and project management

📂 Project Structure
text
Copy code
online-retail-data-engineering/
├── Online_Retail_Data_Engineering_Pipeline.ipynb
├── README.md
└── retail_dbt/
    ├── dbt_project.yml
    └── models/
        ├── staging/
        │   ├── sources.yml
        │   ├── stg_dim_customer.sql
        │   ├── stg_dim_product.sql
        │   ├── stg_dim_date.sql
        │   └── stg_fact_orders.sql
        └── marts/
            └── fct_revenue_by_country.sql
🔄 Data Pipeline Steps
1. Data Ingestion
Source: Online Retail CSV dataset

Loaded into PySpark for distributed processing

2. Data Cleaning & Transformation (PySpark)
Removed null and invalid records

Handled malformed timestamps

Filtered negative quantities and prices

Deduplicated transactions

Generated derived columns (invoice date, total amount)

3. Data Warehouse Design
Implemented a star schema

Fact table: fact_orders

Dimension tables: dim_customer, dim_product, dim_date

Loaded cleaned data into PostgreSQL

4. dbt Modeling
Staging models for standardized transformations

Mart model for business-level analytics

Ensured analytics-ready datasets

🧪 Data Quality & Validation
Applied dbt best practices:

Clear separation of staging and marts

Consistent naming conventions

Ensured correctness of dimensional keys

Validated transformed data outputs

📊 Example Analytics
Total revenue by country

Order volume trends over time

Customer purchasing behavior

Mart model:

fct_revenue_by_country

🚀 How to Run (High-Level)
bash
Copy code
# Run PySpark pipeline to clean and load data
# Configure dbt profile locally (credentials not included)

dbt run
dbt test
🔐 Notes
Raw datasets are not included in this repository

dbt profiles and database credentials are excluded for security reasons

This project focuses on data engineering design and transformations

🎯 Key Learnings
Built an end-to-end data engineering pipeline from scratch

Applied dimensional modeling and data warehousing concepts

Gained hands-on experience with PySpark and dbt

Practiced clean project structuring and version control

👤 Author
Sai Prakash Goud
Aspiring Data Engineer


💡 Future Enhancements
Add dbt tests (not_null, unique)

Add orchestration using Airflow

Add BI dashboards (Power BI / Tableau)
