-- Модуль 2, Задача 3: Временные таблицы и схемы
-- Лабораторная работа №2: Организация данных и системный каталог

CREATE TEMP TABLE temp_test (
    id SERIAL PRIMARY KEY,
    data VARCHAR(50)
);

SELECT nspname AS schema_name
FROM pg_catalog.pg_namespace 
ORDER BY nspname;