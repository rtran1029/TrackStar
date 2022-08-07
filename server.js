
//dependencies required
const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");
//const sql = require("./sql");

//mysql connection
const connection = mysql.createConnection({
    host: 'localhost',

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: 'root',

    // Your password
    password: 'Chichi9(',
    database: 'employee_db'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    console.log(`
  ::::::::::: :::::::::      :::      ::::::::  :::    :::        :::::::: ::::::::::: :::     ::::::::: 
     :+:     :+:    :+:   :+: :+:   :+:    :+: :+:   :+:        :+:    :+:    :+:   :+: :+:   :+:    :+: 
    +:+     +:+    +:+  +:+   +:+  +:+        +:+  +:+         +:+           +:+  +:+   +:+  +:+    +:+  
   +#+     +#++:++#:  +#++:++#++: +#+        +#++:++          +#++:++#++    +#+ +#++:++#++: +#++:++#:    
  +#+     +#+    +#+ +#+     +#+ +#+        +#+  +#+                +#+    +#+ +#+     +#+ +#+    +#+    
 #+#     #+#    #+# #+#     #+# #+#    #+# #+#   #+#        #+#    #+#    #+# #+#     #+# #+#    #+#     
###     ###    ### ###     ###  ########  ###    ###        ########     ### ###     ### ###    ###      `)
    // runs the app
    firstPrompt();
});

function firstPrompt() {

    inquirer
      .prompt({
        type: "list",
        name: "task",
        message: "How can I be of assitance?",
        choices: [
          "View Employees",
          "View Employees by Department",
          "Add Employee",
          "Remove Employees",
          "Update Employee Role",
          "Add Role",
          "End"]
      })
      .then(function ({ task }) {
        switch (task) {
          case "View Employees":
            viewEmployee();
            break;
  
          case "View Employees by Department":
            viewEmployeeByDepartment();
            break;
        
          case "Add Employee":
            addEmployee();
            break;
  
          case "Remove Employees":
            removeEmployees();
            break;
  
          case "Update Employee Role":
            updateEmployeeRole();
            break;
  
          case "Add Role":
            addRole();
            break;
  
          case "End":
            connection.end();
            break;
        }
      });
  }