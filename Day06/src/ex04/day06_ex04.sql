-- Ограничение на отсутствие NULL в столбце person_id
ALTER TABLE person_discounts
ADD CONSTRAINT ch_nn_person_id
CHECK (person_id IS NOT NULL);

-- Ограничение на отсутствие NULL в столбце pizzeria_id
ALTER TABLE person_discounts
ADD CONSTRAINT ch_nn_pizzeria_id
CHECK (pizzeria_id IS NOT NULL);

-- Ограничение на отсутствие NULL в столбце discount
ALTER TABLE person_discounts
ADD CONSTRAINT ch_nn_discount
CHECK (discount IS NOT NULL);

-- Значение по умолчанию для столбца discount
ALTER TABLE person_discounts
ALTER COLUMN discount SET DEFAULT 0;

-- Ограничение на диапазон значений в столбце discount (0-100)
ALTER TABLE person_discounts
ADD CONSTRAINT ch_range_discount
CHECK (discount >= 0 AND discount <= 100);
