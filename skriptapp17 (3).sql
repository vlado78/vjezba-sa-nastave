drop database if exists edunovapp17;

create database edunovapp17 default character set utf8;


#sipavanje
#c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < f:\skriptapp17.sql


use edunovapp17;

create table smjer(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
trajanje int not null,
cijena decimal(18,2),
upisnina decimal(18,2)
);

create table grupa(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
smjer int not null,
predavac int,
datumpocetka datetime,
brojpolaznika int not null
);


create table predavac(
sifra int not null primary key auto_increment,
osoba int not null,
ziroracun varchar(20)
);

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
email varchar(100)
) ;

create table polaznik(
sifra int not null primary key auto_increment,
osoba int not null,
brojugovora varchar(20) not null
) ;

create table clan(
grupa int  not null,
polaznik int not null
);

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);



#loš primjer 1
#sifra 1
insert into smjer values (null,'PHP programer',130,5000,null);

#loš primjer 2
#sifra 2
insert into smjer (naziv,trajanje,cijena) values ('Java',130,5000);

#OK
#3
insert into smjer (	sifra,	naziv,	trajanje,	cijena,	upisnina)
values (			null,	'C#',	100,		999.99,	null);

insert into smjer (	sifra,	trajanje, naziv,		cijena,	upisnina)
values (			null,		100,	'F#',	999.99,	null);


#višestruki unos
#4,5,6
insert into smjer(sifra,naziv,trajanje,cijena,upisnina) values
(null,'JS',10,10,10),
(null,'Angular',10,10,10),
(null,'NodeJS',10,10,10);


#1
insert into grupa (sifra, naziv, smjer, predavac, datumpocetka, brojpolaznika)
values (null,'PP17',1,null,null,15);
#1 - 19
insert into osoba (sifra,ime,prezime,oib,email) values
(null,'Tomislav','Jakopec','62352326174','tjakopec@gmail.com'),
(null,'Franko','Kulešević','15167215107','fkulesevic@gmail.com'),
(null,'Matko','Pejić','42420075120','mpejic@gmaio.com'),
(null,'Igor','Takalić','29146742689','itakalic@gmail.com'),
(null,'Filip','Pavlović','41872779570','fpavlovic1995@gmail.com'),
(null,'Danijel','Šugar','10699318727','danijel.sugar@outlook.com'),
(null,'Andrej','Hofšuster','21293900532','a.hofsuster88@gmail.com'),
(null,'Ivan','Vinković','99224160854','vinkovic.ivan86@gmail.com'),
(null,'Jure Lucian','Boban','10873090543','jlboban17@gmail.com'),
(null,'Nikola','Šarić','74205666680','saricnikola27@gmail.com'),
(null,'Zlatko','Barat','56457216545','zlajo321@gmail.com'),
(null,'Vladimir','Budač','53097283732','vladimir.budac@gmail.com'),
(null,'Zvonimir','Milanović','60525233226','zv.milanovic@gmail.com'),
(null,'Ivan','Knežević','07368778055','mrtamburaknez@gmail.com'),
(null,'Petar','Čučković','59497330930','p.cuckovic89@gmail.com'),
(null,'Kruno','Marijanović','81578727276','krunom92@gmail.com'),
(null,'Lukas','Scharmitzer','18182295693','lukas.scharmitzer@gmail.com'),
(null,'Lorna','Tokić','92703659731','tokiclorna31@gmail.com'),
(null,'Boris','Ivković','34498352966','borisivkovic@gmail.com');



insert into predavac (sifra,osoba,ziroracun) values(null,1,null);

insert into polaznik (sifra,osoba,brojugovora) values
(null,2,null),(null,3,null),(null,4,null),(null,5,null),(null,6,null),
(null,7,null),(null,8,null),(null,9,null),(null,10,null),(null,11,null),(null,12,null),
(null,13,null),(null,14,null),(null,15,null),(null,16,null),(null,17,null),(null,18,null),(null,19,null);


insert into clan(grupa,polaznik) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),
(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18);


select * from smjer;
select * from grupa;
select * from polaznik;
select * from predavac;
select * from osoba;
select * from clan;









