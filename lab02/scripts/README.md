# SQL Scripts - Лабораторная работа №2

Данная папка содержит все SQL-скрипты, использованные в лабораторной работе №2 "Организация данных и системный каталог".

## Структура папок

### module1/ - Базы данных и схемы
- `01_create_database.sql` - Создание базы данных
- `02_create_schemas_and_tables.sql` - Работа со схемами и таблицами
- `03_check_database_size.sql` - Проверка размера БД
- `04_search_path.sql` - Управление путем поиска
- `05_temp_buffers.sql` - Настройка параметра temp_buffers

### module2/ - Системный каталог
- `01_inspect_pg_class.sql` - Исследование pg_class
- `02_inspect_pg_tables.sql` - Исследование pg_tables
- `03_temp_table_and_schemas.sql` - Временные таблицы и схемы
- `04_information_schema_views.sql` - Представления information_schema
- `05_pg_views_analysis.sql` - Анализ метакоманды

### module3/ - Табличные пространства
- `01_create_tablespace.sql` - Создание табличного пространства
- `02_alter_template1.sql` - Изменение template1
- `03_new_database_inheritance.sql` - Наследование свойств
- `04_symbolic_links.sql` - Символические ссылки
- `05_drop_tablespace.sql` - Удаление табличного пространства
- `06_random_page_cost.sql` - Настройка random_page_cost

### module4/ - Низкий уровень
- `01_unlogged_table.sql` - Нежурналируемые таблицы
- `02_toast_strategies.sql` - Стратегии хранения TOAST
- `03_database_size_comparison.sql` - Сравнение размеров
- `04_compression_methods_check.sql` - Проверка методов сжатия
- `05_compression_comparison.sql` - Сравнение методов сжатия

## Примечания

- Скрипты упорядочены по номерам для последовательного выполнения
- Каждый файл содержит комментарии с описанием
- Некоторые скрипты требуют выполнения команд в терминале
- Замените OID на актуальные значения из вашей БД
