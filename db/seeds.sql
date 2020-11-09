INSERT INTO departments VALUES 
  (DEFAULT, 'Sales'),
  (DEFAULT, 'Engineering'),
  (DEFAULT, 'Finance'),
  (DEFAULT, 'Legal');


INSERT INTO roles VALUES
  (DEFAULT, 'Sales Lead', 95000, 1),
  (DEFAULT, 'Salesperson', 75000, 1),
  (DEFAULT, 'Lead Engineer', 120000, 2),
  (DEFAULT, 'Software Engineer', 98000, 2),
  (DEFAULT, 'Accountant', 100000, 3),
  (DEFAULT, 'Legal Team Lead', 275000, 4),
  (DEFAULT, 'Lawyer', 100000, 4);

INSERT INTO employees VALUES
  (DEFAULT, 'Tommy', 'Wolvin', 1, 3),
  (DEFAULT, 'Lawrence', 'Holliwell', 2, 1),
  (DEFAULT, 'Dinah', 'Gaudalupe', 3, null),
  (DEFAULT, 'Chester', 'Mark', 4, 4),
  (DEFAULT, 'Aleksander', 'Covington', 5, null),
  (DEFAULT, 'Garret', 'Byran', 6, null),
  (DEFAULT, 'Nathaniel', 'Lorde', 7, 6);