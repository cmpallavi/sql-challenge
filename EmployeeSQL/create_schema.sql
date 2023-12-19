drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists salaries;
drop table if exists employees;
drop table if exists titles;
drop table if exists departments;




create table titles (
	title_id varchar not null primary key,
	title varchar not null
	);
	
create table departments (
	dept_no varchar not null primary key,
	dept_name varchar not null
	);
	

create table employees (
	emp_no int not null primary key,
	emp_title_id varchar not null,
	birth_date	date not null,
	first_name	varchar not null,
	last_name varchar not null,
	sex	 varchar(1) not null,
	hire_date date not null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

create table salaries (
	emp_no int primary key,
	salary int not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

create table dept_manager (
	dept_no varchar not null,
	emp_no int not null,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table dept_emp (
	emp_no int  not null,
	dept_no varchar not null,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
