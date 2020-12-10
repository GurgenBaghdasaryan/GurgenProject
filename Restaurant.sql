CREATE DATABASE Restaurant;
USE Restaurant;

CREATE TABLE IF NOT EXISTS Salary (
    id INT NOT NULL AUTO_INCREMENT,
    salary DECIMAL(18, 4),
    PRIMARY KEY(id)
  );

CREATE TABLE IF NOT EXISTS Employee (
    id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(20),
    lastName VARCHAR(20),
    age INT,
    salaryId INT NOT NULL,
    PRIMARY KEY(id),
    CHECK (age>=0 AND age <= 200),
    FOREIGN KEY (salaryId) REFERENCES Salary(id)
);

CREATE TABLE IF NOT EXISTS Menu (
    id INT NOT NULL AUTO_INCREMENT,
    breakfast VARCHAR(20),
    appetizers VARCHAR(20),
    lunch VARCHAR(20),
    humburgers VARCHAR(20),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS Product (
    id INT NOT NULL AUTO_INCREMENT,
    productName VARCHAR(20),
    productPrice DECIMAL(18,4),
    PRIMARY KEY(id)
);

INSERT INTO Salary (salary)
VALUES (23.789);

INSERT INTO Employee (firstName, lastName, age, salaryId)
VALUES ('Gurgen','Bahgdasaryan',17,1);

INSERT INTO Menu (breakfast,appetizers, lunch,humburgers)
VALUES ('eggs','cheese','dumplings','chicken');

INSERT INTO Product (productName, productPrice)
VALUES ('eggs', 25.968);

SELECT Employee.id, Employee.firstName,Salary.salary
FROM Employee
INNER JOIN Salary ON Employee.salaryId=Salary.id;