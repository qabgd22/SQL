SELECT * FROM company;
SELECT * FROM employee;
SELECT * FROM department;

--Select employees from the IT department with salary greater than 70000
SELECT name, salary FROM employee
WHERE salary > 70000
AND department_id IN (
	SELECT id FROM department
	WHERE name = 'IT'
);