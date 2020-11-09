INSERT INTO departments 
    (name) 
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO roles 
    (title, salary, department_id) 
VALUES
    ('Sales Lead', 95000, 1),
    ('Salesperson', 75000, 1),
    ('Lead Engineer', 120000, 2),
    ('Software Engineer', 98000, 2),
    ('Accountant', 100000, 3),
    ('Legal Team Lead', 275000, 4),
    ('Lawyer', 100000, 4);

-- must maintain uniformity with 'INSERT INTO employees...' because database references for employees table doesn't yet exist to be referenced
INSERT INTO employees 
    (first_name, last_name, role_id, manager_id) 
VALUES 
    ('Aleksander', 'Roshane', 1, null);
    ('Tobias', 'Kohl', 2, 1);
    ('Jeremiah', 'Hall', 3, 2);
    ('Dinah', 'Wildman', 4, 3);
    ('Johnathan', 'Harker', 5, null);
    ('Pablo', 'Rabien', 6, 5);
    ('Eum', 'Charles', 7, null);
    ('Ashley', 'Martinez', 1, 1);
    ('Sabine', 'Beals', 2, 3);
    ('Rachel', 'Sanchez', 3, null);

-- -- displays tables
-- SELECT * FROM departments;
-- SELECT * FROM roles;
-- SELECT * FROM employees;