create database if not exists otdel;
use otdel;

create table if not exists Deportaments
(
	id integer primary key,
    deportament_names varchar(255)
);

create table if not exists DepoJobs
(
	id integer primary key,
    job varchar(255)
);

create table if not exists DepoWorkers
(
	id integer primary key,
    fio varchar(255),
    Depoid integer,
    job integer,
    Qualification varchar(255),
    
    constraint foreign key (Depoid) references Deportaments (id),
    constraint foreign key (job) references DepoJobs (id)
);