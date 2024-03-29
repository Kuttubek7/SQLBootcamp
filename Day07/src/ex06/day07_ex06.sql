SELECT 
    pizzeria.name,
    COUNT(po.id) AS count_of_orders,
    ROUND(AVG(menu.price), 2) AS average_price,
    MAX(menu.price) AS max_price,
    MIN(menu.price) AS min_price
FROM person_order po
    INNER JOIN menu ON po.menu_id = menu.id
    INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name
ORDER BY name ASC;
