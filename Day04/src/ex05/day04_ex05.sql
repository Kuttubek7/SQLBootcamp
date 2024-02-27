-- Создание представления v_price_with_discount
CREATE VIEW v_price_with_discount AS
SELECT
    po.id AS order_id,
    p.name AS person_name,
    m.pizza_name,
    m.price AS real_price,
    ROUND(m.price - m.price * 0.1)::integer AS discount_price
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.menu_id = m.id
ORDER BY p.name, m.pizza_name;

-- -- проверка
-- SELECT * FROM v_price_with_discount;

/*
Создайте представление базы данных v_price_with_discount, которое возвращает заказы 
человека с именами людей, названиями пиццы, реальной ценой и расчетным столбцом 
Discount_price (с примененной скидкой 10 % и удовлетворяющей формуле цена – цена*0,1). 
Результат отсортируйте по имени человека и названию пиццы и округлите столбец 
Discount_price до целочисленного типа.
*/