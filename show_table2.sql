select * from ggroup;
select * from statistic;

select c.equip_level from character c
    LEFT JOIN statistic s ON s.character_id = c.character_id
    LEFT JOIN ggroup g ON g.group_id = s.group_id;

-- select character.class_id from character
        -- LEFT JOIN character ON character.character_id = statistic.character_id
--         where character.character_id = 10

-- update character
--     set equip_level = c.equip_level + 10
--     from(select c.equip_level from character c
--     LEFT JOIN statistic s ON s.character_id = c.character_id
--     LEFT JOIN ggroup g ON g.group_id = s.group_id) as c;