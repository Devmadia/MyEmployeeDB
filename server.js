const inquirer = require('inquirer');
const cTable = require('console.table');

// imports the connection module
const connection = require('./db/connect');
const { indexOf } = require('mysql2/lib/constants/charset_encodings');

const init = () => {
    
    // creates the ascii banner
    var figlet = require('figlet');
 
    figlet('EMPLOYEE MANAGER', {
        font: 'Big',
        horizontalLayout: 'default',
        verticalLayout: 'default',
        width: 80,
        whitespaceBreak: true
    }, function(err, data) {
        if (err) {
            console.log('Something went wrong...');
            console.dir(err);
            return;
        }
        console.log(data)
    });

    inquirer
            .prompt([
                {
                   type: "list",
                   name: "action",
                   message: "What would you like to do?",
                   choices: [
                       "View all departments",
                       "View all roles",
                       "View all employees",
                       "Add a departments",
                       "Add an employees",
                       "Update employee role",
                       "Quit"
                   ],
                }
            ])
            .then(({ action }) => {
                switch (action) {
                    //query here for actions
                    case "View all departments":
                        departmentView();
                        break;

                    case "View all roles":
                        rolesView();
                        break;

                    case "View all employees":
                        employeeView();
                        break;

                    case "Add a departments":
                        departmentAdd();
                        break;

                    case "Add an employees":
                        employeesAdd();
                        break;

                    case "Update employee role":
                        employeeUpdate();
                        break;
                    
                    case "Quit":
                        connection.end();
                        break;
                }
            
            })
};

// Department Functions
const departmentView = () => {
    info
        .
        .then(([ row ]) => {
            console.table(row);
            init();
        })
        .catch(console.log);
}


// Roles functions

// Employees functions

// function call to initialize program
init();