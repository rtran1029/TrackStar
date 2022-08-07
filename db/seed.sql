
INSERT INTO departments (department_name)
VALUES  ("Engineering"),
        ("Finance"),
        ("Legal"),
        ("Sales"),
        ("Upper Management");

INSERT INTO roles (id, role_title, role_salary, department_id)
VALUES  (1, "CEO", 290000, 5),
        (2, "Sales Lead", 100000, 4),
        (3, "Salesperson", 80000, 4),
        (4, "Lead Engineer", 150000, 1),
        (5, "Software Engineer", 120000, 1),
        (6, "Account Manager", 160000, 2),
        (7, "Accountant", 125000, 2),
        (8, "Legal Team Lead", 250000, 3),
        (9, "Lawyer", 190000, 3);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES  ("Spencer", "Strider", 1, null),
        ("Max", "Fried", 2, 1),
        ("Tyler", "Matzek", 3, 2),
        ("Kyle", "Write", 4, 1),
        ("Travis", "dArnaud", 5, 4),
        ("Ronald", "Acuna Jr", 6, 1),
        ("Matt", "Olson", 7, 6),
        ("John", "Smoltz", 8, 1),
        ("Tom", "Glaven", 9, 8);