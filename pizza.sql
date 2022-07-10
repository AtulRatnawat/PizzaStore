CREATE DATABASE pizza;
USE pizza;
CREATE TABLE Products(
	PID int primary key auto_increment, 
	Name varchar(30), 
	Cost float, 
	Rating int );
    
CREATE TABLE Customers(	
	CID int primary key auto_increment, 
	Address varchar (30), 
    Name varchar(30), 
    Phone_number bigint,
    Number_of_Orders int default 0);
    
CREATE TABLE Employees(
	EID  int  primary key auto_increment,
	Name varchar(30),
    Phone_number bigint);
    
CREATE TABLE orders(	
	OrderID int  primary key auto_increment,
    Date_of_order date, 
    Time_of_order time, 
    CID int, 
    PID int,
    Cost float,
    foreign key (CID) REFERENCES CUSTOMERS(CID),
    foreign key (PID) references products(PID));
    
INSERT INTO Products(Name, Cost, Rating)
values ('Hawaiian Pizza', 225.00, 7),
	   ('Cheese Pizza', 124.75, 9),
	   ('Veggie Pizza', 154.25, 7),
	   ('Pepperoni Pizza', 300.00, 9),
       ('Margherita Pizza', 145.75, 6),
       ('Cheese Veggie Pizza', 199.95, 8),
       ('Cicilian Pizza', 100.00, 9),
       ('Onion Tomato Corn Pizza', 250.50, 8),
       ('Italy Special Pizza', 175.75, 10),
       ('New-York Style Pizza', 99.99, 8);
	   

INSERT INTO Customers(Address, Name, Phone_number, Number_of_Orders)
values ('6649 Blue street', 'Atul', 9989989989, 1),
       ('8W Bridge', 'Aman', 8898989898, 1),
       ('25E near church', 'Bhavya', 7869785869, 1),
       ('New Horizon' ,'Vikalp', 8324543212, 1),
       ('Dangi Street' , 'Jatin', 8342567896, 1),
       ('Sabji Bazar', 'Aashish', 8123456789, 1),
       ('GokulDham Society', 'Ajay', 8876567543, 1),
       ('Powder Gully' , 'Harshvardhan', 8232435465, 1),
       ('Andheri East', 'Lekhraj', 9876567883, 1),
       ('Andheri West', 'Akshit', 7865676783, 1);

INSERT INTO Employees(Name, Phone_Number)
values  ('Itachi Uchiha', 9595959595),
		('Naruto Uzumaki', 9534959595),
		('Kakashi Hatake', 8895959595),
		('Shikamaru Nara', 9565959595),
		('Minato Namikaze', 9595959533),
		('Hinata Hyuga', 9595944595),
		('Sakura Haruno', 9595669595),
		('Temari', 9595959225),
		('Rin Nohara', 9595911595),
		('Kushina Uzumaki', 9598859595);

INSERT INTO orders(Date_of_order, Time_of_order, CID, PID, Cost)
values  ('2020-08-10', '13:23:44', 5, 3, 543.65),
		('2020-08-11', '13:23:44', 10, 4, 55),
		('2020-08-12', '14:23:44', 4, 5, 365),	
		('2020-08-13', '15:23:44', 3, 6, 435),
		('2020-08-14', '16:23:44', 2, 7, 565),
		('2020-08-15', '17:23:44', 1, 8, 65),
		('2020-08-16', '18:23:44', 9, 9, 554.65),
		('2020-08-17', '19:23:44', 8, 10, 673.65),
		('2020-08-18', '14:23:44', 7, 1, 444.65),
		('2020-08-19', '16:23:44', 6, 2, 53.65);
 


delimiter //
create trigger Order_record
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=1 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 1;
end;//
delimiter ;

delimiter //
create trigger Order_record2
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=2 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 2;
end;//
delimiter ;

delimiter //
create trigger Order_record3
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=3 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 3;
end;//
delimiter ;

delimiter //
create trigger Order_record4
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=4 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 4;
end;//
delimiter ;

delimiter //
create trigger Order_record5
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=5 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 5;
end;//
delimiter ;

delimiter //
create trigger Order_record6
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=6 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 6;
end;//
delimiter ;

delimiter //
create trigger Order_record7
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=7 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 7;
end;//
delimiter ;

delimiter //
create trigger Order_record8
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=8 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 8;
end;//
delimiter ;

delimiter //
create trigger Order_record9
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=9 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 9;
end;//
delimiter ;

delimiter //
create trigger Order_record10
after 
INSERT
on Orders
for each row 
begin
set @num:=(select count(OrderID) from (select * from Customers natural join Orders) as newtable where CID=10 group by CID);
update Customers
SET Number_of_Orders = @num
where CID = 10;
end;//
delimiter ;

       
#drop database pizza;
#select* from orders;
#update orders set PID=1 where OrderID=5;


#AtulRatnawat