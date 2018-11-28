drop database if exists footballLeague;
create database footballLeague;
use footballLeague;

create table league(
  id int primary key auto_increment not null,
  title varchar(50) not null,
  since int not null,
  start_ datetime not null,
  end_ datetime not null
);

create table teams(
  id int primary key auto_increment not null,
  league int not null,
  title varchar(50) not null,
  title2 varchar(50),
  country int not null,
  city int not null,
  since int not null,
  address varchar(50) not null
);

create table games(
  id int primary key auto_increment not null,
  round_ int not null,
  ground int not null,
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
  title varchar(50) not null,
  country int not null,
  city int not null,
  since int not null,
  capacity int not null,
  address varchar(50) not null
);

create table games_teams(
  id int primary key auto_increment not null,
  games int not null,
  teams int not null
  );

create table games_grounds(
  id int primary key auto_increment not null,
  games int not null,
  grounds int not null
  );

alter table teams add foreign key (league) references league(id);
alter table games_teams add foreign key (games) references games(id);
alter table games_teams add foreign key (teams) references teams(id);
alter table games_grounds add foreign key (games) references games(id);
alter table games_grounds add foreign key (grounds) references grounds(id);


