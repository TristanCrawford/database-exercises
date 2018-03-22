USE employees;

/* Same Hire Date */
SELECT * FROM employees WHERE hire_date IN (
    SELECT hire_date FROM employees WHERE emp_no = 101010
);

/* Aamod Titles */
SELECT * FROM titles WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'Aamod'
);

/* Current Female Managers */
SELECT first_name, last_name FROM employees 
WHERE gender = 'F' 
AND emp_no IN (
    SELECT emp_no FROM dept_manager where to_date > curdate()
);

/* Female Manager Bonus */
SELECT dept_name FROM departments WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE emp_no IN (
	SELECT emp_no FROM employees WHERE gender = 'F'
    ) AND to_date > curdate()
);

/* Highest Salary Bonus */
SELECT first_name, last_name FROM employees WHERE emp_no = (
    SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 1
);
