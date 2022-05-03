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

function menu() {
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
}
menu();

function viewDepartments() {
    db.query(
        'SELECT * FROM department',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}

function viewPositions() {
    db.query(
        'SELECT * FROM position',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}

function viewEmployees() {
    db.query(
        'SELECT * FROM employee',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}
//add Department function
function addDepartment() {
    db.query(
        'SELECT * FROM department',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}
//add position function
function addPosition() {
    db.query(
        'SELECT * FROM department',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}
//add employee function
function addEmployee() {
    db.query(
        'SELECT * FROM department',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}
//add update employee function
function updateEmployeePosition() {
    db.query(
        'SELECT * FROM department',
        function(err, results) {
          console.table(results);
          menu();
        } 
      ); 
}

function exit() {
    db.end(); 
}