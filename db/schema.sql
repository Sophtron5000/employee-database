DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

DROP TABLE IF EXISTS department;
CREATE TABLE department (
  id INT NOT NULL PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS position;
CREATE TABLE position (
  id INT NOT NULL PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  id INT NOT NULL PRIMARY KEY,
  manager_id INTEGER REFERENCES employees(id),
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  position_id INT NOT NULL,
  manager_id INT NOT NULL,
  FOREIGN KEY (position_id)
    REFERENCES position(id)
    ON DELETE SET NULL
);