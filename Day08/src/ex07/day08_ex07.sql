-- session #1
BEGIN TRANSACTION;
-- session #2
BEGIN TRANSACTION;
-- session #1
UPDATE pizzeria SET rating = 4 WHERE name = 'Dominos';
-- session #2
UPDATE pizzeria SET rating = 3 WHERE name = 'Pizza Hut';
-- session #1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
-- session #2
UPDATE pizzeria SET rating = 3 WHERE name = 'Dominos';
-- session #1
commit work;
-- session #2
commit work;