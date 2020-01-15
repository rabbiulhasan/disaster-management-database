drop table Data_of_affected_people;
drop table Donation;
drop table Amount_of_Lose;
drop table Risky_Areas;
drop table Disaster;

create table Disaster
(
  disaster_id varchar(15),
  disaster_name varchar(16),
  primary key(disaster_id)
);



insert into Disaster (disaster_id,disaster_name)
           values('1001','Cyclone');
insert into Disaster (disaster_id,disaster_name)
           values('1002','Typhoon');
insert into Disaster (disaster_id,disaster_name)
           values('1003','Earthquake');
insert into Disaster (disaster_id,disaster_name)
           values ('1004','Tornedo');
		

create table Risky_Areas
(
  area_id2 varchar(10),
  area_name varchar(15),
  area_volume varchar(10),
  disaster_id varchar(15),
  disaster_year integer,
  status varchar(12),
  primary key(area_id2),
  foreign key(disaster_id) references Disaster(disaster_id)  
);

insert into Risky_areas (area_id2,area_name,area_volume,disaster_id,disaster_year,status)
         values('CHI123709','Chittagong','340.50','1001',2016,'affected');
 insert into Risky_Areas (area_id2,area_name,area_volume,disaster_id,disaster_year,status)
         values('KHU123840','Khulna','500.00','1003',2015,'affected');
 insert into Risky_Areas (area_id2,area_name,area_volume,disaster_id,disaster_year,status)
       values('BAR119303','Barisal','453.50','1002',2017,'affected');
 insert into Risky_Areas (area_id2,area_name,area_volume,disaster_id,disaster_year,status)
       values('BAR129303','Barisal','493.50','1002',1970,'affected');
insert into Risky_areas (area_id2,area_name,area_volume,disaster_id,status)
        values('DHA123498','Dhaka','240.40','1001','notaffected');
insert into Risky_areas (area_id2,area_name,area_volume,disaster_id,status)
        values('KHU392012','Khulna','593.50','1002','notaffected');
insert into Risky_areas (area_id2,area_name,area_volume,disaster_id,status)
        values('RAJ301012','Rajshahi','140.20','1004','notaffected');

create table Amount_of_Lose
(
   amount_of_money varchar(10),
   amount_of_area integer,
   amount_of_Dead_people integer,
   area_id varchar(10),
   foreign key(area_id) references Risky_areas(area_id2) on delete cascade
);

   
 insert into Amount_of_Lose (amount_of_money,amount_of_area,amount_of_Dead_people,area_id)
               values ('45000',34,10,'CHI123709');
  insert into Amount_of_Lose (amount_of_money,amount_of_area,amount_of_Dead_people,area_id)
               values ('55000',14,15,'BAR119303');
insert into Amount_of_Lose (amount_of_money,amount_of_area,amount_of_Dead_people,area_id)
               values ('10000',3,2,'KHU123840');
			   

create table Donation
(
   donation_id varchar(12),
   area_id varchar(10),
   disaster_id varchar(15),
   aom_from_gov number(12),
   aom_from_foreign number(12),
   aom_from_organizations number(12),
   total_donation number(15),
   primary key(donation_id),
   foreign key(disaster_id) references Disaster(disaster_id),
   foreign key(area_id) references Risk_areas(area_id2) on delete cascade
);
			   
insert into Donation values ('CHI05028','CHI123709','1001',40000.00,0.0,100000.50,0.0);
insert into Donation values ('BAR05028','BAR119303','1002',4520.0,200000.50,50000.50,0.0);


create table Data_of_affected_people
(
    donation_id varchar(12),
	area_id varchar(10),
	NID_or_BirthID number(10),
	Name varchar(15),
	Sons_or_Daughters number(3),
	primary key(NID_or_BirthID),
	Salary number(7) check(salary>=10000 and salary <=90000),
	foreign key(donation_id) references Donation(donation_id),
	foreign key(area_id) references Risky_areas(area_id2) on delete cascade
);

insert into Data_of_affected_people values ('CHI05028','CHI123709',1996354413,'Akash Shahriar',2,15000);
insert into Data_of_affected_people values ('BAR05028','BAR119303',1998330210,'Bishal Imtiaz',0,90000);
  
select * from Disaster;
select * from Risky_Areas;
select * from Amount_of_lose;
select * from Donation;
select * from Data_of_affected_people;
commit;		   
		   
		   