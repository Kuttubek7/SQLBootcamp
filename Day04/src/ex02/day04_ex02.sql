-- Create a view to store generated dates from 1st to 31st January 2022
CREATE VIEW v_generated_dates AS
SELECT
    generate_series(
        '2022-01-01'::date,
        '2022-01-31'::date,
        '1 day'::interval
    )::date AS generated_date
ORDER BY generated_date;
/*
Создайте представление базы данных (с именем v_generated_dates), 
в котором должны быть «сохранены» сгенерированные даты с 1 по 31 января 2022 года в типе DATE. 
Не забудьте о порядке столбца generated_date
*/