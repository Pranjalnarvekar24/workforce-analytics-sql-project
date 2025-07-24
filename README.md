## Workforce Analytics SQL Project

This project demonstrates how to build and analyze a normalized HR analytics database using SQL and PostgreSQL. The data is based on IBM’s HR Analytics Attrition dataset and is structured to extract actionable insights into the workforce. 

---

## Project Objective
- Analyze employee attrition patterns
- Measure salary growth across departments and tenure
- Evaluate the impact of overtime and training
- Examine promotion delays against performance
- Provide actionable workforce intelligence for HR decisions

---

## Dataset
- **Source**  [IBM HR Analytics Employee Attrition Dataset (Kaggle)](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Format**  CSV
- **Method**  Imported into PostgreSQL via a raw 'Employee_data' table and then normalized into structured sub-tables

---

## Database Design

| Table Name           | Purpose                                   |
|----------------------|-------------------------------------------|
| `Employee`           | Demographics (age, gender, etc.)          |
| `Job_Details`        | Role, department, experience              |
| `Education`          | Education level, field, companies worked  |
| `Compensation`       | Monthly income, salary hike, stock option |
| `Engagement`         | Satisfaction scores, performance          |
| `Training_Attrition` | Attrition status, overtime, training      |

 All tables are linked via `Employee_ID`

---

## Key SQL Queries & Insights

- **Attrition Summary:**
→ Shows ~16% attrition rate — critical for HR benchmarking.

- **Avg Salary by Department**
→ R&D and Sales outperform HR in pay by ~18–25%.

- **Gender Distribution**
→ 60:40 male: female ratio. Role-based gender gaps exist.

- **Attrition by Role**
→ Sales Execs & Lab Techs show the highest turnover.

- **Salary vs Experience**
→ Strong positive correlation (r ≈ 0.74). Income plateaus after 15 years.

- **Overtime vs Attrition**
→ 70% of employees who left the company were working overtime.

- **Promotion vs Performance**
→ Promotions do not strongly align with performance — indicates a potential gap in HR recognition policies.

- **Salary by Education & Role**
→ Technical fields dominate top salaries. HR fields earn ~30% less.

---

## HR Metrics Used

| **Metric**                 | **Description**                              | **Insight**                                                             |
| -------------------------- | -------------------------------------------- | ----------------------------------------------------------------------- |
| **Attrition Rate**         | % of employees who left the company          | \~16% attrition — above industry avg. Suggests employee dissatisfaction |
| **Average Tenure**         | Avg. number of years employees stay          | \~3.5 years — indicates potential retention challenges                  |
| **Overtime Rate**          | % of employees working overtime              | 35% overall; 70% among those who quit                                   |
| **Promotion Wait Time**    | Avg. time taken to get promoted              | \~5.8 years — shows slow growth, possibly reducing motivation           |
| **Training Hours**         | Avg. training hours per employee per year    | 2.8 hours — very low, likely impacting performance & engagement         |
| **Gender Diversity Ratio** | Ratio of male to female employees            | 60:40 — imbalance in tech and leadership roles                          |
| **Internal Mobility Rate** | % of employees who changed roles/departments | 5.2% — suggests limited lateral growth opportunities                    |
| **Average Salary Hike**    | Avg. % salary increment per year             | 11.2% — varies across departments & education levels                    |

--

## Future HR Recommendations

- Reduce Attrition Through Targeted Engagement Programs
- Develop personalized retention plans for high-risk roles, such as Sales Executives and Lab Technicians.
- Conduct stay interviews and exit surveys to identify specific dissatisfaction factors.
- Improve Employee Retention by Accelerating Career Paths
- Reduce average promotion time (currently 5.8 years) by implementing clear performance-based promotion tracks.
- Offer internal mobility programs and mentorship to encourage cross-functional growth.
- Rethink Overtime Policies
- With 70% of employees who left working overtime, consider:
- Hiring more staff in overburdened roles,
- Monitoring burnout through wellness surveys,
- Implementing time-off encouragement policies.
- Increase Investment in Employee Training
- Boost average training hours (currently only 2.8/year) to at least 20 hours/year.
- Focus on leadership, technical upskilling, and soft skills to support employee development and retention.
- Enhance Diversity, Equity & Inclusion (DEI)
- With a 60:40 gender split and gaps in technical roles, set hiring targets for underrepresented genders.
- Launch DEI workshops, unconscious bias training, and diverse interview panels.
- Reward High Performers with Timely Promotions
- Align performance scores more directly with promotion and compensation policies.
- Introduce quarterly performance bonuses or spot awards to recognize excellence.
- Increase Salary Transparency and Role-Based Equity
- Reduce pay gaps between departments (e.g., HR vs. R&D/Sales).
- Publish internal salary bands and explain the rationale behind hikes/promotions to build trust.
- Promote a Culture of Internal Mobility
- With only 5.2% internal transfers, consider launching an internal job board or “talent marketplace.”
- Encourage managers to recommend top talent for inter-departmental projects.

--

## Tools Used

**Database** : PostgreSQL
**Interface**: pgAdmin 4
**Language** : SQL

---

## Author

**Pranjal Narvekar**
MBA | Human Resource and Business Analytics | Passionate about HR Tech
[LinkedIn](https://www.linkedin.com/in/pranjalnnarvekar24)

---

## License
This project is for educational use. Dataset courtesy of IBM/Kaggle.
