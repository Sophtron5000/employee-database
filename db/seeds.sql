INSERT INTO department (department_id, department_name)
VALUES ("Front of house"),
       ("Back of house");

INSERT INTO position (position_id, position_title, salary)
VALUES (01, "Manager", 50000),
       (02, "Chef", 40000),
       (03, "Waitress", 30000),
       (04, "Busser", 20000),
       (05, "Burgersquach", 20000),
       (06, "Dishwasher", 20000);

INSERT INTO employee (employee_id, employee_fn, employee_ln, position_id, manager_id)
VALUES (01, "Bob", "Belcher", 02, 01),
       (02, "Linda", "Belcher", 03, 01),
       (03, "Tina", "Belcher", 06, null),
       (04, "Gene", "Belcher", 05, null),
       (05, "Louis", "Belcher", 04, null);
       
INSERT INTO employee(id, managerId, name) VALUES(01, NULL, 'Bob');
INSERT INTO employee(id, managerId, name) VALUES(02, NULL, 'Linda');
INSERT INTO employee(id, managerId, name) VALUES(03, 01, 'Tina');
INSERT INTO employee(id, managerId, name) VALUES(04, 02, 'Gene');
INSERT INTO employee(id, managerId, name) VALUES(05, 01, 'Louis');