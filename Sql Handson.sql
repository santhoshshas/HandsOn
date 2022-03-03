create database HandsOn;
use HandsOn
create table Employee(Employee_ID int not null primary key auto_increment,First_name varchar(25),Last_name varchar(25),Salary int,Joining_Date DateTime,Department char(30))
insert into Employee values (001,'Monika','Aroro',100000,'14-06-20 09.00.00','HR'),(002,'Niharika','Verma',80000,'14-06-11 09.00.00','Admin')
insert into Employee values(003,'Manisha','Singh',300000,'14-03-20 09.00.00','HR'),(004,'Amithab','Singhal',40000,'14-06-12 09.00.00','Account'),(005,'Vivek','Bhati',90000,'14-06-13 09.00.00','Admin'),(006,'Vipul','Diwan',200000,'14-06-14 09.00.00','Account'),(007,'Satish','Kumar',75000,'14-06-09 09.00.00','Sales'),(008,'Geethika','Chauchan',150000,'14-06-09 09.00.00','HR')
create table Bonus (Employee_Ref_Id int,Bonus_amount int(10),Bonus_Date_Time DateTime,Foreign Key (Employee_Ref_Id)references Employee(Employee_ID) on delete cascade)
select*from Employee
insert into Bonus values(001,5000,'16-02-20'),(002,3000,'16-02-11'),(003,4000,'16-02-20'),(001,4500,'16-02-20'),(002,3500,'16-06-11')
create table Title(Employee_Ref_Id int,Employee_Title char(25),Affected_from Datetime,Foreign key(Employee_Ref_Id) references Employee(Employee_ID)on delete cascade)
insert into Title values(001,'Manager','2016-02-20 00:00:00'),(002,'Executive','2016-06-11 00:00:00'),(008,'Executive','2016-06-11 00:00:00'),(005,'Manager','2016-06-11 00:00:00'),(004,'Asst.Manager','2016-06-11 00:00:00'),(007,'Executive','2016-06-11 00:00:00'),(006,'Lead','2016-06-11 00:00:00'),(003,'Lead','2016-06-11 00:00:00')
select First_name as Employee_name from Employee
select upper (First_name) from Employee
select distinct Department from Employee 
select substring(First_name,1,3) from Employee
select instr(First_name,binary'a')from Employee where First_name='amithab'
select rtrim(First_name) from Employee
select ltrim(Department) from Employee
select distinct length(Department) from Employee
select replace(First_name,'a','A')from Employee
select concat(First_name,'',Last_name)as 'Complete_name' from Employee
select*from Employee order by First_name asc
select*from Employee order by First_name asc,Department desc
select*from Employee order by Department desc,Salary asc,First_name asc
select*from Employee where First_name in ('Vipul','Satish')
select*from Employee where First_name not in('Vipul','Satish')
select*from Employee where Department like 'Admin%'
select*from Employee where First_name like '%a%'
select*from Employee where First_name like '%a'
select*from Employee where First_name like '_____h'
select*from Employee where Salary between 100000 and 500000
select*from Employee where year(Joining_Date)=2014 and month(Joining_Date)=3
select count(*) from Employee where Department ='Admin'
select concat(First_name,'',Last_name)as Employee_name,Salary from Employee where Employee_Id in(select Employee_Id from Employee where Salary between 50000 and 100000)
select Department,count(Employee_ID) No_of_Employees from Employee group by Department order by No_of_Employees desc
select distinct W.First_name,T.Employee_Title from Employee W inner join Title T on W.Employee_ID = T.Employee_Ref_Id and T.Employee_Title in ('Manager')
select Employee_Title,Affected_from,count(*) from Title group by Employee_Title,Affected_from having count(*)>1
select*from Employee where mod(Employee_ID,2)<>0
select*from Employee where mod(Employee_ID,2)=0
select curdate(),now()
select*from Employee order by Salary desc limit 10
select distinct Salary from Employee a where 3>=(select count(distinct Salary) from Employee b where a.Salary<=b.Salary)order by a.Salary desc
