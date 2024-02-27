SELECT pizzeria.name AS pizzeria_name
FROM person_visits
	INNER JOIN person ON person.id = person_visits.person_id
	INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE person.name = 'Andrey'
EXCEPT
SELECT pizzeria.name AS pizzeria_name
FROM person_order
	INNER JOIN person ON person_order.person_id = person.id
	INNER JOIN menu ON person_order.menu_id = menu.id
	INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Andrey'
ORDER BY pizzeria_name;
/*
Напишите, пожалуйста, SQL-запрос, который возвращает список пиццерий, 
которые Андрей посетил, но не сделал заказов. 
Пожалуйста, заказывайте по названию пиццерии. Образец данных представлен ниже.
pizzeria_name
Pizza Hut
*/