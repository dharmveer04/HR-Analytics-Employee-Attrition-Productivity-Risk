SELECT * FROM hr_emp_attrition.`hr-employee-attrition` limit 5;
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS employees_active
FROM hr_emp_attrition.`hr-employee-attrition`;

 select Department ,count(*) as total_employees,
 sum(case when Attrition = 'Yes' then 1 else 0 end) as left_employees
 from hr_emp_attrition.`hr-employee-attrition`
 group by Department
 order by left_employees desc;
  
  SELECt JobSatisfaction, COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
FROM hr_emp_attrition.`hr-employee-attrition`
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

select OverTime , count(*) as total_employees,
sum(case when Attrition = 'Yes' then 1 else 0 end) as left_employees
from hr_emp_attrition.`hr-employee-attrition`
group by OverTime;

SELECT WorkLifeBalance,COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
FROM hr_emp_attrition.`hr-employee-attrition`
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

SELECT JobRole,COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
FROM hr_emp_attrition.`hr-employee-attrition`
GROUP BY JobRole
ORDER BY employees_left DESC;

SELECT YearsAtCompany,COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
FROM hr_emp_attrition.`hr-employee-attrition`
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

SELECT
    CASE
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome BETWEEN 3000 AND 7000 THEN 'Medium Income'
        ELSE 'High Income'
    END AS income_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
FROM hr_emp_attrition.`hr-employee-attrition`
GROUP BY income_group;

SELECT
    PerformanceRating,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left
FROM hr_emp_attrition.`hr-employee-attrition`
GROUP BY PerformanceRating
ORDER BY PerformanceRating;

SELECT
    EmployeeNumber,
    Department,
    JobRole,
    JobSatisfaction,
    WorkLifeBalance,
    OverTime,
    MonthlyIncome
FROM hr_emp_attrition.`hr-employee-attrition`
WHERE JobSatisfaction <= 2
  AND OverTime = 'Yes'
  AND Attrition = 'Yes';



