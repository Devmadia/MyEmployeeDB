DROP TABLE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;
USE employee_trackerDB;

-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS roles;
-- DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles(
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(9,2) NOT NULL,
    department_id INTEGER UNSIGNED NOT NULL
);

-- need to get manager_id to reference employee(id)
-- on delete for manager_id, set to null?

CREATE TABLE employees(
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER UNSIGNED NOT NULL,
    manager_id UNSIGNED
);