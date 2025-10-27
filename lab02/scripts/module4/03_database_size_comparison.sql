-- Модуль 4, Задача 3: Сравнение размеров базы данных
-- Лабораторная работа №2: Организация данных и системный каталог

\c lab02_db

SELECT sum(pg_total_relation_size(oid)) as tables_total_size
FROM pg_class
WHERE NOT relisshared
  AND relkind = 'r';

SELECT pg_database_size('lab02_db') as database_size;