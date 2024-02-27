-- Вставка нового визита Dmitriy
INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (
	(SELECT MAX(id)+1 FROM person_visits),
    (SELECT id FROM person WHERE name = 'Dmitriy'),
    (SELECT pizzeria.id FROM pizzeria INNER JOIN menu on pizzeria.id = menu.pizzeria_id 
	 WHERE price < 800 AND menu.pizza_name != 'Papa Johns' ORDER BY 1 LIMIT 1),
    '2022-01-08'
);
-- Обновление состояния данных в материализованном представлении
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- проверка
-- SELECT * FROM mv_dmitriy_visits_and_eats;

/*
Давайте обновим данные в нашем материализованном представлении mv_dmitriy_visits_and_eats 
из упражнения №06. Перед этим действием сгенерируйте еще одно посещение Дмитрия, 
которое удовлетворяет предложению SQL материализованного представления, за исключением пиццерии, 
которую мы видим в результате упражнения № 06. После добавления нового посещения обновите 
состояние данных для mv_dmitriy_visits_and_eats.
*/