--welcome to sql server--

----1st question---

use Goutham_07
create proc Procedure1
as
begin
print '....Welcome to sql server...'
end
exec Procedure1

create  table tbldepartment
(
id int primary key identity,
departmentname varchar(50),
location varchar(100),
departmenthead varchar(50)
)
insert into tbldepartment values
('hr','KERALA','christy'),
('it','london','rick'),
('payroll','delhi','ron')


create table tblemployee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
departmentid int foreign key references tbldepartment(id)
)

insert into tblemployee values
('tom','male',3300,1),
('pam','female',4400,2),
('john','male',5000,3),
('sam','male',4000,2)
select * from tblemployee

-----2nd question----

create proc Procedure2(@gender varchar(50),@departmentid int)
as
begin
select name,gender,salary from tblemployee 
where @gender=gender and @departmentid=departmentid
end
exec Procedure2 'male',2
drop proc table2

---3rd question---

create proc Procedure3(@gender varchar(10),@departmentid int,@totalcount int output )
as 
begin
select name,gender,salary from tblemployee
where @gender=gender and @departmentid=departmentid
select @totalcount=@@rowcount
end
declare @count int;
exec Procedure3 @gender='male',@departmentid=2,@totalcount=@count output
select @count as'number of employees'
select * from tblemployee

----4th question---

create proc Procedure4(@gender varchar(50))
as 
begin
select count(gender) from tblemployee
where @gender=gender
end
exec Procedure4 'male'
drop proc adding_numbers

 ---5th question---

 create proc add_numbers(@num1 int=0,@num2 int=0 ,@num3 int=0)
 as
 begin
 declare @result int
 set @result=@num1+@num2+@num3
 select @result as [sum]
 end

 exec add_numbers 10,11