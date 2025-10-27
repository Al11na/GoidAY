-- Модуль 2, Задача 4: Представления information_schema
-- Лабораторная работа №2: Организация данных и системный каталог

SELECT table_name 
FROM information_schema.views 
WHERE table_schema = 'information_schema'
ORDER BY table_name;