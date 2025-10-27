-- Модуль 3, Задача 3: Наследование свойств табличного пространства
-- Лабораторная работа №2: Организация данных и системный каталог

CREATE DATABASE lab02_db_new;

\c lab02_db_new

SELECT spcname
FROM pg_tablespace
WHERE oid = (SELECT dattablespace FROM pg_database WHERE datname = 'lab02_db_new');