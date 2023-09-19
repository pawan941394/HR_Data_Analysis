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


## Let's Start Visualization with Tableau First --


1.  Counting Total Employess

![1 employee_count](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/b534cfda-df17-4755-8582-1cd71f612de3)



2.  Counting Total Attrition 


![attrition count](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/b134ee6c-cca5-46c2-9b4a-909293077f2a)



3. Counting Attrition Rate
   

![attrition rate](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/dddb7b82-7672-4168-af1d-2fe6fe41a11b)


4. Active Employees 


![active employees](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/e91a3c24-2106-4ea3-9d02-ec1439f0b5a1)


5. Avgerage Age

![average age](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/f87adc51-cf3a-4dd0-87f3-0bd6a281f316)


6. Attrition By Gender 

![attrition by gender](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/2379dfac-7960-481d-a76c-68d53a50a2c9)


7. Department wise Attrition 

![department wise attrition](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/78c92f0f-7e97-488a-9b04-f6a0f74e3c95)



8. No of employees by Age Group 

![no of employees by age group](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/96165e8f-af0c-4ed9-8018-aadc06b8f0b4)



 
9. Education Field Wise Attrition


![education wise attrition](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/b3769e4c-04a9-421d-8855-4c1e5b403ffa)


10. Job Satisfaction Rating


![job satisfication rating](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/1661b7af-52d4-46bf-b5ed-06e0151f665c)

11. Attrition Rate by gender for different Age Groups

    
![attrition rate by gender for different age group](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/5d54fe76-137a-4063-be42-fc6cee557a50)


12. Final Result Dashboard 

![final Dashboard](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/106f5583-fea9-42c2-8486-ae4f715b046b)



## Let's Start Verify this Data with SQL  

1.  Counting Total Employess

Query : 

```select count(distinct emp_no) as Employee_Count from hrdata;```

Result : 

![1](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/5b093907-c1fb-4df3-927b-f6a0ee5d4b8e)

2.  Counting Total Attrition 

Query : 

```select count(attrition) as Attrition_Count from hrdata where attrition = 1 ;```

Result : 

![2](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/eada59e2-f791-41da-9bcd-e7e1d4ce6655)


3. Counting Attrition Rate
   
Query : 

```select ( (select count(attrition) from hrdata where attrition = 1 )*1.0 /  sum(employee_count))*100  as 'Attrition Rate' from hrdata;```

Result : 

![3](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/5f700387-faae-4e7c-a53c-a11724175403)


4. Active Employees 

Query : 

```select count(active_employee)  as 'Avg. Age' from hrdata where active_employee = 1; ```

Result : 

![4](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/6ad218c4-ea61-44b1-960f-c3265833450d)


5. Avgerage Age

Query : 

```select sum(age) / count(emp_no) as 'Active Employee' from hrdata where active_employee = 1;```

Result : 

![5](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/0858df0c-cb44-4448-a17c-d1c4ba527ad3)

6. Attrition By Gender 

Query : 

```select gender , count(attrition) as Attrition_Count from hrdata where attrition= 1 group by gender  order by count(attrition) desc;```

Result : 

![6](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/49f0d544-7a7c-4713-8719-d2906a8f5edc)

7. Department wise Attrition 

Query : 

```select department , count(attrition) as Attrition_Count from hrdata  where attrition= 1  group by department  order by count(attrition) desc;```

Result : 

![7](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/1f8e35db-569b-46d0-813f-093988a594b0)


8. No of employees by Age Group 

Query : 

```select age , count(attrition) as Attrition_Count from hrdata where attrition= 1 group by age order by count(attrition) desc ;```

Result : 

![8](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/efcee368-4109-4aaa-b22f-84a5e84a0e95)


Note --  The above image does not have complete data

 
9. Education Field Wise Attrition

Query : 

```select education , count(attrition) as Attrition_Count from hrdata where attrition= 1 group by education order by count(attrition) desc;```

Result : 

![9](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/956a8ec3-dffb-4865-a2f7-1b3205346880)


10. Job Satisfaction Rating

Query : 

```select  job_role , job_satisfaction, count(job_satisfaction) as 'Total Rating'  from hrdata group by job_satisfaction, job_role ;```

Result : 

![10](https://github.com/pawan941394/HR_Data_Analysis/assets/63099276/a5589a59-9eac-4dcf-b37c-608797ffe807)

Note -- The above image does not have complete data 
