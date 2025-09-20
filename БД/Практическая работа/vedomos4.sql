create database if not exists vedomost;
use vedomost;

create table if not exists workerJobs
(
	id integer primary key,
    job varchar(255),
    paytohour integer
);

create table if not exists workers
(
	id integer primary key,
    worker_name varchar(255),
    job integer,
    constraint foreign key (job) references workerJobs (id)
);

create table if not exists project_names
(
	id integer primary key,
    project_name varchar(255)
);

create table if not exists project_workers
(
	id integer primary key,
    project_name integer,
    worker integer,
    jobhours integer,
    summary integer,
    constraint foreign key (worker) references workers (id),
    constraint foreign key (project_name) references project_names (id)
);