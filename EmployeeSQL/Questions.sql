SELECT * 
FROM titles

SELECT * 
FROM employees

SELECT * 
FROM departments

SELECT *
FROM salaries

SELECT * 
FROM dept_emp


SELECT * 
FROM dept_manager

-- QUESTION #1--
SELECT e.emp_no,first_name,last_name,sex,salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no=s.emp_no

--QUESTION #2--
SELECT first_name,last_name,hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'

--QUESTION #3--
SELECT first_name, last_name,d.dept_no,d.dept_name,dm.emp_no
FROM employees AS e
INNER JOIN dept_manager AS dm ON e.emp_no=dm.emp_no
INNER JOIN departments AS d ON dm.dept_no = d.dept_no

--QUESTION #4--
SELECT e.emp_no,last_name,first_name, d.dept_name 
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no

--QUESTION #5--
SELECT first_name, last_name,sex
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'S%'

--QUESTION #6--
SELECT e.emp_no,last_name, first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name='Sales'

--QUESTION #7--
SELECT e.emp_no,last_name, first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development'

--QUESTION #8--
SELECT last_name,COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC

