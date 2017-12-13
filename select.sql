-- 1
select r.race_name, COUNT(r.race_id) from ggroup g
    inner join statistic s ON g.group_id = s.group_id
    left join character c ON c.character_id = s.character_id
    left join race r ON r.race_id = c.race_id 
    left join fraction f ON f.fraction_id = r.fraction_id
    where g.fraction_win = f.fraction_id
    group by r.race_id;

-- 2

select c.character_name, COUNT(c.character_name) from server srv
    inner join character c ON c.server_id = srv.server_id
    inner join statistic s ON s.character_id = c.character_id
    left join ggroup g ON g.group_id = s.group_id
    left join rade_boss rb ON rb.rade_id = g.event_id
    left join boss b ON b.boss_id = rb.boss_id
    where g.complete_time > '2010-01-01 00:00:00'::timestamp
    group by c.character_id
    order by COUNT(c) DESC
    ;

select distinct ON (srv.server_name) srv.server_name, c.character_name from server srv
    inner join character c ON c.server_id = srv.server_id
    inner join statistic s ON s.character_id = c.character_id
    inner join ggroup g ON g.group_id = s.group_id
    inner join rade_boss rb ON rb.rade_id = g.event_id
    inner join boss b ON b.boss_id = rb.boss_id
    where g.complete_time > '2010-01-01 00:00:00'::timestamp
    group by srv.server_name, c.character_name
    order by srv.server_name, COUNT(c) DESC
    ;

-- 3
select distinct ON (gm.username) gm.username from gamer gm
    inner join character c ON c.gamer_id = gm.gamer_id
    inner join statistic s ON s.character_id = c.character_id
    inner join ggroup g ON g.group_id = s.group_id
    where g.complete_time > (current_timestamp - INTERVAL '1 month')
        and c.equip_level > 40
    order by gm.username
    ;

--4

select * from 
    (select cl.class_name, AVG(c.equip_level)::integer from character c
    right join class cl ON c.class_id = cl.class_id
    group by cl.class_name 
    order by AVG(c.equip_level) ASC limit 1
    ) A
UNION
select * from 
    (select cl.class_name, AVG(c.equip_level)::integer from character c
    right join class cl ON c.class_id = cl.class_id
    group by cl.class_name 
    order by AVG(c.equip_level) DESC limit 1
    ) B
    ;


-- 5
select r.event_id, r.rade_name, complete_time, create_time from rade r
    inner join ggroup g ON g.event_id = r.event_id
    ;

select g.event_id, r.rade_name, COUNT(*),
       ((COUNT(*) - COUNT(g.complete_time > '2000-01-01 00:00:00'::timestamp)) / COUNT(*)::real)*100 as proc_complete from rade r
    inner join ggroup g ON g.event_id = r.event_id
    group by g.event_id, r.rade_name
    ;

-- 6
