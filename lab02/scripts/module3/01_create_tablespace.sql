-- Модуль 3, Задача 1: Создание табличного пространства
-- Лабораторная работа №2: Организация данных и системный каталог

-- В терминале выполнить:
-- mkdir /home/student/lab2space
-- sudo chown postgres:postgres /home/student/lab2space

CREATE TABLESPACE lab02_ts LOCATION '/home/student/lab2space';