select e.employee_number, e.last_name, e.first_name, e.gender, s.salary
from employee as e, salary as s
where e.employee_number = s.employee_number;

select * from employee
where hire_date between '1986-01-01' and '1986-12-31';

select d.department_number, d.dapartment_name, dm.employee_number, e.last_name, e.first_name, dm.from_date, dm.to_date 
from department as d
join dept_manager as dm on (dm.department_number = d.department_number)
join employee as e on (dm.employee_number = e.employee_number);

select e.employee_number, e.last_name, e.first_name, d.dapartment_name
from employee as e
join dept_employee as de on (de.employee_number = e.employee_number)
join department as d on (d.department_number = de.department_number);

select * from employee
where first_name = 'Hercules' 
and last_name LIKE 'B%';

select e.employee_number, e.last_name, e.first_name, d.dapartment_name
from employee as e
join dept_employee as de on (de.employee_number = e.employee_number)
join department as d on (d.department_number = de.department_number)
where dapartment_name = 'Sales';

select e.employee_number, e.last_name, e.first_name, d.dapartment_name
from employee as e
join dept_employee as de on (de.employee_number = e.employee_number)
join department as d on (d.department_number = de.department_number)
where dapartment_name = 'Sales' or dapartment_name = 'Development';

select distinct(last_name), count(last_name) 
from employee
group by last_name
order by last_name desc;

select * from employee where last_name = 'Zyda'

SELECT * FROM public.employee
