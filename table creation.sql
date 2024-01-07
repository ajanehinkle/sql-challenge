-- Create employees table
create table employees (
	emp_num INT PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1)NOT NULL,
	hire_date DATE NOT NULL
);

-- Create departments table
create table departments (
	dept_num VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

-- Create titles table
create table titles (
	emp_num INT NOT NULL,
	title VARCHAR(40) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_num) references employees (emp_num)
);

-- Create department employee table
create table dept_employees (
	emp_num INT NOT NULL,
	dept_num VARCHAR(8) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_num) references employees (emp_num),
    foreign key (dept_num) references departments (dept_num)
);

-- Create salaries table
create table salaries (
	emp_num INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_num) references employees (emp_num)
);

-- Create Department manager table
create table dept_manager (
	dept_num VARCHAR(8) NOT NULL,
	emp_num INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_num) references employees (emp_num),
    foreign key (dept_num) references departments (dept_num)
);