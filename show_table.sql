-- select * from race;
-- select * from class;
-- select * from boss;

-- select * from rade;
-- select * from dungeon;
-- select * from event;
-- select * from character;
select * from ggroup;
-- select * from statistic;
-- select * from event;

select b.boss_name from ggroup
    LEFT JOIN statistic s ON s.group_id = ggroup.group_id
    LEFT JOIN rade r ON r.event_id = s.event_id
    LEFT JOIN rade_boss rb ON rb.rade_id = r.event_id
    LEFT JOIN boss b ON b.boss_id = rb.boss_id
    where b.boss_name = 'Лысый'
    group by b.boss_name;

-- select * from rade_boss;