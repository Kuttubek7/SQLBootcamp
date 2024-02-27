SELECT 
    pizza_name, pizzeria.name AS pizzeria_name
FROM 
    person_order INNER JOIN person ON person.id = person_order.person_id
    INNER JOIN menu ON menu.id = person_order.menu_id
    INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE 
    person.name IN('Denis', 'Anna')
ORDER BY 
    pizza_name, pizzeria_name;

/*
Пожалуйста, найдите все названия пицц
(и соответствующие названия пиццерий с помощью menu таблицы), 
которые заказали Денис или Анна. Отсортируйте результат по обоим столбцам. 
Пример вывода представлен ниже.
pizza_name      pizzeria_name
cheese pizza    Best Pizza 
cheese pizza    Pizza Hut
...             ...
*/