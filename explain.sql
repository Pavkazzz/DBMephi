explain select r.race_name, COUNT(r.race_id) from ggroup g
    inner join statistic s ON g.group_id = s.group_id
    left join character c ON c.character_id = s.character_id
    left join race r ON r.race_id = c.race_id 
    left join fraction f ON f.fraction_id = r.fraction_id
    where g.fraction_win = f.fraction_id
    group by r.race_id;
