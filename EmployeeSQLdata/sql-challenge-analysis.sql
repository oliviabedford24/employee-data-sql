SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, 
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name,
employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no;

SELECT dept_emp.dept_no, dept_emp.emp_no, departments.dept_name,
employees.last_name, employees.first_name
FROM dept_emp
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no;

SELECT employees.last_name, employees.first_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT departments.dept_name, dept_emp.emp_no, employees.last_name, 
employees.first_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

SELECT employees.emp_no, departments.dept_name, employees.last_name,
employees.first_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) AS "surname count"
FROM employees
GROUP BY last_name
ORDER BY "surname count" DESC;