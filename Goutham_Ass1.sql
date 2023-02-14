create table Assignment1_Customer
(
CUSTOMER_NUMBER varchar(20) primary key,
FIRSTNAME varchar(50),
middlename varchar(50),
lastname varchar(50),
CUSTOMER_CITY varchar(30),
CUSTOMER_CONTACT_NO bigint,
occupation varchar(40),
CUSTOMER_DATE_OF_BIRTH date
)
drop table Assignment1_Customer
insert into Assignment1_Customer values('A0001','VENKATA','GOUTHAM','RAJU','CHENNAI',9879854321,'WORKER','1989-02-06')
insert into Assignment1_Customer values('A0002','SAI','KRISHNA','RAJ','DELHI',9876532109,'STUDENT','1977-09-19')
insert into Assignment1_Customer values('A0003','NETTYAM',NULL,'THARUN','KERALA',9765178901,'STUDENT','1981-09-26')
insert into Assignment1_Customer values('A0004','SIVA',NULL,'SANKAR','DELHI',9876532109,'HOUSEWIFE','1989-11-03')
insert into Assignment1_Customer values('A0005','SOHAIL','SHAIK','SYED','MUMBAI',89765233190,'SERVICE','1986-07-19')

select * from Assignment1_Customer
select distinct CUSTOMER_CITY from Assignment1_Customer
select CUSTOMER_CITY,COUNT(*) FROM Assignment1_Customer GROUP BY CUSTOMER_CITY
select occupation,COUNT(*) from Assignment1_Customer GROUP BY occupation
select * from Assignment1_Customer ORDER BY FIRSTNAME
select * from Assignment1_Customer ORDER BY occupation DESC
select * from Assignment1_Customer WHERE middlename IS NULL
