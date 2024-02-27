SELECT 
    menu.pizza_name,
    menu.price,
    p.name AS pizzeria_name
FROM menu
INNER JOIN pizzeria p ON menu.pizzeria_id = p.id
INNER JOIN 
    (SELECT id AS menu_id FROM menu
    EXCEPT
    SELECT menu_id FROM person_order) AS t1 ON t1.menu_id = menu.id
ORDER BY menu.pizza_name, menu.price;
/*
Пожалуйста, используйте оператор SQL из упражнения № 01 
и покажите названия пицц из пиццерий, 
которые никем не заказаны, включая соответствующие цены. 
Результат должен быть отсортирован по названию и цене пиццы. 
*/