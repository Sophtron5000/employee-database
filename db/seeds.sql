INSERT INTO department (department_name)
VALUES ("Front of house"),
       ("Back of house");

INSERT INTO position (position_id, position)
VALUES (01, "Manager"),
       (02, "Chef"),
       (03, "Waitress"),
       (04, "Busser"),
       (05, "Burgersquach"),
       (06, "Dishwasher");

INSERT INTO employee (employee_id, employee)
VALUES (01, "Bob Belcher"),
       (02, "Linda Belcher"),
       (03, "Tina Belcher"),
       (04, "Gene Belcher"),
       (05, "Louis Belcher"),
       
INSERT INTO employees(id, managerId, name) VALUES(01, NULL, 'Bob');
INSERT INTO employees(id, managerId, name) VALUES(02, NULL, 'Linda');
INSERT INTO employees(id, managerId, name) VALUES(03, 01, 'Tina');
INSERT INTO employees(id, managerId, name) VALUES(04, 02, 'Gene');
INSERT INTO employees(id, managerId, name) VALUES(05, 01, 'Louis');