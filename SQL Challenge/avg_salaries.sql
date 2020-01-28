create view avg_sals as
select t.title, round(avg(s.salary),2) as Avg_Salary
from title as t
join salary as s on t.employee_number = s.employee_number
group by title;

select * from avg_sals;

select * from employee
where employee_number = 499942;
