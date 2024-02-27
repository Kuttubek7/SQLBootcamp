-- простой индекс BTree для каждого внешнего ключа в нашей базе данных
CREATE INDEX idx_menu_pizzeria_id ON menu (pizzeria_id);

/*
Пожалуйста, создайте простой индекс BTree для каждого внешнего ключа в нашей базе данных. 
Шаблон имени должен удовлетворять следующему правилу «idx_{table_name}_{column_name}». 
Например, имя индекса BTree для столбца pizzeria_id в menu таблице — idx_menu_pizzeria_id.
*/