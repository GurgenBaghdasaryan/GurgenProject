CREATE DATABASE Restaurant;
USE Restaurant;
CREATE TABLE IF NOT EXISTS salary (
    id INT NOT NULL AUTO_INCREMENT,
    salary DECIMAL(18, 4),
    job VARCHAR(20),
    PRIMARY KEY(id)
  );
CREATE TABLE IF NOT EXISTS menu_set (
    id INT NOT NULL AUTO_INCREMENT,
    set_name VARCHAR(100),
    set_price DECIMAL(18, 4),
    PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS customer (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT,
    salary_id INT NOT NULL,
    ordered_set_id INT NOT NULL,
    PRIMARY KEY(id),
    CHECK (age>=0 AND age <= 200),
    FOREIGN KEY (salary_id) REFERENCES salary(id),
    FOREIGN KEY (ordered_set_id) REFERENCES menu_set(id)
);
INSERT INTO salary (salary,job)
VALUES (23.789,'Programmer');
INSERT INTO menu_set (set_name,set_price)
VALUES ('Hamburger, Fryes, Cola',13.768);
INSERT INTO customer (first_name, last_name, age, salary_id, ordered_set_id)
VALUES ('Gurgen','Bahgdasaryan',17,1,1);
SELECT customer.id, customer.first_name, salary.salary, menu_set.set_name, menu_set.set_price
FROM customer
INNER JOIN salary ON salary.id = customer.salary_id
INNER JOIN menu_set ON customer.ordered_set_id = menu_set.id