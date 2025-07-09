## Workforce Analytics SQL Project

This is a SQL-based analysis project where I explored real-world employee data to uncover patterns in attrition, salary trends, department-level performance, and workforce demographics.


## Project Objective:

Use SQL to analyze employee-related data and extract actionable workforce insights such as:
- Which departments or roles have the highest attrition?
- How does salary vary across departments and experience levels?
- Does a performance rating affect promotion?
- What is the gender distribution in the organization?


## Dataset:

Source: [IBM HR Analytics Dataset on Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
Format: CSV (imported into PostgreSQL)
Fields: Age, Attrition, BusinessTravel, Department, Education, JobRole, MonthlyIncome, OverTime, YearsAtCompany, and more.


## Tools Used:

Database: PostgreSQL
Editor: pgAdmin 
File: workforce_analytics_project.sql contains all queries


## Key SQL Queries:

| Query Number | Description |
|--------------|-----------|
|      1       | Overall attrition summary |
|      2       | Average monthly income by department |
|      3       | Gender distribution |
|      4       | Attrition count by job role |
|      5       | Salary by total working years and department |
|      6       | Attrition breakdown by department |
|      7       | Promotion delay by performance rating and overtime |
|      8       | Salary & hourly rate by education field, job role, and level |


## Sample Insight Highlights:

-  **Attrition Trends by Role:**  
  The roles of *Sales Executive* and *Laboratory Technician* had the highest attrition rates, making up over 40% of total exits. These roles are likely more susceptible to burnout, lower engagement, or external job opportunities, indicating a need for targeted retention strategies.

-  **Promotion vs Performance Mismatch:**  
  Employees with the highest performance ratings (4) had an average of **2.5+ years since their last promotion**, similar to those with average ratings. This suggests that promotions are not strongly aligned with performance, which could affect motivation and retention.

-  **Salary & Tenure Correlation:**  
  Employees with 8–12 years of experience earned significantly more than their peers, particularly in R&D and Sales. However, income growth plateaued after 15 years, indicating a potential ceiling effect that may impact long-term retention or morale.

-  **Workforce Diversity Snapshot:**  
  The overall gender ratio is approximately 60:40 (Male: Female). However, technical roles like *Research Scientist* and *Manufacturing Director* had notably higher male representation, while roles like *HR* and *Healthcare Rep* skewed more female, hinting at occupational segmentation.

- **OverTime and Attrition Connection:**  
Over 70% of employees who left the company had reported working overtime, compared to less than 40% among retained employees. This suggests workload or work-life balance issues might be a major factor behind attrition.


## Future Enhancements:

- Add interactive dashboards using Power BI or Tableau
- Automate queries with Python & PostgreSQL connector


## How to Use This Project:

1. Create the table using the `CREATE TABLE` section
2. Import the dataset from Kaggle
3. Run each query to generate insights
4. Extend queries or visualize output as needed


## Author:

**Pranjal Narvekar**
Human Resources and Business Analytics Student | Passionate about HR Data & SQL
Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pranjalnnarvekar24)


## License:

This project is for educational and showcase purposes only. The dataset belongs to IBM/Kaggle.
