USE employees;

SELECT * FROM employees WHERE gender = 'M' AND ( first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ) ORDER BY last_name, first_name;
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e' ORDER BY emp_no DESC;
SELECT CONCAT(first_name, ' ', last_name) AS 'E mployees' FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no DESC;
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee', DATEDIFF(CURDATE(), hire_date) AS 'Days Since Hire'
FROM employees WHERE ( hire_date BETWEEN '1990-01-01' AND '1999-12-31' ) AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
