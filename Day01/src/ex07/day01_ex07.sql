SELECT order_date, (SELECT CONCAT(name, '(age:', age, ')') 
FROM person WHERE person_order.person_id = person.id) AS person_information FROM person_order
ORDER BY order_date, person_information ASC;
/*
Напишите оператор SQL, который возвращает дату заказа из 
person_order таблицы и имя соответствующего человека 
(имя и возраст имеют формат, как в примере данных ниже), 
который сделал заказ из таблицы person. 
Добавьте сортировку по обоим столбцам в порядке возрастания.
order_date      person_information
2022-01-01      Andrey(age:21)
2022-01-01      Andrey(age:21)
2022-01-01      Anna(age:16)
...             ...
*/ 