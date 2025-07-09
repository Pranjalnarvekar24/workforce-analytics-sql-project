CREATE TABLE Employee_data(
Age INT,
Attrition VARCHAR (50),
Business_travel VARCHAR (50),
Department VARCHAR (50),
Distance_from_home INT,
Education INT,
Education_Field VARCHAR (100),
Employee_Count INT,
Employee_number SERIAL PRIMARY KEY,
Environment_satisfaction INT,
Gender VARCHAR (50),
Hourly_Rate INT,
Job_Involvement INT,
Job_Level INT,
Job_role VARCHAR (50),
Job_satisfaction INT,
Marital_Status VARCHAR (20),
Monthly_Income INT,
Number_of_companies_worked INT,
Over_18 VARCHAR (10),
Overtime VARCHAR (10),
Percent_salary_hike INT,
Performance_Rating INT,
Relationship_satisfaction INT,
Standard_hours INT,
Stock_optionlevel INT,
Total_working_years INT,
TrainingTimesLastYear INT,
WorkLifeBalance INT,
YearsAtCompany INT,
YearsInCurrentRole INT,
YearsSinceLastPromotion INT,
YearsWithCurrManager INT
);

Query 1: Overall attrition summary
--Overall attrition summary (left vs stayed)
SELECT attrition, COUNT(*) 
FROM employee_data
GROUP BY attrition;

Query 2: Average Monthly Income by Department
--Avg monthly income by department
SELECT department, ROUND(AVG(monthlyincome),2) 
FROM employee_data
GROUP BY department;

Query 3: Gender Distribution
--Gender distribution in the workforce
SELECT gender,COUNT(*) 
FROM employee_data
GROUP BY gender;

Query 4: Attrition Count by Job Role
-- Attrition count by job role
SELECT jobrole, COUNT(CASE WHEN attrition='Yes' THEN 1 END) AS attrition_count
FROM employee_data
GROUP BY jobrole;

Query 5: Salary by Total Working Years & Department
--Salary vs total working years by department
SELECT department,totalworkingyears, ROUND(AVG(monthlyincome),0) AS avg_monthly_income
FROM employee_data
GROUP BY department, totalworkingyears
ORDER BY department, totalworkingyears DESC;

Query 6: Attrition vs Department Breakdown
--Attrition breakdown by department
SELECT department, attrition, COUNT(overtime)
FROM employee_data
GROUP BY department, attrition
ORDER BY department;

Query 7: Promotion Delay by Performance, Attrition & Overtime
--Promotion delay vs performance & overtime
SELECT department, performancerating, attrition, overtime,
ROUND(AVG(yearssincelastpromotion),1) AS avg_last_year_promotion
FROM employee_data
GROUP BY department, performancerating, attrition, overtime
ORDER BY department;

Query 8: Salary & Hourly Rate by Education Field, Role, and Level
--Salary & hourly rate by education field and job level
SELECT educationfield, joblevel, jobrole, yearsincurrentrole, 
ROUND(AVG(hourlyrate),2) AS avg_hourlyrate,
ROUND(AVG(monthlyincome),2) AS avg_monthlyincome
FROM employee_data
GROUP BY educationfield,jobrole, joblevel, yearsincurrentrole
ORDER BY educationfield, joblevel DESC ,jobrole, avg_monthlyincome DESC, yearsincurrentrole;