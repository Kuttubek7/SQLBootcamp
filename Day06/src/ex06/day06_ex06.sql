-- Создание последовательности и установка значения по умолчанию для столбца id
CREATE SEQUENCE seq_person_discounts START 1;

-- Установка значения по умолчанию и текущего значения для столбца id
ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts') + 1;

-- Установка текущего значения последовательности
SELECT setval('seq_person_discounts', (SELECT COALESCE(MAX(id), 0) + 1 FROM person_discounts));

-- удаляет последовательность в случае чего
-- DROP SEQUENCE seq_person_discounts CASCADE;

