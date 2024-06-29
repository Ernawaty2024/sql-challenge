-- Create departments table first
CREATE TABLE departments (
    dept_no INT NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create employees table second
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

-- Create titles table third
CREATE TABLE titles (
    title_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create dept_emp table fourth
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no INT NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create dept_manager table fifth
CREATE TABLE dept_manager (
    dept_no INT NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create salaries table sixth
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

ALTER TABLE employees ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

LOAD DATA INFILE ''