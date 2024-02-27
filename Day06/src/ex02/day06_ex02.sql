SELECT p.name, m.pizza_name, m.price,
    ROUND(
		CASE
        	WHEN pd.discount IS NOT NULL THEN m.price - (m.price * pd.discount / 100)
        	ELSE m.price
    	END,
        2
	) AS discount_price,
	pz.name AS pizzeria_name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
LEFT JOIN
    person_discounts pd ON po.person_id = pd.person_id AND m.pizzeria_id = pd.pizzeria_id
ORDER BY p.name, pz.name, m.pizza_name;
