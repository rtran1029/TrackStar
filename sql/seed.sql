
USE employeesDB;

INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("Finance");
INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 200000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 170000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 140000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 155000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 350000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Spencer", "Strider", 1, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Max", "Fried", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tyler", "Matzek", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kyle", "Write", 4, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Travis", "dArnaud", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ronald", "Acuna Jr", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Matt", "Olson", 4, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Smoltz", 1, 2);