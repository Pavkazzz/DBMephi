-- select * from character c
--     where gender = 'female'
--     order by equip_level;

-- insert into ggroup(event_id, create_time)
--     values(8, current_timestamp);

-- insert into statistic(character_id, event_id, group_id)
--     select character_id, 8, group_id 
--     from character 
--     where gender = 'female'
--     order by equip_level
-- select group_id from ggroup order by group_id DESC limit 1

-- create_group();
select * from ggroup;
select * from statistic 
    left join character ON statistic.character_id = character.character_id
    where statistic.group_id = 3;

select * from character;