drop database if exists footballLeague;
create database footballLeague;
use footballLeague;


create table teams(
  id int primary key auto_increment not null,
  grounds int not null,
  games int not null,
  title varchar(50) not null,
  title2 varchar(50),
  country int not null,
  city int not null,
  since int not null,
  address varchar(50) not null
);

create table players(
  id int primary key auto_increment not null,
  teams int not null,
  games int not null,
  name varchar (50) not null,
  surname varchar (50) not null,
  position varchar (50) not null,
  dateofBirth datetime
);

create table games(
  id int primary key auto_increment not null,
  round_ int not null,
  teams int not null,
  grounds int not null,
  city int not null,
  start_ datetime not null,
  end_ datetime,
  team1 int not null,
  team2 int not null,
  score1 int,
  score2 int
);

create table grounds(
  id int primary key auto_increment not null,
  teams int not null,
  games int not null,
  title varchar(50) not null,
  country int not null,
  city int not null,
  since int not null,
  capacity int not null,
  address varchar(50) not null
);


alter table teams add foreign key (grounds) references grounds(id);
alter table grounds add foreign key (teams) references teams(id);
alter table players add foreign key (teams) references teams (id);
alter table teams add foreign key (games) references games(id);
alter table games add foreign key (teams) references teams(id);
alter table games add foreign key (grounds) references grounds(id);



