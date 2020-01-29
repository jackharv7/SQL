CREATE TABLE employees
(
	employee_number INT Primary Key,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(2),
	hire_date DATE
);

CREATE TABLE departments
(
	number VARCHAR(5) Primary Key,
	name VARCHAR(20)
);

CREATE TABLE department_employees
(
	employee_number INT REFERENCES employees(employee_number),
	department_number VARCHAR(5) REFERENCES departments(number),
	from_date DATE,
	to_date DATE
);

CREATE TABLE department_managers
(
	department_number VARCHAR(5) REFERENCES departments(number),
	employee_number INT REFERENCES employees(employee_number),
	from_date DATE,
	to_date DATE
);

CREATE TABLE salaries
(
	employee_number INT REFERENCES employees(employee_number),
	salary INTEGER,
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles
(
	employee_number INT REFERENCES employees(employee_number),
	title VARCHAR(30),
	from_date DATE,
	to_date DATE
);