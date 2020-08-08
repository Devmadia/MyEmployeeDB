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

INSERT INTO employees (first_name, last_name, role_id, manager_id) 
VALUES
    ('Aleksander', 'Roshane', 1, 3),
    ('Tobias', 'Kohl', 2, 1),
    ('Jeremiah', 'Hall', 3, 3),
    ('Dinah', 'Wildman', 4, null),
    ('Johnathan', 'Harker', 5, 2),
    ('Pablo', 'Rabien', 6, 1),
    ('Eum', 'Charles', 7, null),
    ('Ashley', 'Martinez', 8, 2),
    ('Sabine', 'Beals', 9, 1),
    ('Rachel', 'Sanchez', 10, null);