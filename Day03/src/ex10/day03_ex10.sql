-- -- для начала лучше было бы узнать существует ли такая пицца(sicilian pizza)
-- select * from menu where pizza_name = 'sicilian pizza'

-- добавляем заказы
INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES(
	(select MAX(id)+1 from person_order),
	(select id from person where name = 'Denis'),
	(select id from menu where pizza_name = 'sicilian pizza'),
	'2022-02-24'
	);
INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES(
	(select MAX(id)+1 from person_order),
	(select id from person where name = 'Irina'),
	(select id from menu where pizza_name = 'sicilian pizza'),
	'2022-02-24'
	);

-- -- для проверки добавилься ли заказ в таблицу
-- SELECT * FROM person_order
-- WHERE order_date = '2022-02-24' and person_id in (6,4) 
-- and menu_id = (select id from menu where pizza_name = 'sicilian pizza')

-- -- для удаления заказов из таблицы
-- delete from person_order
-- where id = 21 or id = 22 and person_id in (6,4) 
-- and menu_id = (select id from menu where pizza_name = 'sicilian pizza')
/*
Пожалуйста, регистрируйте новые заказы от Дениса и Ирины 24 февраля 2022 года 
на новое меню с «sicilian pizza».
Внимание: это упражнение, вероятно, станет причиной неправильного изменения данных. 
Собственно, восстановить исходную модель базы данных можно с помощью данных по ссылке в разделе 
«Правила дня» и сценария повтора из Упражнений 07, 08 и 09.
*/