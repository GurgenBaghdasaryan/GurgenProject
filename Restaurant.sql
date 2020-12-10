CREATE DATABASE Restaurant;
USE Restaurant;
CREATE TABLE IF NOT EXISTS Salary (
    id INT AUTO_INCREMENT,
    salary INT,
    PRIMARY KEY(id)
  );
CREATE TABLE IF NOT EXISTS Employee (
    id INT AUTO_INCREMENT,
    firstName VARCHAR(20),
    lastName VARCHAR(20),
    age INT,
    salaryId INT,
    PRIMARY KEY(id),
    FOREIGN KEY (salaryId) REFERENCES Salary(id)
);
CREATE TABLE IF NOT EXISTS Menu (
    id INT AUTO_INCREMENT,
    breakfast VARCHAR(20),
    appetizers VARCHAR(20),
    lunch VARCHAR(20),
    humburgers VARCHAR(20),
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS Product (
    id INT AUTO_INCREMENT,
    productName VARCHAR(20),
    productPrice int,
    PRIMARY KEY(id)
);
INSERT INTO Salary (salary)
VALUES (10000);
INSERT INTO Employee (firstName, lastName, age, salaryId)
VALUES ('Gurgen','Bahgdasaryan',17,1);
INSERT INTO Menu (breakfast,appetizers, lunch,humburgers)
VALUES ('eggs','cheese','dumplings','chicken');
INSERT INTO Product (productName,productPrice)
VALUES ('eggs',70);
SELECT Employee.id, Employee.firstName,Employee.salaryId
FROM Employee
INNER JOIN salary ON employee.salaryId=Salary.id;