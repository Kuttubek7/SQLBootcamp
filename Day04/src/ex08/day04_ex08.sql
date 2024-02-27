-- Удаление виртуальной таблицы v_persons_female
DROP VIEW v_persons_female;

-- Удаление виртуальной таблицы v_persons_male 
DROP VIEW v_persons_male;

-- Удаление виртуальной таблицы v_symmetric_union
DROP VIEW IF EXISTS v_symmetric_union;

-- Удаление виртуальной таблицы v_price_with_discount
DROP VIEW IF EXISTS v_price_with_discount;

-- Удаление виртуальной таблицы v_generated_dates
DROP VIEW IF EXISTS v_generated_dates;

-- Удаление материализованного представления mv_dmitriy_visits_and_eats
DROP MATERIALIZED VIEW IF EXISTS mv_dmitriy_visits_and_eats;

/*
После всех наших упражнений родились несколько виртуальных таблиц и 
одно материализованное представление. Давайте их бросим!
*/