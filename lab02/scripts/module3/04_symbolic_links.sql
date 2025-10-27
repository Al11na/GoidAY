-- Модуль 3, Задача 4: Символические ссылки табличных пространств
-- Лабораторная работа №2: Организация данных и системный каталог

SELECT oid AS tsoid FROM pg_tablespace WHERE spcname = 'lab02_ts';

SHOW data_directory;

-- В терминале выполнить:
-- sudo ls -la /var/lib/postgresql/16/main/pg_tblspc/16418