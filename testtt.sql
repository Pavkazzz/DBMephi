-- insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    -- values(1, 2, 2, 2, 'TAAAANK3123213', 2000, 60, 65, current_timestamp);

-- insert into statistic(character_id, event_id, group_id, value) values(13, 2, 1, 100);

-- update statistic set value = 101 where character_id = 11

-- select '2017-12-02 11:32:57'::timestamp;
select * from rade_boss
    left join boss ON rade_boss.boss_id = boss.boss_id;