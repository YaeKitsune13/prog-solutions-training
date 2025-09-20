create database if not exists WaterTravels;
use WaterTravels;

create table if not exists ship_types
(
	id integer primary key,
    ship_type varchar(255)
);

create table if not exists ship_capitans
(
	id integer primary key,
    capitan_name varchar(255)
);

create table if not exists ship_numer
(
	id Integer primary key,
    ship_name Varchar(255),
    ship_type Integer,
    ship_max integer,
    constraint fk_ship_type foreign key (ship_type) references ship_types(id)
);

create table if not exists raices
(
	raice_id integer primary key,
    date_load date,
    load_port varchar(255),
    date_unload date,
    unload_port varchar(255),
    ship integer,
    capitan integer,
    constraint fk_ship foreign key (ship) references ship_numer(id),
    constraint fk_capitan foreign key (capitan) references ship_capitans(id)
);

set foreign_key_checks = 0;

truncate table raices;
truncate table ship_numer;
truncate table ship_capitans;
truncate table ship_types;

set foreign_key_checks = 1;


insert into ship_types (id, ship_type) values
(1, 'Пароход'),
(2, 'Яхта'),
(3, 'Танкер');

insert into ship_capitans (id, capitan_name) values
(1, 'Иванов И.И.'),
(2, 'Петров П.П.'),
(3, 'Сидоров С.С.');

insert into ship_numer (id, ship_name, ship_type, ship_max) values
(1, 'Аврора', 1, 300),
(2, 'Морская звезда', 2, 50),
(3, 'Нефтяной гигант', 3, 2000);

insert into raices (raice_id, date_load, load_port, date_unload, unload_port, ship, capitan) values
(1, '2025-01-10', 'Санкт-Петербург', '2025-01-20', 'Мурманск', 1, 1),
(2, '2025-02-05', 'Сочи', '2025-02-12', 'Стамбул', 2, 2),
(3, '2025-03-01', 'Новороссийск', '2025-03-10', 'Одесса', 3, 3);

insert into raices (raice_id, date_load, load_port, date_unload, unload_port, ship, capitan)
values (4, '2025-04-01', 'Москва', '2025-04-05', 'Казань', 99, 1);
