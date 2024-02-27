INSERT INTO menu values(19,2,'greek pizza', 800); -- способ первый
-- INSERT INTO menu(id, pizzeria_id, pizza_name, price) -- способ второй
-- VALUES(19,2,'greek pizza', 800);

-- -- для проверки что строка добавлен в таблицу
-- SELECT * FROM menu
-- WHERE id = 19 AND pizzeria_id = 2 AND pizza_name = 'greek pizza' AND price = 800;

-- -- для удаления только что добавленной строки из таблицы
-- DELETE FROM menu
-- WHERE id = 19 AND pizzeria_id = 2 AND pizza_name = 'greek pizza' AND price = 800;
/*
Пожалуйста, зарегистрируйте новую пиццу с названием «греческая пицца» 
(используйте id = 19) и ценой 800 рублей в ресторане «Доминос» (pizzeria_id = 2).
Внимание: это упражнение, вероятно, станет причиной неправильного изменения данных. 
Собственно, восстановить исходную модель базы данных можно по данным по ссылке в разделе «Правила дня».
*/