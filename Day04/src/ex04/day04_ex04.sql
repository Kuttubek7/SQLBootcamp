-- -- Создание представления для операции симметрического объединения
CREATE VIEW v_symmetric_union AS 
    (SELECT person_id FROM person_visits WHERE visit_date = '2022-01-02'
    EXCEPT
    SELECT person_id FROM person_visits WHERE visit_date = '2022-01-06')
UNION
    (SELECT person_id FROM person_visits WHERE visit_date = '2022-01-06'
    EXCEPT
    SELECT person_id FROM person_visits WHERE visit_date = '2022-01-02')
ORDER BY 1;

-- Удаление виртуальной таблицы v_symmetric_union
-- DROP VIEW IF EXISTS v_symmetric_union;

-- проверка виртуальной таблицы v_symmetric_union
-- SELECT * FROM v_symmetric_union;

/*
Пожалуйста, напишите оператор SQL, который удовлетворяет формуле (R - S)∪(S - R). 
Где R — это person_visitsтаблица с фильтром на 2 января 2022 г., S — также person_visits
таблица, но с другим фильтром на 6 января 2022 г. Пожалуйста, производите расчеты с наборами 
под столбцом, person_idи в результате этот столбец будет один. Результат отсортируйте по person_id 
столбцу, а окончательный SQL-запрос отобразите в v_symmetric_unionвиде (*) базы данных.
(*) честно говоря, определения «симметричного объединения» в теории множеств не существует. 
Это авторская интерпретация, основная идея которой основана на существующем правиле 
симметричного различия.
*/