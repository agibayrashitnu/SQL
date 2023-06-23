create table DiseaseType
(id int , 
description varchar(140), 
primary key(id));

create table Country 
(cname varchar(50), 
population bigint, 
primary key(cname));

create table Disease
(diseaseCode varchar(50), 
pathogen varchar(20), 
description varchar(140),
id int;
primary key(id),
foreign key (id) 
	references DiseaseType(id),);


create table Discover 
(cname varchar(50), 
diseaseCode varchar(50), 
firstEncDate date,
primary key(cname,diseaseCode),
foreign key (cname) 
	references Country(cname), 
foreign key (diseaseCode)
	references Disease(diseaseCode));



create table Users 
(email varchar(50) primary key, 
name varchar(30), 
surname varchar(40),
salary integer,
phone varchar(20),
cname varchar(50),
foreign key (cname)
	references Country(cname));

create table PublicServant 
(email varchar(60), 
department varchar(50), 
primary key(email),
foreign key (email) 
	references Users(email));


create table Doctor 
(email varchar(60), 
degree varchar(20), 
primary key(email),
foreign key (email) 
	references Users(email));

create table Specialize 
(id integer, 
email varchar(60), 
primary key(id,email),
foreign key (id) 
	references DiseaseType(id),
foreign key (email) 
	references Doctor(email));


create table Record
(email varchar(60),
cname varchar(50),
diseaseCode varchar(50),
totalDeath integer,
totalPatients integer,
primary key(email, cname, diseaseCode),
foreign key (diseaseCode) 
	references Disease(diseaseCode),
foreign key (cname) 
	references Country(cname),
foreign key (email) 
	references PublicServant(email)
);


SELECT  * from Disease;

insert into Disease 
(diseaseCode,
pathogen,
description,
id)
values ('0001', 'virus', 'high temp', 10);values ('0001', 'virus', 'high temp', 10);values ('0001', 'virus', 'high temp', 10);



select * from Country;

select * from Disease;
select * from DiseaseType;

insert into DiseaseType(id, description)
values
    (1,'infectious disease'),
    (2,'heart disease'),
    (3,'inherited disease'),
    (4,'psychological disease'),
    (5,'dermatological disease'),
    (6,'surgery disease'),
    (7,'traumatology disease'),
    (8,'eye disease'),
    (9,'ear disease'),
    (10,'head disease');
   
 SELECT * from Country;
 
 INSERT into Country(cname, population)
 values
 ('Kazakhstan',16000000),
 ('Austria', 25000000),
 ('Canada', 100000000),
 ('France', 24000000),
 ('Germany', 26000000),
 ('Italy', 23000000),
 ('Spain', 36000000),
 ('Tunisia', 27000000),
 ('Turkey', 80000000),
 ('USA', 250000000);
 
   
   insert into Disease(diseaseCode, pathogen, description, id)
values
    ('0011', 'virus', 'cough', 8),
    ('0001', 'virus', 'covid-19', 1),
    ('0002', 'bacteria', 'hepatit', 1),
    ('0003', 'blood pressure', 'insult', 2),
    ('0004', 'tromb', 'infarkt', 2),
    ('0005', 'tissue', 'cancer', 3),
    ('0006', 'lessons', 'depression', 4),
    ('0007', 'cream', 'akne', 5),
    ('0008', 'virus', 'halyazium', 8),
    ('0009', 'sound', 'gluhoi', 9),
    ('0010', 'virus', 'miningit', 10);


insert into Discover(cname,diseaseCode,firstEncDate)
values
    ('Austria', '0001','1900-01-01'),
    ('Canada','0002','1920-02-02'),
    ('France','0003','1930-03-03'),
    ('Germany','0004','1940-04-04'),
    ('Italy','0005','1950-05-05'),
    ('Kazakhstan','0006','1960-06-06'),
    ('Spain','0007','1970-07-07'),
    ('Tunisia','0008','1980-08-08'),
    ('Turkey','0009','1990-10-10'),
    ('USA','0010','2000-01-01');
   
   create table Users 
(email varchar(50) primary key, 
name varchar(30), 
surname varchar(40),
salary integer,
phone varchar(20),
cname varchar(50),
foreign key (cname)
	references Country(cname));

insert into Users(email, name, surname, salary, phone, cname)
values

('matthew.courtney@mail.ru', 'matthew', 'courtney', 200000, '87013333333', 'USA'),
('sayat.kabdyrov@mail.ru', 'sayat', 'kabdyrov', 700000, '87018888888', 'Italy'),
('gulsim.nurumkhan@mail.ru', 'gulsim', 'nurumkhan', 300000, '87014444444', 'Austria'),
('aibek.taizhan@mail.ru', 'aibek', 'taizhan', 600000, '87017777777', 'Germany'),
('meirambek.baysekenov@mail.ru', 'meirambek', 'baysekenov', 500000, '87051111111', 'Kazakhstan'),
('zhanibek.baysekenov@mail.ru', 'zhanibek', 'baysekenov', 200000, '87053333333', 'USA'),
('adiya.zhandos@mail.ru', 'adiya', 'zhandos', 100000, '87052222222', 'Kazakhstan'),
('agibay.rashit@mail.ru', 'agibay', 'rashit', 500000, '87011111111', 'Kazakhstan'),
('ihsan.kocaaga@mail.ru', 'ihsan', 'kocaaga', 100000, '87012222222', 'Turkey'),
('michael.lewis@mail.ru', 'michael', 'lewis', 400000, '87015555555', 'Canada'),
('aidar.shamshit@mail.ru', 'aidar', 'shamshit', 500000, '87016666666', 'France'),
('ahmed.gaha@mail.ru', 'ahmed', 'gaha', 800000, '87019999999', 'Tunisia'),
('andre.inesta@mail.ru', 'andre', 'inesta', 900000, '87021111111', 'Spain')
('zhangir.baysekenov@mail.ru', 'zhangir', 'baysekenov', 100000, '87052222222', 'Turkey'),
('rada.sakenova@mail.ru', 'rada', 'sakenova', 300000, '87054444444', 'Austria'),
('anuar.sakenov@mail.ru', 'anuar', 'sakenov', 400000, '87055555555', 'Canada'),
('adina.nurgali@mail.ru', 'adina', 'nurgali', 500000, '87056666666', 'France'),
('aruzhan.nurgali@mail.ru', 'aruzhan', 'nurgali', 600000, '87057777777', 'Germany'),
('aila.alia@mail.ru', 'aila', 'alia', 700000, '87058888888', 'Italy'),
('ayau.mark@mail.ru', 'ayau', 'mark', 800000, '87059999999', 'Tunisia'),
('laeilim.adina@mail.ru', 'laeilim', 'adina', 900000, '87051111111', 'Spain');
('adiya.zhandos@mail.ru', 'adiya', 'zhandos', 100000, '87052222222', 'Kazakhstan');


insert into PublicServant(email, department)
values
('agibay.rashit@mail.ru','SEDS'),
('ihsan.kocaaga@mail.ru', 'SSH'),
('matthew.courtney@mail.ru', 'GBS'),
('gulsim.nurumkhan@mail.ru', 'Therapy'),
('michael.lewis@mail.ru', 'Traumatology'),
('aidar.shamshit@mail.ru', 'Surgery'),
('aibek.taizhan@mail.ru', 'Oculus'),
('sayat.kabdyrov@mail.ru', 'LOR'),
('ahmed.gaha@mail.ru', 'SEDS'),
('andre.inesta@mail.ru', 'SEDS');

insert into Doctor(email, degree)
values
('adiya.zhandos@mail.ru', 'MSc'),
('meirambek.baysekenov@mail.ru','Phd'),
('zhangir.baysekenov@mail.ru', 'Phd'),
('zhanibek.baysekenov@mail.ru', 'Phd'),
('rada.sakenova@mail.ru', 'Phd'),
('anuar.sakenov@mail.ru', 'Phd'),
('adina.nurgali@mail.ru', 'MSc'),
('aruzhan.nurgali@mail.ru', 'MSc'),
('aila.alia@mail.ru', 'MSc'),
('ayau.mark@mail.ru', 'BSc'),
('laeilim.adina@mail.ru', 'BSc');


insert into Specialize (id, email)
values 
(1, 'adiya.zhandos@mail.ru'),
(1,'meirambek.baysekenov@mail.ru'),
(2,'zhangir.baysekenov@mail.ru'),
(3,'zhanibek.baysekenov@mail.ru'),
(4,'rada.sakenova@mail.ru'),
(5,'anuar.sakenov@mail.ru'),
(6,'adina.nurgali@mail.ru'),
(7,'aruzhan.nurgali@mail.ru'),
(8,'aila.alia@mail.ru'),
(9,'ayau.mark@mail.ru'),
(10,'laeilim.adina@mail.ru');

insert into Record(email,cname,diseaseCode, totalDeath, totalPatients)
values 
('andre.inesta@mail.ru', 'Spain', '0001', 1000, 150000),
('ihsan.kocaaga@mail.ru', 'Turkey', '0003', 200,10),
('agibay.rashit@mail.ru', 'Kazakstan', '0001', 100, 1),
('ihsan.kocaaga@mail.ru', 'Turkey', '0002', 200,2),
('matthew.courtney@mail.ru', 'USA', '0003',300,3),
('gulsim.nurumkhan@mail.ru', 'Austria', '0004', 400 , 4),
('michael.lewis@mail.ru','Canada', '0005', 500 , 5),
('aidar.shamshit@mail.ru','France', '0006', 600, 6),
('aibek.taizhan@mail.ru','Germany', '0007', 700, 7),
('sayat.kabdyrov@mail.ru','Italy', '0008', 800, 8),
('ahmed.gaha@mail.ru', 'Tunisia', '0009', 900,9),
('andre.inesta@mail.ru', 'Spain', '0010', 1000, 10);

   
/*1query*/
select Disease.diseaseCode , Disease.description
from Disease
left join Discover on Disease.diseaseCode = Discover.diseaseCode
where Disease.pathogen LIKE '%bacteria' and Discover.firstEncDate < '1990-01-01';

/*2query*/
select Users.name, Users.surname, Doctor.degree
from Users
join Doctor on Users.email = Doctor.email
join Specialize on Users.email = Specialize.email
join DiseaseType on Specialize.id = DiseaseType.id
where DiseaseType.description <> 'infectious disease';

/*3query*/
select Users.name, Users.surname, Doctor.degree
from Users
join Doctor on Users.email = Doctor.email
join Specialize on Users.email = Specialize.email
join DiseaseType on Specialize.id = DiseaseType.id
group by Users.name, Users.surname, Doctor.degree
having count(DiseaseType.description)>1;


/*4 query*/
select Users.cname, round(avg(Users.salary),2) as avg_salary
from Users
join Doctor on Users.email = Doctor.email
join Specialize on Users.email = Specialize.email
join DiseaseType on Specialize.id = DiseaseType.id
join Disease on DiseaseType.id = Disease.id
where Disease.pathogen = 'virus'
group by Users.cname;

/* 5 query*/
select PublicServant.department, count(PublicServant.email) as emp_num
from PublicServant
join Users U on PublicServant.email = U.email
join Record R on PublicServant.email = R.email
join Disease D on R.diseaseCode=D.diseaseCode
group by PublicServant.department, D.description
having D.description='covid-19' and count(R.cname)>1;


/* 6 query */
select PublicServant.email, 2*(U.salary) as new_salary
from PublicServant
join Users U on PublicServant.email = U.email
join Record R on PublicServant.email = R.email
join Disease D on R.diseaseCode=D.diseaseCode
where D.description='covid-19' and R.totalPatients > 3;

/*7 query*/
delete from users
where lower(users.name) like '%gul%' or lower(users.name) like '%bek%';
delete from Users where Users.name like '%gul%' or Users.name like '%bek';
select * from Users;


/* 8 query*/
ALTER TABLE Disease
DROP INDEX idx_pathogen;

CREATE INDEX idx_pathogen
ON Disease (pathogen);
show index from Disease;

/* 9 query*/
select * from Record;

select Record.email, Users.name, PublicServant.department from Record
join PublicServant on Record.email = PublicServant.email
join Users on PublicServant.email = Users.email
where Record.totalPatients > 100000 and Record.totalPatients < 999999;

/* 10 query */
select cname from Record
group by cname
order by sum(totalPatients) desc
limit 5;

/* 11 query */
select DiseaseType.description, sum(Record.totalPatients) as totalPatients  from DiseaseType
join Disease on DiseaseType.id = Disease.id
join Record on Disease.diseaseCode = Record.diseaseCode
group by DiseaseType.id;




