SELECT * FROM company;
SELECT * FROM employee;
SELECT * FROM department;

SELECT emp.name, dep.id, dep.name
FROM employee emp
JOIN department dep 
ON emp.department_id = dep.id
ORDER BY emp.name, dep.id;