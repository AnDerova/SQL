# SQL Queries Repository

## Overview
This repository contains a collection of SQL scripts designed to perform various queries on a sample database. These queries cover tasks such as retrieving employee information, analyzing salaries, and filtering data based on specific criteria. The repository is intended to serve as a practical exercise for learning SQL and database testing techniques.

---

## Table of Contents
1. [Queries Overview](#queries-overview)
2. [Database Schema](#database-schema)
3. [How to Use](#how-to-use)
4. [Queries](#queries)
5. [Contributing](#contributing)
6. [License](#license)

---

## Queries Overview
The repository contains the following categories of SQL queries:

- Retrieve employee details and salaries.
- Analyze salary data (e.g., employees without salaries, unassigned salary positions).
- Filter employees by roles and positions (e.g., Java, Python, QA engineers).
- Perform role-specific salary analysis (e.g., Junior, Middle, Senior).
- Aggregate data (e.g., average, minimum, maximum salaries).
- Order and filter salary data within specific ranges.

---

## Database Schema
The queries assume the following tables and relationships:

1. **employees**:
   - `id`: Employee ID (Primary Key)
   - `employee_name`: Name of the employee

2. **salary**:
   - `id`: Salary ID (Primary Key)
   - `monthly_salary`: Monthly salary amount

3. **employee_salary**:
   - `id`: ID (Primary Key)
   - `employee_id`: Foreign Key referencing employees table
   - `salary_id`: Foreign Key referencing salary table

4. **roles**:
   - `id`: Role ID (Primary Key)
   - `role_name`: Name of the role

5. **roles_employee**:
   - `id`: ID (Primary Key)
   - `employee_id`: Foreign Key referencing employees table
   - `role_id`: Foreign Key referencing roles table

---

## How to Use
1. Clone this repository:
   ```bash
   git clone <repository_url>
   cd <repository_name>
   ```

2. Ensure you have a database management system (e.g., MySQL, PostgreSQL) installed.

3. Set up the sample database with the schema described above.

4. Execute the scripts in your SQL editor or terminal to test and analyze results.

---

## Queries
Below is a summary of the included queries:

1. Retrieve all employees with their salaries:
   ```sql
   SELECT employees.employee_name, salary.monthly_salary
   FROM employee_salary
   INNER JOIN salary ON employee_salary.salary_id = salary.id
   INNER JOIN employees ON employee_salary.employee_id = employees.id;
   ```

2. Find employees with salaries less than 2000:
   ```sql
   SELECT employee_name, monthly_salary
   FROM employees
   INNER JOIN employee_salary ON employee_salary.employee_id = employees.id
   INNER JOIN salary ON employee_salary.salary_id = salary.id
   WHERE monthly_salary < 2000;
   ```

3. Retrieve unassigned salary positions:
   ```sql
   SELECT salary.monthly_salary, employees.employee_name
   FROM employee_salary
   LEFT JOIN salary ON employee_salary.salary_id = salary.id
   LEFT JOIN employees ON employee_salary.employee_id = employees.id;
   ```

4. Find employees based on roles (e.g., Java, Python, QA):
   ```sql
   SELECT employee_name, role_name
   FROM roles_employee
   INNER JOIN employees ON roles_employee.employee_id = employees.id
   INNER JOIN roles ON roles_employee.role_id = roles.id
   WHERE role_name LIKE '%Java%';
   ```

_For the full list of queries, refer to the individual files in the repository._

---

## Contributing
Contributions are welcome! If you have additional SQL queries or improvements to existing ones:

1. Fork the repository.
2. Create a new branch.
3. Commit your changes.
4. Submit a pull request with a clear description of your updates.




