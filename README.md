# Pewlett Hackard Employee Database Project

## Overview

This repository contains data engineering and analysis tasks focused on historical employee data from the 1980s and 1990s. The project involves designing database tables, importing CSV data into a SQL database, and performing various data analysis queries.

## Key Components of the Report
1. **Data Modeling**: Sketched an Entity Relationship Diagram (ERD) based on the provided CSV files using QuickDBD tool.

2. **Data Engineering**: Created SQL table schemas for each CSV file, specifying data types, primary keys, foreign keys, and constraints. Import CSV data into corresponding SQL tables.

3. **Data Cleaning**:
- Date Columns: Converted `VARCHAR` columns like birth_date and hire_date to `DATE` type after importing the data into SQL tables. This ensures consistency and allows for easier date-based analysis.

4. **Data Analysis**:
- Listed employee details such as employee number, last name, first name, sex, and salary.
- Identified employees hired in 1986 and list their first name, last name, and hire date.
- Listed department managers with their department number, department name, employee number, last name, and first name.
- Associated each employee with their department number, employee number, last name, first name, and department name.
- Filtered and listed employees named "Hercules" whose last names started with "B", displaying their first name, last name, and sex.
- Retrieved details of employees in the Sales department, including their employee number, last name, and first name.
- Retrieved details of employees in both the Sales and Development departments, including their employee number, last name, first name, and department name.
- Listed employee last names by frequency, showing how many employees share each last name in descending order.

## Directions
- File <code style ="color:blue">[employee_schemata.sql](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/employee_schemata.sql)</code>  consists SQL table schemas for each csv files:
    - <code style ="color:blue">[department.csv](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/data/departments.csv)</code> 
    - <code style ="color:blue">[dept_emp.csv](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/data/dept_emp.csv)</code> 
    - <code style ="color:blue">[dept_manager.csv](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/data/dept_manager.csv)</code> 
    - <code style ="color:blue">[employees.csv](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/data/employees.csv)</code> 
    - <code style ="color:blue">[salaries.csv](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/data/salaries.csv)</code> 
    - <code style ="color:blue">[titles.csv](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/data/titles.csv)</code> 
- File <code style ="color:blue">[employee_queries](https://github.com/Ernawaty2024/sql-challenge/blob/main/EmployeeSQL/employee_queries.sql)</code>  consists data cleaning and analysis.