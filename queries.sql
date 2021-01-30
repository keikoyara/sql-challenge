--testing that all charts were loaded properly 
select *
from employees

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s
on s.emp_no = e.emp_no
order by s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date
from employees as e 
where extract (year from hire_date) = 1986;

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
