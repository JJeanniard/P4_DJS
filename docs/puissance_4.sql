drop database if exists puissance_4;
create database puissance_4;
use puissance_4;

create table Players (
	pl_pseudo varchar(11) not null,
    pl_username varchar(30) not null,
    pl_password varchar(15) not null,
    pl_email varchar(50) not null,
    pl_register datetime default current_timestamp not null,
    pl_lastconnect datetime,
    constraint pk_pseudo primary key (pl_pseudo) 
);

create table Complements (
	complet_id int auto_increment not null,
    complet_win smallint(5) unsigned default 0 not null,
    complet_null smallint(5) unsigned default 0 not null,
    complet_defeat smallint(5) unsigned default 0 not null,
    constraint pk_complement primary key (complet_id)
);

create table Aquie (
	score_pl_1 tinyint not null,
	score_pl_2 tinyint not null
);

alter table Players add constraint ck_players foreign key (complet_id) references Complements(complet_id);
