select c.character_name, cl.class_name, c.equip_level from character c
    inner join class cl ON c.class_id = cl.class_id
    group by c.equip_level, c.character_name, cl.class_name
    order by c.equip_level;

select cl.class_name, AVG(c.equip_level)::integer from character c
    right join class cl ON c.class_id = cl.class_id
    group by cl.class_name 
    order by AVG(c.equip_level) ASC limit 1
    ;


-- select c.character_name from character c;