INSERT INTO department (id, department_name)
VALUES (01, "Front of house"),
       (02, "Back of house");

INSERT INTO position (id, title, salary, department_id)
VALUES (01, "Manager", 50000, 02),
       (02, "Chef", 40000, 02),
       (03, "Waitress", 30000, 01),
       (04, "Busser", 20000, 01),
       (05, "Burgersquach", 20000, 01),
       (06, "Dishwasher", 20000, 02);

INSERT INTO employee (id, first_name, last_name, position_id, manager_id)
VALUES (01, "Bob", "Belcher", 02, null),
       (02, "Linda", "Belcher", 03, 01),
       (03, "Tina", "Belcher", 06, 01),
       (04, "Gene", "Belcher", 05, 01),
       (05, "Louis", "Belcher", 04, 01);