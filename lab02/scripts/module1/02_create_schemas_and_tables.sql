-- Модуль 1, Задача 02: Создание схем и таблиц
-- Лабораторная работа №2: Организация данных и системный каталог

\c lab02_db

CREATE SCHEMA app;
CREATE SCHEMA student;

CREATE TABLE app.users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50)
);

CREATE TABLE student.users(
    id SERIAL PRIMARY KEY,
    email VARCHAR(100)
);

INSERT INTO app.users (username) VALUES ('alina'), ('ann'), ('ivan');

INSERT INTO student.users (email) VALUES 
    ('alina@gmail.com'), 
    ('ann@gmail.com'), 
    ('ivan@gmail.com');

SELECT * FROM app.users;
SELECT * FROM student.users;