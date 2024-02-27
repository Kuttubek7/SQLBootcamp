INSERT INTO menu(id, pizzeria_id, pizza_name, price)
values (
	(select max(id) from menu)+1, 
	(SELECT id from pizzeria where name = 'Dominos'), 
	'sicilian pizza', 900
	);

-- -- для проверки что строка добавлен в таблицу
-- SELECT * FROM menu
-- WHERE id = 19 AND pizzeria_id = 2 AND pizza_name = 'sicilian pizza' AND price = 900;

-- -- для удаления только что добавленной строки из таблицы
-- DELETE FROM menu
-- WHERE id = 19 AND pizzeria_id = 2 AND pizza_name = 'sicilian pizza' AND price = 900;
/*
Пожалуйста, зарегистрируйте новую пиццу с названием «sicilian pizza» 
(идентификатор которой должен рассчитываться по формуле «максимальное значение идентификатора + 1») 
по цене 900 рублей в ресторане «Доминос» 
(для получения идентификатора пиццерии используйте внутренний запрос). 
*/