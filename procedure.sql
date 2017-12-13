create or replace function create_group() returns void as $$
DECLARE
    grp_id integer;

BEGIN
    insert into ggroup(event_id, create_time) values(8, current_timestamp);
    grp_id = (select group_id from ggroup order by group_id DESC limit 1);
    RAISE NOTICE '%', grp_id;
    insert into statistic(character_id, event_id, group_id)
        select character_id, 8, grp_id 
        from character 
        where gender = 'female'
        order by equip_level
        limit 5;

END;
$$ LANGUAGE plpgsql;

-- ALTER FUNCTION create_group OWNER TO postgres;
SELECT create_group();