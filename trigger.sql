create or replace function check_stat() returns trigger as $$
    DECLARE
    class_type_new varchar(10);
    cnt integer;
    total_cnt integer;
    class_id_new integer;
    BEGIN
    
    class_id_new = (select character.class_id from character
        where character.character_id = NEW.character_id);

    class_type_new = (select class.class_type from character
        LEFT JOIN class ON character.class_id = class.class_id
        where character.character_id = NEW.character_id);

    cnt = (select COUNT(statistic.character_id) from statistic
        LEFT JOIN character ON statistic.character_id = character.character_id
        LEFT JOIN class ON character.class_id = class.class_id
        where class_type = class_type_new);

    total_cnt = (select COUNT(statistic.character_id) from statistic
        LEFT JOIN character ON statistic.character_id = character.character_id
        LEFT JOIN class ON character.class_id = class.class_id);

    RAISE NOTICE '"%"" % % % %', class_type_new, cnt, total_cnt, NEW.character_id, class_id_new;

    IF((class_type_new = 'Танк' and cnt >= 2) or (class_type_new = 'Лечение' and cnt >= 5) or 
        (class_type_new = 'Боец' and cnt >= 18)) THEN
        RAISE EXCEPTION 'Невозможно добавить в группу. Максимальное количество % равно %', 
        class_type_new, cnt;
    END IF;
    RETURN NEW;

END; 
$$ LANGUAGE plpgsql;


drop trigger check_stat on statistic;

CREATE TRIGGER check_stat
BEFORE INSERT or UPDATE on statistic
FOR EACH ROW EXECUTE PROCEDURE check_stat();