-- Модуль 1, Задача 4: Управление путем поиска (search_path)
-- Лабораторная работа №2: Организация данных и системный каталог

SELECT * FROM student.users;
SELECT * FROM app.users;

SET search_path = app, student, public;
SELECT * FROM users;

SET search_path = student, app, public;

SHOW search_path;
SELECT current_schemas(true);
SELECT * FROM users;