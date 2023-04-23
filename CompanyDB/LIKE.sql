SELECT * FROM company;
SELECT * FROM employee;
SELECT * FROM department;

-- Name of the city starts with L
SELECT * FROM employee
WHERE city LIKE 'L%'

--City starts with L or ends with s
SELECT * FROM employee
WHERE city LIKE 'L%' OR city LIKE '%s';

-- o exists in city name
SELECT * FROM employee
WHERE city LIKE '%o%';

