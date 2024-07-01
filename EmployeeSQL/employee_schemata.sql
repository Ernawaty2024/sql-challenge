-- DATA ENGINEERING
-- Create titles table first
CREATE TABLE titles (
    title_id VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT *
FROM titles 
LIMIT 5
	
-- Create departments table second
CREATE TABLE departments (
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT *
FROM departments 
LIMIT 5
	
-- Create employees table third
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date VARCHAR(255) NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Convert birth_date and hire_date VARCHAR datatype columns to DATE datatype
-- Add new columns with DATE type
ALTER TABLE employees ADD COLUMN birth_date_temp DATE;
ALTER TABLE employees ADD COLUMN hire_date_temp DATE;
	
-- Update the new columns with converted date values
UPDATE employees
SET birth_date_temp = TO_DATE(birth_date, 'MM/DD/YYYY'),
	hire_date_temp = TO_DATE(hire_date, 'MM/DD/YYYY');

-- Drop the old VARCHAR columns
ALTER TABLE employees DROP COLUMN birth_date;
ALTER TABLE employees DROP COLUMN hire_date;

-- Rename the new DATE columns to the original names
ALTER TABLE employees rename COLUMN birth_date_temp TO birth_date;
ALTER TABLE employees rename COLUMN hire_date_temp TO hire_date;

SELECT *
FROM employees
LIMIT 5


-- Create dept_emp table fourth
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT *
FROM dept_emp
LIMIT 5

-- Create dept_manager table fifth
CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM dep_manager
LIMIT 5

-- Create salaries table sixth
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM salaries 
LIMIT 5

