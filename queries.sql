-- 1. Listing employee number, last name, first name, sex and salary of 
--    each employee.

SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no;

-- 2. Listing first name, last name and hire date for employees hired
--    in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. Listing department number, department name, employee number, last
--    name and first name of each department manager
SELECT dm.dept_no, dept_name, dm.emp_no, last_name, first_name
FROM dept_manager AS dm
INNER JOIN departments AS d ON dm.dept_no = d.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

-- 4. Listing department number, employee number, last name, first name
--    and department name for each employee.

SELECT de.dept_no, e.emp_no, last_name, first_name, dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no;

-- 5. Listing first name, last name and sex of each employee whose first
--    name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. Listing employee number, last name and first name of each employee
--    in the sales department.

SELECT e.emp_no, last_name, first_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. Listing employee number, last name and first name of and department
--    name of each employee in the sales and development departments.

SELECT e.emp_no, last_name, first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- 8. Listing frequency counts in descending order, of all employee
--    last names.

SELECT last_name, COUNT(last_name) AS "Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Name Count" DESC;