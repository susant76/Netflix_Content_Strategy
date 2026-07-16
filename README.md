
# Netflix Content Strategy & Market Intelligence

## Project Overview

Netflix has one of the world's largest streaming libraries, offering thousands of Movies and TV Shows across different countries, genres, and audience segments. Understanding this content library can help uncover trends in content acquisition, audience targeting, and global market expansion.

This project performs an end-to-end data analysis of Netflix's content catalog using **Python** and **SQL**. It covers the complete analytics workflow, from data cleaning and feature engineering to exploratory data analysis, business insights, and SQL-based querying.

The objective is to demonstrate how data-driven insights can support strategic decision-making in the streaming industry.

---

## Business Problem

As Netflix continues to expand globally, understanding its content library becomes increasingly important. This project aims to answer questions such as:

* What type of content dominates Netflix?
* How has Netflix's content library grown over time?
* Which countries contribute the most content?
* Which genres are most popular?
* What audience segments does Netflix primarily target?
* Which directors contribute the most content?
* What business insights can be derived from the available data?

---

## Dataset

* **Source:** Kaggle – Netflix Dataset
* **Records:** ~8,800 titles
* **Attributes:** Title, Type, Director, Cast, Country, Rating, Duration, Genre, Release Year, Date Added, Description, and more.

---

## Project Objectives

* Clean and preprocess the raw dataset.
* Handle missing values and duplicates.
* Perform feature engineering to create business-ready variables.
* Conduct Exploratory Data Analysis (EDA).
* Build meaningful visualizations.
* Answer business questions using Python and SQL.
* Generate actionable business insights and recommendations.

---

# Technologies Used

| Category             | Tools                              |
| -------------------- | ---------------------------------- |
| Programming Language | Python                             |
| Database             | MySQL                              |
| Libraries            | Pandas, NumPy, Matplotlib, Seaborn |
| Environment          | Jupyter Notebook                   |
| SQL Tool             | MySQL Workbench                    |
| Version Control      | Git & GitHub                       |

---

# Project Workflow

```
Raw Netflix Dataset
        │
        ▼
Data Cleaning
        │
        ▼
Feature Engineering
        │
        ▼
Exploratory Data Analysis
        │
        ▼
Business Insights
        │
        ▼
SQL Analysis
        │
        ▼
Strategic Recommendations
```

---

# Data Cleaning

The following preprocessing steps were performed:

* Removed duplicate records.
* Handled missing values.
* Converted `date_added` to datetime format.
* Standardized categorical values.
* Extracted numerical values from the duration column.
* Created business-ready features.

---

# Feature Engineering

New columns created during the analysis include:

* `year_added`
* `month_added`
* `month_name`
* `day_added`
* `content_age`
* `years_to_netflix`
* `decade`
* `duration_num`
* `duration_type`
* `primary_genre`

These engineered features simplified business analysis and SQL querying.

---

# Exploratory Data Analysis

The project investigates several business questions, including:

### Content Overview

* Total number of titles
* Movies vs TV Shows
* Content distribution
<img width="763" height="511" alt="image" src="https://github.com/user-attachments/assets/0c9c3168-89c0-4861-b2ae-d64886f78352" />

### Growth Analysis

* Content added each year
* Monthly content additions
* Peak growth years
* Decade-wise content distribution
<img width="1514" height="743" alt="image" src="https://github.com/user-attachments/assets/7397c86e-1527-4ba1-a3c4-24d70806bb55" />

### Market Intelligence

* Top contributing countries
* Country-wise Movies and TV Shows
* Global content distribution
<img width="1118" height="570" alt="image" src="https://github.com/user-attachments/assets/76ca9d8d-4e1f-4e59-af32-381a0cb9012b" />

### Audience & Content Intelligence

* Rating distribution
* Most common genres
* Average movie duration
* TV Show season distribution
* Genre comparison
<img width="1054" height="692" alt="image" src="https://github.com/user-attachments/assets/fb473de6-8c54-476d-a309-4dfd2cf2e99d" />
<img width="890" height="483" alt="image" src="https://github.com/user-attachments/assets/83fc9818-cbb3-4220-aece-6e93beeadf1c" />


### Creator Intelligence

* Top directors
* Most frequent actors
* Director contribution analysis

---

# SQL Analysis

The cleaned dataset was imported into MySQL to perform SQL-based business analysis.

The SQL section demonstrates:

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* HAVING
* Aggregate Functions
* CASE Statements
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions

  * RANK()
  * ROW_NUMBER()
  * LAG()
  * SUM() OVER()

More than **20 business-oriented SQL queries** were written to derive meaningful insights from the dataset.

---

# Key Insights

Some important findings include:

* Movies constitute the majority of Netflix's content library.
* Content additions grew rapidly until the late 2010s.
* The United States and India contribute the largest share of titles.
* Drama, Comedy, and International Movies are among the most common genres.
* Netflix primarily targets mature audiences.
* Most TV Shows consist of a single season.
* A relatively small number of directors contribute multiple titles.

---

# Business Recommendations

Based on the analysis:

* Continue investing in high-performing genres.
* Expand content production in emerging international markets.
* Increase investment in successful original TV Shows.
* Strengthen collaborations with high-performing creators.
* Diversify family-friendly content to reach a broader audience.

---

# Repository Structure

```text
Netflix-Content-Strategy-and-Market-Intelligence/

│── Netflix_Content_Strategy_And_Market_Intelligence.ipynb
│── netflix_cleaned.csv
│── business_queries.sql
│── requirements.txt
│── README.md
```

---

# Future Improvements

Potential extensions of this project include:

* Interactive Power BI Dashboard
* Tableau Dashboard
* Machine Learning-based Recommendation System
* Content Popularity Prediction
* Sentiment Analysis using Reviews
* Time Series Forecasting

---

# Learning Outcomes

Through this project, I gained practical experience in:

* Data Cleaning
* Feature Engineering
* Exploratory Data Analysis
* Data Visualization
* Business Storytelling
* SQL Querying
* Business Intelligence
* GitHub Project Documentation

---

# Author

**Susant Mishra**

If you found this project interesting or have suggestions for improvement, feel free to connect or provide feedback.
