## Workforce Analytics SQL Project
This project demonstrates a fully normalized HR analytics database using PostgreSQL and SQL, structured to derive meaningful workforce insights from the IBM HR Analytics Attrition dataset.

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
