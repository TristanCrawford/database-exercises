USE employees;

/* Current Department Managers */
SELECT d.dept_name 'Department Name',CONCAT(e.first_name, ' ', e.last_name) 'Department Manager'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate();

/* Current Female Department Managers */
SELECT d.dept_name 'Department Name',CONCAT(e.first_name, ' ', e.last_name) 'Department Manager'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate()
AND e.gender = 'F';

/* Customer Service Employee Titles */
SELECT t.title 'Title',COUNT(t.title)
FROM titles t
JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
AND de.to_date > curdate()
AND t.to_date > curdate()
GROUP BY t.title;

/* Current Manager Salaries */
SELECT d.dept_name 'Department',CONCAT(e.first_name, ' ', e.last_name) 'Name',s.salary 'Salary'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE dm.to_date > curdate()
AND s.to_date > curdate();

/* Bonus */
SELECT d.dept_name, e.first_name, e.last_name, m.first_name, m.last_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN dept_manager mn ON d.dept_no = mn.dept_no
JOIN employees m ON mn.emp_no = m.emp_no
WHERE de.to_date > curdate()
AND mn.to_date > curdate()
ORDER BY d.dept_name;
