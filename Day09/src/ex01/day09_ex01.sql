CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit()
    RETURNS TRIGGER AS $update_audit$
    BEGIN IF (TG_OP = 'UPDATE') THEN
    INSERT INTO person_audit SELECT now(), 'U', OLD.*;
    END IF;
    RETURN NULL;
END;
    $update_audit$ LANGUAGE plpgsql;
CREATE TRIGGER trg_person_update_audit AFTER UPDATE ON person
FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
