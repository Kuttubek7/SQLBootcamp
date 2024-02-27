SELECT pizzeria.name AS pizzeria_name
FROM person 
	INNER JOIN person_order ON person_order.person_id = person.id
	INNER JOIN menu ON menu.id = person_order.menu_id
	INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.gender = 'female'
EXCEPT
SELECT pizzeria.name
FROM person
	INNER JOIN person_order ON person_order.person_id = person.id
	INNER JOIN menu ON menu.id = person_order.menu_id
	INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.gender = 'male'
ORDER BY pizzeria_name;
/*
Найдите, пожалуйста, объединение пиццерий, которые имеют заказы как от женщин, так и от мужчин. 
Другими словами, вы должны найти набор названий пиццерий, заказанных только женщинами, 
и выполнить операцию «UNION» с набором названий пиццерий, заказанных только мужчинами. 
Обратите внимание на слово «только» для обоих полов. 
Для любых операторов SQL с наборами не сохраняйте дубликаты (UNION, EXCEPT, INTERSECT). 
Пожалуйста, отсортируйте результаты по названию пиццерии. Пример данных представлен ниже.
pizzeria_name
Papa Johns
*/