DELETE FROM person_order WHERE order_date = '2022-02-25';
DELETE FROM menu WHERE pizza_name = 'greek pizza';

-- -- проверка
-- DELETE FROM person_order
-- WHERE order_date = '2022-02-25';

-- SELECT * FROM menu
-- WHERE id = 19 AND pizzeria_id = 2 AND pizza_name = 'greek pizza' AND price = 800 OR price = 720.00;

/*
Напишите 2 оператора SQL (DML), которые удаляют все новые заказы из упражнения № 12 
в зависимости от даты заказа. Тогда удалите из меню «greek pizza»
*/