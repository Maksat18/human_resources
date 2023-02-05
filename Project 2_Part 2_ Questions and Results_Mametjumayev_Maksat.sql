use human_resources;
/*1.	List all employees who work in the Engineering department within the Austin office. 
Report their employee ID, first name, last name, department, and office city.*/

select
	e.emp_id as employee_Id,
    e.first_name as first_name,
    e.last_name as last_name,
    d.dept_id as department_id,
    d.dept_name as department_name,
    o.office_id as office_id,
    o.city as city
from employees e
inner join departments d on e.dept_id=d.dept_id
inner join offices o on o.office_id= e.office_id
where d.dept_id='002' and o.office_id='002';

/*2.	List all employees who have a role title of “Vice President”. 
 Report their employee ID, first name, last name, and role title.*/
 
 select
	e.emp_id as employee_Id,
    e.first_name as first_name,
    e.last_name as last_name,
    r.role_id as role_id,
    r.role_title as role_title
from employees e
inner join roles r on r.role_id=e.role_id
where r.role_title='Vice President';

/*3.	List all female employees with the job title of “Director” in the Engineering department. 
Report their first name, last name, role title, department name, and office city.*/

select
	e.emp_id as employee_Id,
    e.first_name as first_name,
    e.last_name as last_name,
    e.gender as gender, 
    r.role_id as role_id,
    r.role_title as role_title,
    d.dept_id as department_id,
    d.dept_name as department_name,
    o.office_id as office_id,
    o.city as city
from employees e
left join departments d on e.dept_id=d.dept_id
left join offices o on o.office_id= e.office_id
left join roles r on r.role_id=e.role_id
where d.dept_id='002' and e.gender='F' and r.role_title='Director';

/*4.	List all employees who work in either the Beijing or Miami offices and also work in the Accounting department. 
Report their first name, last name, office city, and department name.*/

select
	e.emp_id as employee_Id,
    e.first_name as first_name,
    e.last_name as last_name,
    d.dept_id as department_id,
    d.dept_name as department_name,
    o.office_id as office_id,
    o.city as city
from employees e
left join departments d on e.dept_id=d.dept_id
left join offices o on o.office_id= e.office_id
where (o.office_id='003' or o.office_id='009') and d.dept_id='001';

/*5.	Report all employees at the company who have the letter “c” as the third letter of their last name. 
Report their first name and last name.*/

select
	emp_id,
    first_name,
    last_name
from employees
where last_name like '__c%';

/*6.	Report all role titles that have a bonus of at least 10%. Report role title, salary range minimum, salary range maximum, 
and bonus percentage. (Note that you do not need to reformat any of these values.)*/

select * from roles where bonus_perc >=0.1;

/*7.	List all employees who work in the Finance department in the Phoenix office, along with their monthly base salary. 
Report their first name, last name, department name, office city, annual base salary, and monthly base salary (“monthly_base_sal”).*/
select
	e.emp_id as employee_Id,
    e.first_name as first_name,
    e.last_name as last_name,
    e.annual_base_sal as annual_base_sal,
    round(e.annual_base_sal/12,2) as monthly_base_sal,
    d.dept_id as department_id,
    d.dept_name as department_name,
    o.office_id as office_id,
    o.city as city
from employees e
left join departments d on e.dept_id=d.dept_id
left join offices o on o.office_id= e.office_id
where d.dept_name ='Finance' and o.city='Phoenix'; 

/*8.	Report the number of employees who work within each department. 
Provide the name of each department as well as the number of employees for each given department (“employee_count”). 
Departments should be ordered by highest number of employees to lowest number of employees.*/

select
    d.dept_id as department_id,
    d.dept_name as department_name,
    count(e.emp_id) as employee_count
from employees e
left join departments d on e.dept_id=d.dept_id
group by d.dept_id
order by employee_count desc;

/*9.	List each department and their average base salaries. Order your results by highest to lowest average base salary. 
Report average base salary with a dollar sign ($) and round to the nearest dollar. */

select
    d.dept_id as department_id,
    d.dept_name as department_name,
    concat("$", round((avg(e.annual_base_sal)),0)) as avg_base_salary
from departments d
left join employees e on e.dept_id=d.dept_id
group by d.dept_id
order by avg_base_salary desc; 

/*10.	List each employee who makes a base salary of $100,000 or more per year. 
Report their first name, last name, and annual base salary.*/

select
	emp_id,
    first_name,
    last_name,
    annual_base_sal
from employees
where annual_base_sal>=100000;

/*11.	List each role’s average annual base salary. Restrict your results to those roles that have an average base salary of $90,000 
or higher. Report role title, average annual base salary (“avg_annual_base_sal”)*/

select
	r.role_id,
    r.role_title,
    round(avg(e.annual_base_sal)) as avg_annual_base_sal
from roles r
left join employees e on r.role_id=e.role_id
group by r.role_id
having avg_annual_base_sal >=90000;

/*12.	Create a list of each employee (emp_id, first_name, last_name) as well as a column called “bonus” that indicates whether
 that employee receives an annual bonus (with values of “Y” for yes and “N” for no). */
 
 select
	e.emp_id,
    e.first_name,
    e.last_name,
    r.role_title,
    r.bonus_perc,
    case 
		when r.bonus_perc is not null then "Y"
		when r.bonus_perc is null then "N"
        end bonus
	from employees e
    inner join roles r on e.role_id =r.role_id;        

/*13.	Create a copy of your “employees” table and call it “employees_2”. In this table, include all columns and records from “employees”,
 but add a column called “age”. Populate this column with each employee’s age (in years).*/
 
 create table employees_2 as select
	*,
    timestampdiff(year,dob, now()) as age 
from employees;
 
/*14.	Create a table called “employee_salary”. In this table, include each employee’s employee ID, first name, last name, 
annual base salary, and bonus percentage.,. Also include the following additional columns: 
•	“bonus_amt” (employee’s bonus amount in dollars)
•	 “total_annual_comp” (employee’s total annual compensation including base salary and bonus)*/

create table employee_salary as select
	e.emp_id as employee_id,
    e.first_name as first_name,
    e.last_name as last_name,
    e.annual_base_sal as annual_base_salary,
    r.bonus_perc as bonus_percentage,
    concat("$", round(e.annual_base_sal*r.bonus_perc)) as bonus_amount,
	round(e.annual_base_sal+(e.annual_base_sal*r.bonus_perc)) as total_annual_comp
from employees e
inner join roles r on e.role_id=r.role_id; 
    
/*15.	List all roles that have a salary range minimum that is less than $50,000. 
Report role_title, salary_range_min, and salary_range_max. Order your results by salary_range_min (lowest to highest).*/

select 
	role_title,
	salary_range_max,
	salary_range_min
from roles 
where salary_range_min <50000
order by salary_range_min;

/*16.	List all roles that have a salary range maximum that is at least $50,000 greater than the salary range minimum. 
Report role_title, salary_range_min, and salary_range_max. Order your results by salary_range_max (highest to lowest).*/

select 
	role_title,
	salary_range_max,
	salary_range_min
from roles
where (salary_range_max-salary_range_min)>=50000
order by salary_range_max desc; 

/*17.	List the salary ranges for each role title. List the role title, salary range minimum, salary range maximum, and salary range. 
Order your results by largest salary range to smallest salary range. Round all dollar amounts to the nearest dollar.*/

 select 
	role_title,
    salary_range_max,
    salary_range_min,
	round(salary_range_max-salary_range_min) as salary_range
 from roles
 order by salary_range desc;
 
/*18.	Create a list of each employee who works in the Austin office (include first name and last name columns), 
along with their full office mailing address in the following format: 
First Name Last Name, Address 1, Address 2, City, State, Country Postal Code.
 (Example: John Smith, 14 Oak Drive, Suite 202, Rochester, New York, USA 10026)
(Note that some fields have commas between them, and some do not.)*/

select concat(e.first_name," ,", e.last_name," ,", o.address_1," ,", o.address_2," ,", o.city, " ," ,o.state_province, " ,", o.country," ,", o.postal_code)
				as employees_who_works_in_Austin_office
from employees e
left join offices o on e.office_id=o.office_id
where o.office_id ='002';

/*19.	Pull a list of all employees with their respective role title and department in the following format: 
[FIRST INITIAL].[ LAST NAME], [ROLE_TITLE], [DEPARTMENT]
E.g.: J. SMITH, VICE PRESIDENT, SALES
(Note all caps)*/

select Upper(concat(left(e.first_name,1) ,". " ,e.last_name ,", " , r.role_title, ", ", d.dept_name)) as employees_full_name_role_title_dept_name
from employees e
inner join roles r on r.role_id=e.role_id
inner join departments d on d.dept_id=e.dept_id;

/*20.	Create a table called “current_employees” that includes all data from the “employees” table
 but is restricted to employees who currently work at the company.*/
 
create table current_employees as select
	*
from employees
where exit_date is null;    
 
/*21.	BONUS (+5 POINTS): Report each office’s city along with the percentage of its employees who are female, male, and 
unspecified (perc_female, perc_male, perc_unspec). Exclude NULL values from your denominator. 
(HINT: you are allowed to write multiple queries/create multiple tables to achieve the required results.)*/

create table female_employees as select
	*
from employees 
where gender='F';

create table male_employees as select
	*
from employees 
where gender='M';

create table unspec_employees as select
	*
from employees 
where gender='U';

Select 
	o.office_id,
    o.city,
    count(f.emp_id)/ count(distinct e.emp_id) as perc_female,
    count(m.emp_id)/ count(distinct e.emp_id) as perc_male,
    count(u.emp_id)/ count(distinct e.emp_id) as perc_unspec
from employees e
left join offices o on e.office_id=o.office_id
left join female_employees f on f.emp_id=e.emp_id
left join male_employees m on m.emp_id =e.emp_id
left join unspec_employees u on u.emp_id=e.emp_id
group by o.office_id;
		
/*22.	Next year, the company will be providing 3.5% raises to each employee’s base salary. 
Calculate each employee’s new base salary in a column called “base_salary_2023”. In your results, report each employee’s first name, 
last name, current base salary (as “base_salary_2022”) and “base_salary_2023”.*/

select
	emp_id, 
    first_name,
    last_name,
    annual_base_sal as base_salary_2022,
    round((annual_base_sal+(annual_base_sal* 0.035)), 2) as base_salary_2023
from employees;

/*23.	List all employees who have a first name that starts with the letter “J” and a last name that starts with the letter “R”. 
Include their emp_id, first_name, and last_name in your results.*/

select 
	emp_id,
    first_name,
    last_name
from employees
where first_name like "J%" and last_name like "R%";

/*24.	Calculate the number of years that each employee has worked at the company (“employment_years”)
 as of the day that you conduct the query. Report the employee’s emp_id, first_name, last_name and employment_years.*/
 
create table employment_years as select
	emp_id,
    first_name,
    last_name,    
    timestampdiff(year,hire_date, now()) as employment_years
from employees;
 
/*25.	Report the number of employees within each combination of office and department.
 Report the office_city, dept_name, and employee_count. */
 
select
	count(e.emp_id) as employee_count,
    o.city as office_city,
    d.dept_name
from employees e
left join offices o on o.office_id=e.office_id
left join departments d  on d.dept_id= e.dept_id
group by o.city, d.dept_name;

/*26.	Report all employees who were hired between 1/1/19 and 6/30/19.
 Report emp_id, first_name, last_name, and hire_date.*/
 
 select
	emp_id,
    first_name,
    last_name,
    hire_date
from employees
where hire_date between '2019-01-01' and '2019-06-30';

/*27.	Report all employees who were hired in the month of January of any year. 
Report emp_id, first_name, last_name, and hire_date.  */

 select
	emp_id,
    first_name,
    last_name,
    hire_date
from employees
where month(hire_date)='01';

/*28.	You have been asked to determine if the average annual base salary is greater for Computer Systems Managers
 or System Administrators. Calculate the average base salary for each role. Report the role_title and “avg_base_sal”.*/
 
 select
	r.role_id,
    r.role_title,
    round(avg(e.annual_base_sal)) as avg_base_sal
    from roles r
    left join employees e on r.role_id=e.role_id
    where r.role_title ='computer systems manager' or r.role_title='system administrator'
    group by r.role_title;
    
/*29.	Create a copy of the “offices” table and call it “offices_2”.
 In this table, include all columns and records from “offices”, but add an additional column called “continent”.  
 Populate this column with the continent that the given office is in.*/
 
create table offices_2 as select 
	*,
case     when country like "USA" then "America"
         when country like "China" then  "Asia"
         when country like "Brazil" then "South America"
	end as continent
from offices;
    
    

