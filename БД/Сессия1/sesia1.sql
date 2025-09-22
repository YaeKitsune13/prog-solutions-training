create database if not exists Hospital;
use Hospital;

create table if not exists Photos
(
	id integer primary key auto_increment,
    photo_path varchar(255)
);

create table if not exists gender
(
	id integer primary key auto_increment,
    gender varchar(1)
);

create table if not exists HospitalCard
(
	id integer primary key auto_increment,
    dateGettingCard date,
    dateLastSendingToHospital date,
    dateNextSendingToHospital date
);

create table if not exists HospitalPolis
(
	id integer primary key auto_increment,
    dateToEndingPolis date
);

create table if not exists Diagnosis
(
	id integer primary key auto_increment,
    Diagnosis varchar(255)
);

create table if not exists HospitalWorkers
(
	id integer primary key auto_increment,
    HospitalWorkerName varchar(255)
);

create table if not exists HospitalType
(
	id integer primary key auto_increment,
    DiagnosTypes varchar(255)
);

create table if not exists HospitalProcedureNames
(
	id integer primary key auto_increment,
    ProcedureNames varchar(255),
    Recomendation varchar(255)
);

create table if not exists Patient
(
	id integer primary key auto_increment,
    photo integer,
    fio varchar(255),
    pass integer,
    gender integer,
    phone integer,
    email varchar(255),
    numberHospitalCard integer,
    numerPolis integer,
    Diagnosis integer,
    constraint foreign key (photo) references Photos(id),
    constraint foreign key (gender) references gender(id),
    constraint foreign key (numberHospitalCard) references HospitalCard(id),
    constraint foreign key (numerPolis) references HospitalPolis(id),
    constraint foreign key (Diagnosis) references Diagnosis(id)
);

create table if not exists HistoryDiagnoses
(
	id integer primary key auto_increment,
    patient_id integer,
    DateHospitalEntering date,
    HospitalWorker integer,
    CheckType integer,
    CheckName integer,
    Diagnosis integer,
	Result varchar(255),
	constraint foreign key (patient_id) references Patient(id),
    constraint foreign key (Diagnosis) references Diagnosis(id),
    constraint foreign key (HospitalWorker) references HospitalWorkers(id),
    constraint foreign key (CheckType) references HospitalType(id),
    constraint foreign key (CheckName) references HospitalProcedureNames(id)
);





