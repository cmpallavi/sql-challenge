

titles
-
title_id PK varchar
title varchar 
departments
-
dept_no PK varchar
dept_name varchar
employees 
-
emp_no PK int
emp_title_id varchar FK >- titles.title_id
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date
# Table documentation comment 1 (try the PDF/RTF export)
salaries 
------------
emp_no PK int FK - employees.emp_no
salary int
dept_manager 
----
dept_no PK varchar FK >- departments.dept_no
emp_no PK  int FK >- employees.emp_no
dept_emp
--
emp_no PK  int FK >- employees.emp_no
dept_no PK varchar FK >- departments.dept_no
No errors found. Good job!
