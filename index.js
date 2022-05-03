const inquirer = require('inquirer');
const consoleTbl = require('console.table');
const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'password',
        database: 'employee_db'
    },
    console.log('Connected to the employee_db database.')
);

function startApp() {
    inquirer
  .prompt({
    name: "menu",
    type: "list",
    message: "What would you like to do?",
    choices: [
        "View all Departments",
        "View all positions", 
        "View all employees", 
        "Add a department", 
        "Add a position", 
        "Add an employee", 
        "Update an employee position",
        "Exit"
    ]
})
  .then((answers) => {
    switch (answers.menu) {
        case "View all Departments":
            viewDepartments();
            break;

        case "View all positions":
            viewPositions();
            break;

        case "View all employees":
            viewEmployees();
            break;

        case "Add a department":
            addDepartment();
            break;

        case "Add a position":
            addPosition();
            break;

        case "Add an employee":
            addEmployee();
            break;

        case "Update an employee position":
            updateEmployeePosition();
            break;

        case "Exit":
            exit();
            break;
    }
  })
  .catch((error) => {
    if (error.isTtyError) {
      // Prompt couldn't be rendered in the current environment
    } else {
      // Something else went wrong
    }
  });
}
startApp();