
-- create
CREATE TABLE EMPLOYEE (
  empId int,
  name varchar(15),
  salary int,
  managerId int
);

-- insert
INSERT INTO EMPLOYEE(empId,name,salary,managerId) VALUES (1, 'Joe', 70000,3);
INSERT INTO EMPLOYEE(empId,name,salary, managerId) VALUES (2, 'Henry', 80000,4);
INSERT INTO EMPLOYEE(empId,name,salary,managerId) VALUES (3, 'Sam', 60000, null);
INSERT INTO EMPLOYEE(empId,name,salary,managerId) VALUES (4,'Max',90000,null);

-- fetch 
SELECT * FROM EMPLOYEE;


--Employees Earning More Than Their Manager
SELECT e.name as EMPLOYEE
FROM Employee e
JOIN Employee m
  ON e.managerId = m.empId
WHERE e.salary > m.salary;

--Employees Earning lESS Than Their Manager
SELECT e.name as EMPLOYEE
FROM Employee e
JOIN Employee m
  ON e.managerId = m.empId
WHERE e.salary < m.salary;

--Employees and Their Manager Names
SELECT e.name AS Employee,
       m.name AS Manager
FROM Employee e
LEFT JOIN Employee m
  ON e.managerId = m.empId;

--Managers With At Least One Reportee
SELECT DISTINCT m.name AS Manager
FROM Employee e
JOIN Employee m
  ON e.managerId = m.empId;
  
--Employees Without Managers
  SELECT name
FROM Employee
WHERE managerId IS NULL;

--Employees Earning At Least Twice Their Manager
SELECT e.name
FROM Employee e
JOIN Employee m
  ON e.managerId = m.EM
WHERE e.salary >= 2 * m.salary;

