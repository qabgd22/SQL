SELECT * FROM company;
SELECT * FROM employee;
SELECT * FROM department;


--ALL employees who work in the same department as Peter does.
SELECT * FROM employee
WHERE department_id IN (
	SELECT department_id FROM employee
	WHERE name LIKE 'Peter'
)
AND name NOT LIKE 'Peter';
