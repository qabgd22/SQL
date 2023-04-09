SELECT name, revenue FROM company;

SELECT * FROM company
WHERE revenue < 5000000;

SELECT * FROM company
WHERE revenue > 5000000;

SELECT * FROM company
ORDER BY revenue
LIMIT 1;

SELECT * FROM company
WHERE NOT revenue >= 5000000;
