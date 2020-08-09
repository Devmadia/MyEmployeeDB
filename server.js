const inquirer = require('inquirer');
const cTable = require('console.table');

// imports the connection module
const connection = require('./db/connect');

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
    // inquirer
    //         .prompt([
    //             {
                   
    //             }
    //         ])
    //         .then((data) => {
    //             console.log("You've made it this far.") 
    //         })
    //         .catch((err) => {
    //             console.log(err);
    //         });
}


// function call to initialize program
init();