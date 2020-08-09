INSERT INTO departments (id, dept_name) 
VALUES
    (1, 'Sales'),
    (2, 'Engineering'),
    (3, 'Finance'),
    (4, 'Legal');

INSERT INTO roles (title, salary, department_id) 
VALUES
    ('Sales Lead', 95000, 1),
    ('Salesperson', 75000, 1),
    ('Lead Engineer', 120000, 2),
    ('Software Engineer', 98000, 2),
    ('Accountant', 100000, 3),
    ('Legal Team Lead', 275000, 4),
    ('Lawyer', 100000, 4);

-- must maintain uniformity with 'INSERT INTO employees...' because database references for employees table doesn't yet exist to be referenced
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Aleksander', 'Roshane', 1, null);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Tobias', 'Kohl', 2, 1);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Jeremiah', 'Hall', 3, 2);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Dinah', 'Wildman', 4, 3);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Johnathan', 'Harker', 5, null);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Pablo', 'Rabien', 6, 5);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Eum', 'Charles', 7, null);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Ashley', 'Martinez', 1, 1);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Sabine', 'Beals', 2, 3);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Rachel', 'Sanchez', 3, null);

-- displays tables
SELECT * FROM departments;
SELECT * FROM roles;
SELECT * FROM employees;