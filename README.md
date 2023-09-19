# HR_Data_Analysis
HR Data Analysis Project

Welcome to the HR Data Analysis project repository. This project utilizes Tableau and SQL to analyze and visualize human resources data, providing valuable insights into our organization's workforce. 

## Project Highlights:

- **Data Analysis:** Explore key HR metrics, trends, and patterns to make informed decisions related to talent management and employee engagement.

- **Interactive Visualizations:** Utilize Tableau to create interactive and insightful data visualizations that enable easy exploration of HR data.

- **SQL Queries:** Leverage SQL to efficiently query and manipulate HR data, enabling deeper analysis and reporting.

- **Insightful Reports:** Generate reports and summaries to facilitate data-driven decision-making processes within the HR department.

## Key Features:

- [x] Interactive Tableau dashboards
- [x] SQL scripts for data manipulation and analysis
- [x] Comprehensive HR data visualizations
- [x] Insights and recommendations for HR strategy

Feel free to explore the project's code, visualizations, and findings. We welcome contributions, suggestions, and collaboration from the community to further enhance our understanding of HR data.


## Let's Start building this with Tableau first  

1.  Counting Total Employess

Query : 

```select count(distinct emp_no) as Employee_Count from hrdata;```


2.  Counting Total Attrition 

Query : 

```select count(attrition) as Attrition_Count from hrdata where attrition = 1 ;```


3. Counting Attrition Rate
   
Query : 

```select ( (select count(attrition) from hrdata where attrition = 1 )*1.0 /  sum(employee_count))*100  as 'Attrition Rate' from hrdata;```


4. Active Employees 

Query : 

```select count(active_employee)  as 'Avg. Age' from hrdata where active_employee = 1; ```


5. Avgerage Age

Query : 

```select sum(age) / count(emp_no) as 'Active Employee' from hrdata where active_employee = 1;```


6. Attrition By Gender 

Query : 

```select gender , count(attrition) as Attrition_Count from hrdata where attrition= 1 group by gender  order by count(attrition) desc;```


7. Department wise Attrition 

Query : 

```select department , count(attrition) as Attrition_Count from hrdata  where attrition= 1  group by department  order by count(attrition) desc;```


8. No of employees by Age Group 

Query : 

```select age , count(attrition) as Attrition_Count from hrdata where attrition= 1 group by age order by count(attrition) desc ;```

 
9. Education Field Wise Attrition

Query : 

```select education , count(attrition) as Attrition_Count from hrdata where attrition= 1 group by education order by count(attrition) desc;```


10. Job Satisfaction Rating

Query : 

```select  job_role , job_satisfaction, count(job_satisfaction) as 'Total Rating'  from hrdata group by job_satisfaction, job_role ;```
