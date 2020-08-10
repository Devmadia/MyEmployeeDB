const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  // Your MySQL username
  user: 'root',
  // Your MySQL password
  password: '',
  database: 'employee_trackerDB'
});

connection.connect(err => {
    if (err) throw err;
    console.log('connected as id ' + connection.threadId + '\n');
});

class info {

    // for Department information to generate from
    departmentArray() {
        return connection.promise().query(
            'SELECT dept_name FROM departments'
        )
        .then(([ rows ]) => {
            rows.map(row => row.dept_name);
            rows = rows.map(rows => row.dept_name);
            console.log(rows);
        })
    }

    // for Roles information to generate from
    rolesArray() {
        return connection.promise().query(
            'SELECT title FROM roles'
        )
        .then(([ rows ]) => {
            rows.map(row => row.title);
            rows = rows.map(rows => row.title);
            console.log(rows);
        })
    }

    // for Employees information to generate from
    employeesArray() {
        return connection.promise().query(
            `SELECT employees.id, employees.first_name, employees.last_name, roles.title, departments.dept_name AS departments, roles.salary, 
            CONCAT(manager.first_name, ' ', manager.last_name) AS manager FROM employees 
            LEFT JOIN roles on employees.role_id = roles.id 
            LEFT JOIN departments on roles.department_id = departments.id 
            LEFT JOIN employees manager on manager.id = employees.manager_id;`
        )
        .then(([ rows ]) => {
            rows.map(row => row.manager);
            rows = rows.map(row => row.manager);
            console.log(rows);
        })
    }
}

module.exports = connection;