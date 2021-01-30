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
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
inner join departments
on dept_manager.dept_no = departments.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by e.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.
select first_name, last_name, sex
from employees 
where (first_name = 'Hercules') and (lower(last_name) like 'b%')
order by last_name;

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, e.last_name, e.first_name, de.dept_name
from dept_emp
inner join employees as e 
on dept_emp.emp_no = e.emp_no
join departments as de
on dept_emp.dept_no = de.dept_no
where de.dept_name = 'Sales';


