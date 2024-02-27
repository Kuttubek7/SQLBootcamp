-- -- не забудьте проверить существует ли пицца с таким названием
-- SELECT pizza_name 
-- FROM menu 
-- WHERE pizza_name = 'greek pizza' AND id = 19 AND pizzeria_id = 2 AND price = 800;

-- -- обновляю цену
UPDATE menu
SET price = price * 0.9
WHERE pizza_name = 'greek pizza';

-- -- проверка
-- select pizza_name, price from menu 
-- where pizza_name = 'greek pizza'

/*
Пожалуйста, измените цену на «greek pizza» на -10% от текущего значения.
Внимание : это упражнение, вероятно, станет причиной неправильного изменения данных. 
Собственно, восстановить исходную модель базы данных можно с помощью данных по ссылке в разделе 
«Правила дня» и сценария повтора из упражнений 07, 08, 09 и 10.
*/

