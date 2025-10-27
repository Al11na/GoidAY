-- Модуль 4, Задача 5: Сравнение методов сжатия
-- Лабораторная работа №2: Организация данных и системный каталог

-- В терминале выполнить:
-- sudo cat /usr/lib/postgresql/16/bin/postgres | base32 -w0 > /tmp/compress_test.input
-- ls -lh /tmp/compress_test.input

\c lab02_db

-- 1) Таблица БЕЗ сжатия (external)
CREATE TABLE compress_external (txt TEXT STORAGE EXTERNAL);

\timing on
COPY compress_external FROM '/tmp/compress_test.input';
\timing off

SELECT pg_table_size('compress_external')/1024 as size_kb;

-- 2) Таблица со сжатием pglz
TRUNCATE TABLE compress_external;

ALTER TABLE compress_external 
    ALTER COLUMN txt SET STORAGE EXTENDED,
    ALTER COLUMN txt SET COMPRESSION pglz;

\timing on
COPY compress_external FROM '/tmp/compress_test.input';
\timing off

SELECT pg_table_size('compress_external')/1024 as size_kb;

-- 3) Таблица со сжатием lz4
TRUNCATE TABLE compress_external;

ALTER TABLE compress_external 
    ALTER COLUMN txt SET COMPRESSION lz4;

\timing on
COPY compress_external FROM '/tmp/compress_test.input';
\timing off

SELECT pg_table_size('compress_external')/1024 as size_kb;

-- Очистка
-- rm -f /tmp/compress_test.input