-- -- не забудьте проверить существует ли пицца с таким названием
-- SELECT pizza_name 
-- FROM menu 
-- WHERE pizza_name = 'greek pizza' AND id = 19 AND pizzeria_id = 2 AND price = 800;

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    g + (SELECT MAX(id) FROM person_order) AS id,
    p.id AS person_id,
    (SELECT m.id FROM menu m WHERE m.pizza_name = 'greek pizza') AS menu_id,
    '2022-02-25' AS order_date
FROM person p
INNER JOIN
    generate_series(1, (SELECT COUNT(*) FROM person)) AS g ON g = p.id;

-- -- проверяю что строки добавились. если person_id > 20 значит все сработало отлично
-- select * from person_order where order_date = '2022-02-25' 
-- and menu_id = (select id from menu where pizza_name = 'greek pizza')

-- -- удаляю строки
-- DELETE FROM person_order
-- WHERE order_date = '2022-02-25';

/*
Пожалуйста, зарегистрируйте новые заказы на «greek pizza» от всех лиц 25 февраля 2022 года.
 
 Внимание : это упражнение, вероятно, станет причиной неправильного изменения данных. 
 Собственно, восстановить исходную модель базы данных можно с помощью данных по ссылке в разделе 
 «Правила дня» и сценария повтора из Упражнений 07, 08, 09, 10 и 11.
*/