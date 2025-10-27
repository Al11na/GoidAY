-- Модуль 3, Задача 2: Изменение табличного пространства для template1
-- Лабораторная работа №2: Организация данных и системный каталог

ALTER DATABASE template1 SET TABLESPACE lab02_ts;

SELECT datname, spcname 
FROM pg_database d 
JOIN pg_tablespace t ON d.dattablespace = t.oid 
WHERE datname = 'template1';