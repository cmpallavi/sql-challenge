-- List the employee number, last name, first name, sex, and salary of each employee (2 points)

select e.emp_no as "employee number", e."last_name" as "last name", e."first_name" as "first name",
e.sex as sex, s.salary as salary
from employees as e, salaries as s
where e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
select first_name as "first name", last_name as "last name", hire_date as "hire date"
from employees 
where hire_date >= '01/01/1986' and hire_date <= '12/31/1986'

-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name (2 points)
select d.dept_no as "department number", d.dept_name as "department name", 
e.emp_no as "employee number", e.last_name as "last name", e.first_name as "first name"
from dept_manager as dm
JOIN departments d ON (dm.dept_no = d.dept_no) 
JOIN employees e ON (dm.emp_no = e.emp_no)


-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name (2 points)
select e.emp_no as "employee number", e.last_name as "last name", 
e.first_name as "first name", d.dept_name as "department name", d.dept_no as "department number"
from dept_emp as de
JOIN departments d ON (de.dept_no = d.dept_no) 
JOIN employees e ON (de.emp_no = e.emp_no)


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last
-- name begins with the letter B (2 points)

select first_name as "first name", last_name as "last name", sex
from employees where first_name = 'Hercules' and last_name like 'B%';


-- List each employee in the Sales department, including their employee number, last name, and 
-- first name (2 points)
select e.emp_no as "employee number", e.last_name as "last name", e.first_name as "first name"
from dept_emp de
join employees e ON (de.emp_no = e.emp_no)
where de.dept_no in (select dept_no from departments where dept_name = 'Sales');


-- List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name (4 points)

select e.emp_no as "employee number", e.last_name as "last name", e.first_name as "first name"
from dept_emp de
join employees e ON (de.emp_no = e.emp_no)
where de.dept_no in (select dept_no from departments where dept_name = 'Sales' or dept_name = 'Development');


-- List the frequency counts, in descending order, of all the employee last names (that is, 
-- how many employees share each last name) (4 points)

select last_name, count(*) from employees group by last_name order by 2 desc;

