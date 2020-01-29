-- Identifying the employee number along with their name, gender and salary--
select e.employee_number, e.last_name, e.first_name, e.gender, s.salary
from employees as e, salaries as s
where e.employee_number = s.employee_number;

--Identifying the employees who were hired in 1986--
select first_name ||' '|| last_name as "Hired in 1986" from employees
where hire_date between '1986-01-01' and '1986-12-31';

--Identifying all managers for each department--
select d.number, d.name, dm.employee_number, e.last_name, e.first_name, dm.from_date, dm.to_date 
from departments as d
join department_managers as dm on (dm.department_number = d.number)
join employees as e on (dm.employee_number = e.employee_number);

--Identifying each employee along with their department name--
select e.employee_number, e.last_name, e.first_name, d.name
from employees as e
join department_employees as de on (de.employee_number = e.employee_number)
join departments as d on (d.number = de.department_number);

--Identifying all employees with a First name being Hercules and Last name starting with a B--
select first_name, last_name from employees
where first_name = 'Hercules' 
and last_name LIKE 'B%';

--Identifying all employees in the Sales Department--
select e.employee_number, e.last_name, e.first_name, d.name
from employees as e
join department_employees as de on (de.employee_number = e.employee_number)
join departments as d on (d.number = de.department_number)
where name = 'Sales';

--Identifying all employees in either the Sales or Development Department--
select e.employee_number, e.last_name, e.first_name, d.name
from employees as e
join department_employees as de on (de.employee_number = e.employee_number)
join departments as d on (d.number = de.department_number)
where name in ('Sales', 'Development');

--Identifying the number of employees with similar last names--
select distinct(last_name), count(last_name) 
from employees
group by last_name
order by last_name desc;

create view avg_sals as
select t.title, round(avg(s.salary),2) as Avg_Salary
from titles as t
join salaries as s on t.employee_number = s.employee_number
group by title;

select * from avg_sals;

select * from employees
where employee_number = 499942;