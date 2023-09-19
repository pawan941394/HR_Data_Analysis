use Hr_Data_Analyst;
select * from hrdata;
-- Counting Total Employess
select count(distinct emp_no) as Employee_Count from hrdata;


-- Counting Total Attrition 
select count(attrition)
as Attrition_Count from hrdata
where attrition = 1
;


-- Counting Attrition Rate
select ( (select count(attrition) from hrdata where attrition = 1 )*1.0 / 
sum(employee_count))*100  as 'Attrition Rate'
from hrdata
;

-- Active Employees 


select count(active_employee)  as 'Avg. Age'
from hrdata where active_employee = 1;

-- Avg. Age

select   sum(age) / count(emp_no) as 'Active Employee' from hrdata where active_employee = 1;


 -- Attrition By Gender 

 select gender , count(attrition) as Attrition_Count from hrdata
 where attrition= 1
 group by gender 
 order by count(attrition) desc

 
 ;


  -- Department wise Attrition 

 select department , count(attrition) as Attrition_Count from hrdata
 where attrition= 1
 group by department
 order by count(attrition) desc
 ;



   -- No of employees by Age Group 

 select age , count(attrition) as Attrition_Count from hrdata
 where attrition= 1
 group by age
 order by count(attrition) desc
 ;


    -- Education Field Wise Attrition

 select education , count(attrition) as Attrition_Count from hrdata
 where attrition= 1
 group by education
 order by count(attrition) desc
 ;


     -- Job Satisfaction Rating 

select  job_role , job_satisfaction, count(job_satisfaction) as 'Total Rating' 

 from hrdata
 group by job_satisfaction, job_role
 ;

