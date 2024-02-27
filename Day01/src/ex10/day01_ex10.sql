SELECT
	person.name AS person_name, 
	pizza_name AS pizza_name, 
	pizzeria.name AS pizzeria_name
FROM person_order
	JOIN person ON person.id = person_order.person_id
	JOIN menu ON menu.id = person_order.menu_id
	JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY person_name, pizza_name, pizzeria_name;

/*
Напишите оператор SQL, который возвращает список имен людей, 
сделавших заказ на пиццу в соответствующей пиццерии. 
Пример результата (с именованными столбцами) представлен ниже, 
и да... пожалуйста, сделайте заказ по 3 столбцам 
(person_name, pizza_name, pizzeria_name) в порядке возрастания.
person_name     pizza_name      pizzeria_name
Andrey          cheese pizza    Dominos
Andrey          mushroom pizza  Dominos
Anna            cheese pizza    Pizza Hut
...             ...             ...
*/