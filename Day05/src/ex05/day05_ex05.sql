-- Создание частичного уникального индекса idx_person_order_order_date
CREATE UNIQUE INDEX idx_person_order_order_date ON person_order(person_id, menu_id)
WHERE order_date = '2022-01-01';

-- проверка
SET enable_seqscan TO OFF;
EXPLAIN ANALYSE
SELECT person_id, menu_id FROM person_order WHERE order_date = '2022-01-01';

/*
Создайте частичный уникальный индекс BTree с именем idx_person_order_order_date 
в person_order таблице person_id и menu_id атрибутами с частичной уникальностью для 
order_date столбца на дату «01.01.2022».

Команда EXPLAIN ANALYZE должна вернуть следующий шаблон
Index Only Scan using idx_person_order_order_date on person_order …
*/