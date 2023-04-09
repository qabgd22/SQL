CREATE TABLE Department(
	id INT PRIMARY KEY,
	name VARCHAR(50)  NOT NULL	
);

CREATE TABLE Company(
	id INT PRIMARY KEY,
	name VARCHAR(100)  NOT NULL,
	revenue INT 
);

CREATE TABLE Employee(
	id INT PRIMARY KEY,
	name VARCHAR(150)  NOT NULL,
	city VARCHAR(150) NOT NULL,
	department_id INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (department_id) REFERENCES Department(id)	
);

