-- level
-- equip level
-- hp

create or replace function find_group(char_id integer, evnt_id integer) returns integer as $$ -- return group_id
DECLARE
    koef_level real;
    koef_equip real;
    koef_hp real;
    t_row ggroup%rowtype;
    val_level real;
    val_hp real;
    val_equip real;
    val_current real;
    val real;
    i integer;
    res integer;
    otl integer;
    temp_otl integer;

BEGIN
    koef_level = 10;
    koef_equip = 20;
    koef_hp = 5;
    i=0;
    res = -1;

    val_current = (select c.equip_level*koef_equip + 
                          c.level*koef_level +
                          c.hp*koef_hp from character c
                          where c.character_id = char_id);
    otl = val_current;

    FOR t_row in (SELECT * from ggroup where ggroup.event_id = evnt_id) LOOP
        i = i+1;
        val_equip = (select AVG(c.equip_level)*koef_equip from statistic s
                     LEFT JOIN character c ON c.character_id = s.character_id
                     where s.group_id = t_row.group_id);

        val_level = (select AVG(c.level)*koef_level from statistic s
                     LEFT JOIN character c ON c.character_id = s.character_id
                     where s.group_id = t_row.group_id);

        val_hp = (select AVG(c.hp)*koef_hp from statistic s
                     LEFT JOIN character c ON c.character_id = s.character_id
                     where s.group_id = t_row.group_id);

        val = val_hp + val_level + val_equip;

        if (val > 0) then 
            temp_otl = abs(val - otl);
            RAISE NOTICE '% % % %', val, val_current, temp_otl, otl;
            if (temp_otl < otl) then 
                otl = temp_otl;
                res = i;
            end if;
        end if;
    END LOOP;

    RAISE NOTICE '%', res;

    if (res > 0) then
        insert into statistic(character_id, event_id, group_id) values(char_id, evnt_id, res);
    end if;

    return res;
END;
$$ LANGUAGE plpgsql;

-- SELECT character_name, find_group(character_id) as gr from character;
SELECT find_group(5, 2);