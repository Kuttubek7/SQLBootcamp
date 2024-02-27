INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date) 
VALUES (
	(SELECT MAX(id)+1 FROM person_visits), 
	(SELECT id from person WHERE name = 'Denis'),
	(SELECT id from pizzeria WHERE name = 'Dominos'), 
	'2022-02-24');
INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
	(SELECT MAX(id)+1 FROM person_visits), 
	(SELECT id FROM person WHERE name = 'Irina'),
	(SELECT id from pizzeria WHERE name = 'Dominos'), 
	'2022-02-24');
	
-- -- для проверки что строка добавлен в таблицу
-- SELECT * FROM person_visits 
-- where visit_date = '2022-02-24' and person_id in (6,4) and pizzeria_id=2;

-- -- для удаления только что добавленных строк
-- delete from person_visits
-- where 
-- 	id = (select MAX(id) from person_visits) and 
-- 	person_id = (select id from person where name = 'Irina') and
-- 	pizzeria_id = (select id from pizzeria where name = 'Dominos') and 
-- 	visit_date = '2022-02-24'
-- 	OR
-- 	id = (select MAX(id) from person_visits) and 
-- 	person_id = (select id from person where name = 'Denis') and
-- 	pizzeria_id = (select id from pizzeria where name = 'Dominos') and 
-- 	visit_date = '2022-02-24'

/*
Пожалуйста, зарегистрируйте новые посещения ресторана Dominos от Дениса и Ирины 24 февраля 2022 года.
Внимание: это упражнение, вероятно, станет причиной неправильного изменения данных. 
Собственно, восстановить исходную модель базы данных можно по данным по ссылке в разделе 
«Правила дня» и воспроизвести скрипт из Упражнений 07 и 08.
*/