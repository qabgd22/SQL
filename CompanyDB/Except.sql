SELECT * FROM company;
SELECT * FROM employee;
SELECT * FROM department;

SELECT e1.name, e1.salary FROM employee e1
EXCEPT
SELECT e2.name, e2.salary FROM employee e2
WHERE e2.salary >= 80000;


