
-- Создание представления для женщин
CREATE VIEW v_persons_female AS 
SELECT * FROM person WHERE gender = 'female';

-- проверка
-- select * from v_persons_female;

-- Создание представления для мужчин
CREATE VIEW v_persons_male AS
SELECT * FROM person WHERE gender = 'male';

-- проверка
-- select * from v_persons_male;
/*
Создайте 2 представления базы данных (с атрибутами, аналогичными исходной таблице) 
на основе простой фильтрации по полу людей. Задайте соответствующие имена для представлений 
базы данных: v_persons_femaleи v_persons_male
*/