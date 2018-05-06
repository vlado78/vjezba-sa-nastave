
drop database if exists ispit;

creae database ispit;

use ispit;

create table pitanje(
sifra int not null primary key auto_increment,
tekst varchar(50) not mull,
datumpocetka datetime,
unio int

);


create table odgovor(
sifra int not null primary key auto_increment,
pitanje int,
tekst varchar(50) not null,
tocno boolean,
odgovorio int,

);


create table operater(
sifra int not null primary key auto_increment,
ime varchar (20) not null,
prezime varchar (20) not null

);

alter table pitanje add foreign key (unio) references operater(sifra);

alter table odgovor add foreign key (odgovorio) references operater(sifra);

alter table odgovor add foreign key (pitanje) references pitanje(sifra);









