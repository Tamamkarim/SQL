drop table Heenkilo;
create table Henkilo(
Hnro int not null,
Enimi varchar(25) not null,
Snimi varchar(25) not null,
Sp char(1) not null,
Spvm date not null,
Pituus int not null,
Paino int not null,
primary key (Hnro));

truncate Henkilo;
LOAD DATA LOCAL INFILE '/Users/karim/Desktop/BigData.csv'
INTO TABLE Henkilo
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Hnro,Enimi,Snimi,Sp,@var_Spvm,Pituus,Paino)
set Spvm = STR_TO_DATE(@var_Spvm,'%d.%m.%Y');
