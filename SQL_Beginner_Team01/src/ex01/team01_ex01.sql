-- Добавление новых данных в таблицу
insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

-- Общее табличное выражение для получения балансов пользователей с информацией о валюте
WITH user_balance_cte AS (
    SELECT 
        b.user_id AS user_id,
        b.money,
        b.updated AS balance_updated,
        c.name AS currency_name,
        c.rate_to_usd AS currency_rate,
        c.updated AS currency_updated
    FROM 
        balance b
    JOIN currency c ON b.currency_id = c.id
),

-- Общее табличное выражение для объединения положительных и отрицательных разниц балансов
balance_diff_cte AS (
    SELECT 
        q2.user_id AS user_id,
        q2.currency_name,
        q2.money,
        q2.balance_updated,
        COALESCE(q1.diff, q2.diff) AS new_diff
    FROM (
        -- Подзапрос для определения разницы в положительном балансе        
        SELECT 
            user_balance_cte.user_id,
            currency_name,
            money,
            balance_updated,
            MIN(balance_updated - currency_updated) AS diff
        FROM 
            user_balance_cte
        WHERE 
            balance_updated - currency_updated > INTERVAL '0 days'
        GROUP BY 1, 2, 3, 4
    ) q1
    FULL JOIN (
        -- Подзапрос для получения разниц отрицательного баланса
        SELECT 
            user_balance_cte.user_id,
            currency_name,
            money,
            balance_updated,
            MAX(balance_updated - currency_updated) AS diff
        FROM 
            user_balance_cte
        WHERE 
            balance_updated - currency_updated < INTERVAL '0 days'
        GROUP BY 1, 2, 3, 4
    ) q2
    ON q1.user_id = q2.user_id AND q1.currency_name = q2.currency_name AND q1.money = q2.money AND q1.balance_updated = q2.balance_updated
)

-- Основной запрос для получения сведений о пользователе и остатков конвертированной валюты
SELECT 
    COALESCE(u.name, 'not defined') AS user_name,
    COALESCE(u.lastname, 'not defined') AS user_lastname,
    bd.currency_name,
    bd.money * cu.rate_to_usd AS currency_in_usd
FROM 
    balance_diff_cte bd
LEFT JOIN 
    "user" u ON bd.user_id = u.id
LEFT JOIN 
    currency cu ON bd.new_diff = (bd.balance_updated - cu.updated) AND bd.currency_name = cu.name
ORDER BY 
    1 DESC, 2 ASC, 3 ASC;
