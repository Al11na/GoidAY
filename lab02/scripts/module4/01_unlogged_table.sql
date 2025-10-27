-- Модуль 4, Задача 1: Нежурналируемые таблицы и init-файлы
-- Лабораторная работа №2: Организация данных и системный каталог

-- В терминале выполнить:
-- mkdir /tmp/unlogged_ts
-- sudo chown postgres:postgres /tmp/unlogged_ts

CREATE TABLESPACE unlogged_ts LOCATION '/tmp/unlogged_ts';

CREATE UNLOGGED TABLE test_unlogged (
    id SERIAL PRIMARY KEY,
    data TEXT
) TABLESPACE unlogged_ts;

SELECT pg_relation_filepath('test_unlogged');

INSERT INTO test_unlogged (data) VALUES ('some cool data');

-- В терминале выполнить:
-- sudo ls -la /tmp/unlogged_ts/PG_16_202307071/16385

DROP TABLE test_unlogged;
DROP TABLESPACE unlogged_ts;

-- В терминале выполнить:
-- sudo rm -rf /tmp/unlogged_ts