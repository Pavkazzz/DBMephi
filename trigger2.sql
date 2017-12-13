create or replace function check_liciy() returns trigger as $$
    DECLARE
    boss varchar(20);
    BEGIN

    IF(NEW.complete_time > '2017-01-01 10:00:00'::timestamp) then


        boss = (select b.boss_name from ggroup
                LEFT JOIN statistic s ON s.group_id = NEW.group_id
                LEFT JOIN rade r ON r.event_id = s.event_id
                LEFT JOIN rade_boss rb ON rb.rade_id = r.event_id
                LEFT JOIN boss b ON b.boss_id = rb.boss_id
                where b.boss_name = 'Лысый'
                group by b.boss_name);

        
        if (boss = 'Лысый') then 
            update character
                set equip_level = c.equip_level + 10
                from(select c.equip_level from character c
                LEFT JOIN statistic s ON s.character_id = c.character_id
                LEFT JOIN ggroup g ON g.group_id = s.group_id) as c;
                RAISE NOTICE '"ВНИМАНИЕ! Убили ЛЫСОГО."';
        end if;

    end IF; 
    return NEW;

END; 
$$ LANGUAGE plpgsql;

drop trigger check_liciy on ggroup;

CREATE TRIGGER check_liciy
BEFORE INSERT or UPDATE on ggroup
FOR EACH ROW EXECUTE PROCEDURE check_liciy();