-- Модуль 4, Задача 4: Проверка методов сжатия
-- Лабораторная работа №2: Организация данных и системный каталог

SELECT * FROM (
  SELECT string_to_table(setting, ' ') AS setting 
  FROM pg_config WHERE name = 'CONFIGURE'
) AS config
WHERE setting ~ '(lz4|pglz)';

\dconfig *toast*

SELECT setting, enumvals 
FROM pg_settings 
WHERE name = 'default_toast_compression';