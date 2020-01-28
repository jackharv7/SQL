create table department
(Department_Number Varchar(5) Primary Key,
Dapartment_Name Varchar(20));

create table dept_employee
(employee_number Int references employee(employee_number),
department_number Varchar(5) references department(Department_Number),
from_date date,
 to_date date
);
select * from dept_employee
create table dept_manager
(department_number Varchar(5) references department(Department_Number),
employee_number int references employee(employee_number),
from_date date,
 to_date date
);

create table employee
(employee_number int primary key,
birth_date date,
first_name varchar(30),
last_name varchar(30),
gender varchar(2),
hire_date date
);


create table salary
(employee_number int references employee(employee_number),
 salary integer,
 from_date date,
 to_date date
);

create table title
(employee_number int references employee(employee_number),
 title varchar(30),
 from_date date,
 to_date date
);

select * from salaries