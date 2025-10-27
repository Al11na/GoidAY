-- Модуль 3, Задача 5: Удаление табличного пространства
-- Лабораторная работа №2: Организация данных и системный каталог

\c postgres

DROP TABLESPACE lab02_ts;

SELECT oid AS tsoid FROM pg_tablespace WHERE spcname = 'lab02_ts';

SELECT datname
FROM pg_database
WHERE oid IN (SELECT pg_tablespace_databases(16418));

\c lab02_db_new

SELECT relnamespace::regnamespace, relname, relkind
FROM pg_class
WHERE reltablespace = 16418;

\c postgres

ALTER DATABASE lab02_db_new SET TABLESPACE pg_default;
ALTER DATABASE template1 SET TABLESPACE pg_default;

DROP TABLESPACE lab02_ts;

SELECT spcname FROM pg_tablespace WHERE spcname = 'lab02_ts';