create table gamer
(
    gamer_id serial PRIMARY KEY,
    email varchar(50) not null CHECK (email like '%@%.%'),
    password char(32) not null,
    username varchar(20) not null
);

create table fraction 
(
    fraction_id serial PRIMARY KEY,
    fraction_name varchar(20) not null
);

create table race
(
    race_id serial PRIMARY KEY,
    fraction_id integer REFERENCES fraction ON DELETE CASCADE ON UPDATE CASCADE,
    race_name varchar(20) not null
);

create table class
(
    class_id serial PRIMARY KEY,
    class_name varchar(20) not null UNIQUE,
    class_type varchar(10) not null
);

create table race_class
(
    class_id integer REFERENCES class ON DELETE CASCADE ON UPDATE CASCADE,
    race_id integer REFERENCES race ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(class_id, race_id)
);

create table region
(
    region_id serial PRIMARY KEY,
    region_name varchar(5) not null UNIQUE
);

create table server
(
    server_id serial PRIMARY KEY,
    region_id integer REFERENCES region ON DELETE CASCADE ON UPDATE CASCADE,
    server_name varchar(20) not null UNIQUE,
    type varchar(3) not null,
    load integer CHECK (load < max_player), 
    max_player integer not null
);

create table character
(
    character_id serial PRIMARY KEY,

    server_id integer REFERENCES server,
    gamer_id integer REFERENCES gamer,
    class_id integer not null,
    race_id integer not null,
    character_name varchar(30) not null UNIQUE,
    hp integer CHECK (hp >= 0), 
    level integer not null,
    equip_level integer not null,
    create_date timestamp not null, 
    gender varchar(6) not null DEFAULT 'female',
    FOREIGN KEY(class_id, race_id) REFERENCES race_class(class_id, race_id) MATCH FULL
);

create table event
(
    event_id serial PRIMARY KEY,
    type integer not null
);

create table battle_field
(
    event_id integer PRIMARY KEY REFERENCES event,
    flag_count integer not null,
    kill_count integer not null
);

create table rade
(
    event_id integer PRIMARY KEY REFERENCES event,
    rade_name varchar(25) not null,
    players_count integer not null,
    rade_level integer not null
);

create table dungeon
(
    event_id integer PRIMARY KEY REFERENCES event,
    dungeon_name varchar(30) not null,
    dungeon_level integer not null
);

create table boss
(
    boss_id serial PRIMARY KEY,
    boss_name varchar(20) not null,
    boss_level integer not null,
    boss_hp integer not null,
    boss_dmg integer not null
);

create table rade_boss
(
    boss_id integer REFERENCES boss ON DELETE CASCADE ON UPDATE CASCADE,
    rade_id integer REFERENCES rade ON DELETE RESTRICT ON UPDATE CASCADE,
    boss_count integer not null,
    PRIMARY KEY(boss_id, rade_id) 
);

create table dungeon_boss
(
    boss_id integer REFERENCES boss ON DELETE CASCADE ON UPDATE CASCADE,
    dungeon_id integer REFERENCES dungeon ON DELETE RESTRICT ON UPDATE CASCADE,
    boss_count integer not null,
    PRIMARY KEY(boss_id, dungeon_id)
);

create table ggroup
(
    group_id serial PRIMARY KEY,
    event_id integer REFERENCES event,
    create_time timestamp not null,
    complete_time timestamp DEFAULT NULL,
    fraction_win integer --battle_field
);

create table statistic
(
    character_id integer REFERENCES character,
    event_id integer REFERENCES event,
    group_id integer REFERENCES ggroup,
    value integer DEFAULT 0,
    PRIMARY KEY(character_id, event_id, group_id)
);
