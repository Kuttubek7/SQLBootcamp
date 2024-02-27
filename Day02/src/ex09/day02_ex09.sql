SELECT name
FROM person
INNER JOIN person_order ON person.id = person_order.person_id
INNER JOIN menu ON menu.id = person_order.menu_id
WHERE person.gender = 'female' AND pizza_name IN ('cheese pizza', 'pepperoni pizza')
GROUP BY name
HAVING COUNT(DISTINCT pizza_name) = 2
ORDER BY name;
/*
Пожалуйста, найдите имена всех женщин, которые заказывали и пепперони, 
и сырную пиццу (в любое время и в любых пиццериях). 
Убедитесь, что результат упорядочен по имени человека. 
Пример данных представлен ниже.
name 
Anna
...
*/