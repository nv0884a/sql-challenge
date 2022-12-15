--Question1
SELECT employees.emp_no,last_name,first_name,sex,salary
FROM employees
Inner Join salaries
ON employees.emp_no = salaries.emp_no;

ALTER TABLE employees
ADD PRIMARY KEY (emp_no);
--employee number, last name, first name, sex, and salary of each employee

--Question 2
SELECT last_name,first_name,hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)= 1986;
--List the first name, last name, and hire date for the employees who were hired in 1986.

--Question 3
SELECT emp.emp_no,last_name,first_name,dept_manager.dept_no,dept_name
FROM employees AS emp
Inner Join dept_manager
ON emp.emp_no = dept_manager.emp_no
Inner Join departments
ON dept_manager.dept_no = departments.dept_no;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

--Question 4

SELECT emp.emp_no,last_name,first_name,dept_emp.dept_no,dept_name
FROM employees AS emp
Inner Join dept_emp
ON emp.emp_no = dept_emp.emp_no
Inner Join departments
ON dept_emp.dept_no = departments.dept_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--Question 5

SELECT last_name,first_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--Question 6

SELECT emp.emp_no,last_name,first_name,dept_emp.dept_no, dept_name
FROM employees AS emp
Inner Join dept_emp
ON emp.emp_no = dept_emp.emp_no
Inner Join departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--List each employee in the Sales department, including their employee number, last name, and first name.

--Question 7

SELECT emp.emp_no,last_name,first_name,dept_emp.dept_no, dept_name
FROM employees AS emp
Inner Join dept_emp
ON emp.emp_no = dept_emp.emp_no
Inner Join departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--Question 8

SELECT last_name, COUNT(last_name) AS "frequency count"
FROM employees
GROUP BY last_name
ORDER BY "frequency count" DESC;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).