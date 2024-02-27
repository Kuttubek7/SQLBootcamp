SELECT pizza_name AS pizza_name FROM menu
UNION
SELECT pizza_name FROM menu
ORDER BY pizza_name DESC;
/*
Напишите оператор SQL, который возвращает уникальные названия пиццы из 
menu таблицы и упорядочивает их по столбцу pizza_name в порядке убывания. 
Обратите внимание на раздел «Отказано».
*/