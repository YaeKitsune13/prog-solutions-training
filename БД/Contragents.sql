create database if not exists contragents;
use contragents;

create table if not exists Cityes
(
	id integer primary key,
    city_name varchar(255)
);

create table if not exists CitiAddreses
(
	id integer primary key auto_increment,
    city_id integer,
    address varchar(255),
    house_name varchar(255),
    
    constraint foreign key (city_id) references Cityes (id)
);

create table if not exists Contragents
(
	id integer primary key auto_increment,
    contr_type varchar(255),
	contr_name varchar(255),
    contr_phone varchar(8),
    contr_address integer,
    constraint foreign key (contr_address) references CitiAddreses (id)
);