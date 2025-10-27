-- Модуль 1, Задача 5: Настройка параметра базы данных
-- Лабораторная работа №2: Организация данных и системный каталог

SHOW temp_buffers;

ALTER DATABASE lab02_db SET temp_buffers = '32MB';

\c postgres
\c lab02_db

SHOW temp_buffers;