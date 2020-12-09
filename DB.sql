CREATE DATABASE organization;
USE organization;

CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT,
    name VARCHAR(20),
    surname VARCHAR(20),
    age INT,
    salary INT,
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS customer (
    id INT AUTO_INCREMENT,
    name VARCHAR(20),
    surname VARCHAR(20),
    age INT,
    PRIMARY KEY(id)
);
ALTER TABLE employee AUTO_INCREMENT = 1;
ALTER TABLE customer AUTO_INCREMENT = 1;

INSERT INTO customer (name, surname, age)
VALUES ('Gurgen','Bahgdasaryan',17);

INSERT INTO employee (name, surname, age,salary)
VALUES ('Edik','Bahgdasaryan',20,1000000);
