SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees e
RIGHT JOIN salaries s
ON (s.emp_no = e.emp_no);

SELECT e.emp_no, e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE EXTRACT (YEAR FROM hire_date) = 1986;

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM departments
RIGHT JOIN dept_manager
ON (departments.dept_no = dept_manager.dept_no)
JOIN employees
ON (dept_manager.emp_no = employees.emp_no);

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no);

SELECT employees.first_name, employees.last_name
from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name,departments.dept_name
from employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name,departments.dept_name
from employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

SELECT employees.last_name, COUNT(employees.emp_no)
from employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.emp_no) DESC;



