insert into gamer(email, password, username)
    values('pavka@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'pavka');
insert into gamer(email, password, username)
    values('pavka2@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'asd');
insert into gamer(email, password, username)
    values('pavka3@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'sdf;k');
insert into gamer(email, password, username)
    values('pavka4@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'sdfkjh');
insert into gamer(email, password, username)
    values('pavka5@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'dfkln');
insert into gamer(email, password, username)
    values('pavka6@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'qwiueh');
insert into gamer(email, password, username)
    values('pavka7@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'qweuhasd');
insert into gamer(email, password, username)
    values('pavka8@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'dfgjk');
insert into gamer(email, password, username)
    values('pavka9@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'lnsdflnk');
insert into gamer(email, password, username)
    values('pavka10@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'ewrnkl');
insert into gamer(email, password, username)
    values('pavka11@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'emrlk');
insert into gamer(email, password, username)
    values('pavka12@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'o9wtu');
insert into gamer(email, password, username)
    values('pavka13@mail.ru', 'ed5694d2b403b21fcbaf7eaf14463d1b', 'ertjho2');



insert into fraction(fraction_name)
    values('evilf');
insert into fraction(fraction_name)
    values('goodf');

insert into race(fraction_id, race_name)
    values(1, 'Орки');
insert into race(fraction_id, race_name)
    values(1, 'Люди');
insert into race(fraction_id, race_name)
    values(1, 'Злорлуки');
insert into race(fraction_id, race_name)
    values(1, 'Темные шаманы');

insert into race(fraction_id, race_name)
    values(2, 'Высшие люди');
insert into race(fraction_id, race_name)
    values(2, 'Феи');
insert into race(fraction_id, race_name)
    values(2, 'Мурлоки');
insert into race(fraction_id, race_name)
    values(2, 'Шаманы');

insert into class(class_name, class_type)
    values('Воин', 'Танк');
insert into class(class_name, class_type)
    values('Убийца', 'Боец');
insert into class(class_name, class_type)
    values('Маг', 'Боец');
insert into class(class_name, class_type)
    values('Жрец', 'Лечение');

insert into race_class(class_id, race_id)
    values(1,1);
insert into race_class(class_id, race_id)
    values(2,2);
insert into race_class(class_id, race_id)
    values(2,3);
insert into race_class(class_id, race_id)
    values(4,4);
insert into race_class(class_id, race_id)
    values(1,5);
insert into race_class(class_id, race_id)
    values(4,6);
insert into race_class(class_id, race_id)
    values(2,7);
insert into race_class(class_id, race_id)
    values(3,8);

insert into region(region_name)
    values('СНГ');

insert into region(region_name)
    values('Euro');

insert into server(region_id, server_name, type, load, max_player)
    values(1, 'Лунатопия', 'PvP', 10, 999);

insert into server(region_id, server_name, type, load, max_player)
    values(2, 'Марсотопия', 'PvE', 20, 999);

insert into server(region_id, server_name, type, load, max_player)
    values(1, 'Плутопия', 'EvE', 5, 999);

insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 1, 1, 1, 'ЖизньЗаОрду', 1000, 30, 150, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 1, 5, 2, 'SuperTank', 2000, 60, 65, current_timestamp);

insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 2, 2, 3, 'ForgottenKiller', 500, 40, 65, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 2, 2, 4, 'Voll', 500, 40, 65, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 2, 3, 5, 'Mgrmgr', 550, 54, 50, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 2, 7, 6, 'Болотный', 700, 23, 30, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 3, 8, 7, 'Mage', 400, 50, 34, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 2, 2, 8, 'Maestro', 600, 54, 62, current_timestamp);

insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 4, 6, 9, 'SupaHeala', 400, 50, 20, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(1, 4, 4, 10, 'Revive', 500, 40, 65, current_timestamp);

insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 1, 1, 1, '2ЖизньЗаОрду', 1000, 30, 25, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 1, 5, 2, '2SuperTank', 2000, 60, 65, current_timestamp);

insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 2, 2, 3, '2ForgottenKiller', 500, 40, 30, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 2, 2, 4, '2Voll', 500, 40, 65, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 2, 3, 5, '2Mgrmgr', 550, 54, 50, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 2, 7, 6, '2Болотный', 700, 23, 30, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 3, 8, 7, '2Mage', 400, 50, 34, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 2, 2, 8, '2Maestro', 600, 54, 1, current_timestamp);

insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 4, 6, 9, '2SupaHeala', 400, 50, 56, current_timestamp);
insert into character(server_id, class_id, race_id, gamer_id, character_name, hp, level, equip_level, create_date)
    values(2, 4, 4, 10, '2Revive', 500, 40, 65, current_timestamp);

insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Begul', 10, 25000, 25);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('DeathBringer', 20, 50000, 50);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Drackhal', 30, 100000, 99);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Varghal', 40, 200000, 199);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Rackchal', 50, 300000, 299);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Harchal', 60, 400000, 399);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Killthusad', 70, 500000, 499);
insert into boss(boss_name, boss_level, boss_hp, boss_dmg)
    values('Лысый', 150, 100000, 999);



insert into event(type) values(1); --battle field

insert into event(type) values(2); --rade
insert into event(type) values(2); --rade
insert into event(type) values(2); --rade

insert into event(type) values(3); --dungeon
insert into event(type) values(3); --dungeon
insert into event(type) values(3); --dungeon

insert into event(type) values(2); --rade 8 - лысый

insert into event(type) values(1); --battle field    
insert into event(type) values(1); --battle field
insert into event(type) values(1); --battle field

insert into rade(event_id, rade_name, players_count, rade_level)
    values(2, 'Начальный рейд', 6, 30);
insert into rade(event_id, rade_name, players_count, rade_level)
    values(3, 'Средний рейд', 8, 40);
insert into rade(event_id, rade_name, players_count, rade_level)
    values(4, 'Сложный рейд', 10, 60);
insert into rade(event_id, rade_name, players_count, rade_level)
    values(8, 'Эпохальный рейд на Лысого', 5, 100);


insert into dungeon(event_id, dungeon_name, dungeon_level)
    values(5, 'Начальное подземелье', 10);
insert into dungeon(event_id, dungeon_name, dungeon_level)
    values(6, 'Среднее подземелье', 30);
insert into dungeon(event_id, dungeon_name, dungeon_level)
    values(7, 'Сложное подземелье', 50);

insert into battle_field(event_id, flag_count, kill_count)
    values(1, 10, 20);
insert into battle_field(event_id, flag_count, kill_count)
    values(9, 20, 30);
insert into battle_field(event_id, flag_count, kill_count)
    values(10, 30, 40);
insert into battle_field(event_id, flag_count, kill_count)
    values(11, 40, 50);


insert into rade_boss(boss_id, rade_id, boss_count)
    values(1, 2, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(2, 2, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(3, 2, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(4, 2, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(8, 2, 5);

insert into rade_boss(boss_id, rade_id, boss_count)
    values(1, 3, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(2, 3, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(3, 3, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(4, 3, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(8, 3, 5);

insert into rade_boss(boss_id, rade_id, boss_count)
    values(1, 4, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(2, 4, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(3, 4, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(4, 4, 5);
insert into rade_boss(boss_id, rade_id, boss_count)
    values(8, 4, 5);

insert into rade_boss(boss_id, rade_id, boss_count)
    values(8, 8, 1);

insert into dungeon_boss(boss_id, dungeon_id, boss_count)
    values(1, 5, 2);
insert into dungeon_boss(boss_id, dungeon_id, boss_count)
    values(2, 5, 2);

insert into ggroup(event_id, create_time, complete_time)
    values(2, current_timestamp, current_timestamp + '01:00:00'::time);
insert into ggroup(event_id, create_time, complete_time)
    values(5, current_timestamp, current_timestamp + '01:00:00'::time);

insert into ggroup(event_id, create_time, fraction_win)
    values(1, current_timestamp, 1);
insert into ggroup(event_id, create_time, fraction_win)
    values(9, current_timestamp, 1);
insert into ggroup(event_id, create_time, fraction_win)
    values(10, current_timestamp, 2);
insert into ggroup(event_id, create_time, fraction_win)
    values(11, current_timestamp, 2);

insert into ggroup(event_id, create_time)
    values(4, current_timestamp);
insert into ggroup(event_id, create_time)
    values(4, current_timestamp);
insert into ggroup(event_id, create_time, complete_time)
    values(4, current_timestamp, current_timestamp + '01:00:00'::time);
insert into ggroup(event_id, create_time, complete_time)
    values(4, current_timestamp, current_timestamp + '01:00:00'::time);

insert into ggroup(event_id, create_time)
    values(2, current_timestamp);

insert into statistic(character_id, event_id, group_id, value) values(1, 2, 1, 100);
insert into statistic(character_id, event_id, group_id, value) values(2, 2, 1, 20);
insert into statistic(character_id, event_id, group_id, value) values(3, 2, 1, 50);
insert into statistic(character_id, event_id, group_id, value) values(3, 2, 2, 170);
insert into statistic(character_id, event_id, group_id, value) values(4, 2, 1, 170);
insert into statistic(character_id, event_id, group_id, value) values(5, 2, 1, 140);
insert into statistic(character_id, event_id, group_id, value) values(6, 3, 1, 130);
insert into statistic(character_id, event_id, group_id, value) values(7, 3, 2, 110);
insert into statistic(character_id, event_id, group_id, value) values(8, 2, 2, 115);
insert into statistic(character_id, event_id, group_id, value) values(9, 2, 2, 120);
insert into statistic(character_id, event_id, group_id, value) values(10, 2, 2, 130);

insert into statistic(character_id, event_id, group_id, value) values(11, 2, 1, 100);
insert into statistic(character_id, event_id, group_id, value) values(12, 2, 1, 20);
insert into statistic(character_id, event_id, group_id, value) values(11, 3, 1, 50);
insert into statistic(character_id, event_id, group_id, value) values(14, 3, 1, 170);
insert into statistic(character_id, event_id, group_id, value) values(15, 3, 1, 140);
insert into statistic(character_id, event_id, group_id, value) values(16, 3, 1, 130);
insert into statistic(character_id, event_id, group_id, value) values(17, 2, 2, 110);
insert into statistic(character_id, event_id, group_id, value) values(18, 2, 2, 115);
insert into statistic(character_id, event_id, group_id, value) values(19, 2, 2, 120);
insert into statistic(character_id, event_id, group_id, value) values(20, 2, 2, 130);

insert into statistic(character_id, event_id, group_id, value) values(1, 4, 7, 115);
insert into statistic(character_id, event_id, group_id, value) values(2, 4, 7, 120);
insert into statistic(character_id, event_id, group_id, value) values(3, 4, 7, 130);

insert into statistic(character_id, event_id, group_id, value) values(4, 4, 8, 115);
insert into statistic(character_id, event_id, group_id, value) values(5, 4, 8, 120);
insert into statistic(character_id, event_id, group_id, value) values(6, 4, 8, 130);

insert into statistic(character_id, event_id, group_id, value) values(11, 4, 9, 115);
insert into statistic(character_id, event_id, group_id, value) values(12, 4, 9, 120);
insert into statistic(character_id, event_id, group_id, value) values(13, 4, 9, 130);

insert into statistic(character_id, event_id, group_id, value) values(15, 2, 10, 115);
insert into statistic(character_id, event_id, group_id, value) values(16, 2, 10, 120);
insert into statistic(character_id, event_id, group_id, value) values(17, 2, 10, 130);



insert into statistic(character_id, event_id, group_id, value) values(1, 1, 3, 100);
insert into statistic(character_id, event_id, group_id, value) values(2, 1, 3, 110);
insert into statistic(character_id, event_id, group_id, value) values(3, 1, 3, 130);
insert into statistic(character_id, event_id, group_id, value) values(4, 1, 3, 120);

insert into statistic(character_id, event_id, group_id, value) values(5, 9, 4, 130);
insert into statistic(character_id, event_id, group_id, value) values(6, 9, 4, 130);
insert into statistic(character_id, event_id, group_id, value) values(7, 9, 4, 130);
insert into statistic(character_id, event_id, group_id, value) values(8, 9, 4, 130);

insert into statistic(character_id, event_id, group_id, value) values(5, 10, 5, 140);
insert into statistic(character_id, event_id, group_id, value) values(6, 10, 5, 150);
insert into statistic(character_id, event_id, group_id, value) values(7, 10, 5, 160);
insert into statistic(character_id, event_id, group_id, value) values(8, 10, 5, 170);

insert into statistic(character_id, event_id, group_id, value) values(5, 11, 6, 230);
insert into statistic(character_id, event_id, group_id, value) values(6, 11, 6, 220);
insert into statistic(character_id, event_id, group_id, value) values(7, 11, 6, 210);
insert into statistic(character_id, event_id, group_id, value) values(8, 11, 6, 200);
