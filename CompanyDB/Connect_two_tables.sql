SELECT * FROM company;
SELECT * FROM employee;
SELECT * FROM department;

SELECT emp.name, dep.id, dep.name
FROM employee emp, department dep 
WHERE emp.department_id = dep.id
ORDER by emp.name, dep.id;
