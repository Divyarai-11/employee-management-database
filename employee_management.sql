CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department (
dept_id INT PRIMARY KEY AUTO_INCREMENT,
dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
salary DECIMAL(10, 2),
join_date DATE,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO department (dept_name)
VALUES ('HR'), ('IT'), ('Finance');

INSERT INTO employee (name, salary, join_date, dept_id)
VALUES
('Aman', 30000, '2023-01-15', 1),
('Priya', 50000, '2022-03-20', 2),
('Rohit', 45000, '2024-04-24', 3);

-- SELECT (display data)
SELECT * FROM employee;

-- WHERE (Filtering)
SELECT * FROM employee WHERE salary>40000;

-- ORDER BY (Sorting)
SELECT * FROM employee ORDER BY salary DESC;

-- JOIN (Combine tables)
SELECT employee.name, employee.salary,
department.dept_name FROM employee
JOIN department ON employee.dept_id=
department.dept_id;

-- UPDATE
UPDATE employee SET salary= 55000
WHERE emp_id=1;

-- DELETE
DELETE FROM employee
WHERE emp_id= 3;