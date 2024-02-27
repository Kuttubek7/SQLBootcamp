-- Комментарий к таблице person_discounts
COMMENT ON TABLE person_discounts IS 'Таблица для управления скидками для клиентов пиццерий';

-- Комментарии к столбцам таблицы person_discounts
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор для каждой записи о скидке';
COMMENT ON COLUMN person_discounts.person_id IS 'Внешний ключ, ссылающийся на лицо, получившее скидку';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Внешний ключ, ссылающийся на пиццерию, в которой действует скидка';
COMMENT ON COLUMN person_discounts.discount IS 'Процентная скидка, применяемая к клиенту, составляет от 0 до 100';
