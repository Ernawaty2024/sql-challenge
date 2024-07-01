# SQL CHALLENGE

## Overview

Welcome to the Pewlett Hackard Employee Database Project! This repository contains data engineering and analysis tasks focused on historical employee data from the 1980s and 1990s. The project involves designing database tables, importing CSV data into a SQL database, and performing various data analysis queries.

## Key Components of the Report
1. **Data Modeling**: Sketch an Entity Relationship Diagram (ERD) based on the provided CSV files using a tool like QuickDBD.

2. **Data Engineering**: Create SQL table schemas for each CSV file, specifying data types, primary keys, foreign keys, and constraints. Import CSV data into corresponding SQL tables.

3. **Data Cleaning**:
- Date Columns: Convert VARCHAR columns like birth_date and hire_date to DATE type after importing the data into SQL tables. This ensures consistency and allows for easier date-based analysis.

4. **Data Analysis**:
- List employee details such as employee number, last name, first name, sex, and salary.
- Identify employees hired in 1986 and list their first name, last name, and hire date.
- List department managers with their department number, department name, employee number, last name, and first name.
- Associate each employee with their department number, employee number, last name, first name, and department name.
- Filter and list employees named "Hercules" whose last names start with "B", displaying their first name, last name, and sex.
- Retrieve details of employees in the Sales department, including their employee number, last name, and first name.
- Retrieve details of employees in both the Sales and Development departments, including their employee number, last name, first name, and department name.
- List employee last names by frequency, showing how many employees share each last name in descending order.

## How to Use
1. **Setup**:
- Clone the repository sql-challenge to your local machine.
- Create a directory named EmployeeSQL within the cloned repository.
2. **Data Modeling**:
- Inspect the provided CSV files and sketch an ERD using QuickDBD or any preferred tool.
3. **Data Engineering**:
- Use the ERD to guide creation of SQL table schemas for each CSV file.
- Ensure correct data types, primary keys, foreign keys, and constraints are specified.
- Create tables in the correct order to handle dependencies.
4. **Import Data**:
- Import data from the provided CSV files into the corresponding SQL tables.
5. **Data Analysis**:
- Execute SQL queries to perform the listed data analysis tasks.
- Review query results to analyze employee data based on the specified criteria.