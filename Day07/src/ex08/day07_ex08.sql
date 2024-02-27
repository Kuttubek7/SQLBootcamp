SELECT
    p1.address,
    p.name AS pizzeria_name,
    COUNT(*) AS order_count
FROM person_order
    INNER JOIN menu m ON person_order.menu_id = m.id
    INNER JOIN pizzeria p ON m.pizzeria_id = p.id
    INNER JOIN person p1 ON person_order.person_id = p1.id
GROUP BY p1.address, p.name
ORDER BY p1.address, pizzeria_name;
