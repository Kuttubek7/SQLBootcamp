-- Создание материализованного представления mv_dmitriy_visits_and_eats
CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS 
SELECT p.name as pizzeria_name
FROM menu 
    INNER JOIN pizzeria p ON p.id = menu.pizzeria_id
    INNER JOIN person_visits pv ON menu.pizzeria_id = pv.pizzeria_id
    INNER JOIN person p2 ON p2.id = pv.person_id
WHERE price < 800 AND p2.name = 'Dmitriy' AND visit_date = '2022-01-08';

-- -- проверка
-- SELECT * FROM mv_dmitriy_visits_and_eats;

/*
Пожалуйста, создайте материализованное представление mv_dmitriy_visits_and_eats(с включенными данными) 
на основе оператора SQL, которое находит название пиццерии, которую Дмитрий посетил 
8 января 2022 года и где он мог есть пиццу менее чем за 800 рублей 
(этот SQL вы можете узнать в упражнении № 07 дня № 02). ).
Чтобы проверить себя, вы можете написать SQL в Materialized View mv_dmitriy_visits_and_eats и 
сравнить результаты с предыдущим запросом.
*/