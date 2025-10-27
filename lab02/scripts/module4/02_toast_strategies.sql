-- Модуль 4, Задача 2: Стратегии хранения TOAST
-- Лабораторная работа №2: Организация данных и системный каталог

\c lab02_db

CREATE TABLE toast_test (
    id SERIAL PRIMARY KEY,
    long_text TEXT
);

SELECT attname, attstorage
FROM pg_attribute
WHERE attrelid = 'toast_test'::regclass 
  AND attname = 'long_text';

ALTER TABLE toast_test ALTER COLUMN long_text SET STORAGE external;

SELECT attname, attstorage
FROM pg_attribute
WHERE attrelid = 'toast_test'::regclass 
  AND attname = 'long_text';

SELECT oid, reltoastrelid 
FROM pg_class 
WHERE relname = 'toast_test';

INSERT INTO toast_test (long_text) VALUES (repeat('short', 100));

INSERT INTO toast_test (long_text) VALUES (repeat('long text here ', 1000));

SELECT id, length(long_text) as text_length, pg_column_size(long_text) as stored_size
FROM toast_test;

SELECT n.nspname, c.relname
FROM pg_class c
JOIN pg_namespace n ON c.relnamespace = n.oid
WHERE c.oid = (SELECT reltoastrelid FROM pg_class WHERE relname = 'toast_test');

SELECT count(*) FROM pg_toast.pg_toast_16431;

SELECT chunk_id, chunk_seq, length(chunk_data) as chunk_size
FROM pg_toast.pg_toast_16431
ORDER BY chunk_id, chunk_seq;