drop table car_pay;
drop table car;
drop table payment;
drop table driver;
drop table customer;

 create table customer (
    cust_id integer primary key,
    cust_name VARCHAR2(30),
    address VARCHAR2(30),
    cust_phone_number VARCHAR2(30)
    );

create table driver (
    driver_id integer primary key,
    d_name VARCHAR2(30),
    d_phone_number VARCHAR2(30)
);



 create table payment(
    pay_id integer primary key,
   payment_date date,
   amount integer,
   cust_id integer,
   foreign key(cust_id) references customer(cust_id) ON DELETE CASCADE
 );
create table car (
    car_id integer primary key,
    car_status VARCHAR2(30),
    cust_id integer,
    driver_id integer,
    booking_id integer,
    price integer,
    foreign key(cust_id) references customer(cust_id) on delete CASCADE,
    foreign key(driver_id) references driver(driver_id) on delete cascade
  );



create table car_pay (
  car_id integer,
  pay_id integer,
  foreign key(car_id) references car(car_id) on delete cascade,
  foreign key(pay_id) references payment(pay_id) on delete cascade,
  constraint car_pay_id  primary key(car_id,pay_id)
);

--inserting values for the customer table

insert into customer(cust_id,cust_name,address,cust_phone_number)values (1,'Avishek Roy','Fulbarigate','+8801744252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (2,'swassow','Khalishpur','+8801844252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (3,'Tashin','Shiromoni','+8801964252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (4,'Mishu','Moylapota','+8801744252968');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (5,'simon','Moylapota','+8801744252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (6,'Papon','Fultala','+8801744252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (7,'Mehedi','Shibbari','+8801744252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (8,'Fahim','Sonadanga','+8801744252963');
insert into customer(cust_id,cust_name,address,cust_phone_number)values (9,'Pial','Moylapota','+8801744252963');


--inserting values for the driver table

insert into driver(driver_id,d_name,d_phone_number) values (1,'Jamilul','+8801733517004');
insert into driver(driver_id,d_name,d_phone_number) values (2,'Rafi','+880189535252');
insert into driver(driver_id,d_name,d_phone_number) values (3,'Uday','+8801733517005');
insert into driver(driver_id,d_name,d_phone_number) values (4,'Abir','+8801933517005');
insert into driver(driver_id,d_name,d_phone_number) values (5,'Simon','+8801833517056');
insert into driver(driver_id,d_name,d_phone_number) values (6,'Rifat','+8801633517005');
insert into driver(driver_id,d_name,d_phone_number) values (7,'Mishu','+8801633517005');
insert into driver(driver_id,d_name,d_phone_number) values (8,'Rikhad','+8801533517005');
insert into driver(driver_id,d_name,d_phone_number) values (9,'Risahad','+8801553517005');
insert into driver(driver_id,d_name,d_phone_number) values (10,'Risalat','+8801933517005');
insert into driver(driver_id,d_name,d_phone_number) values (11,'Rashed','+8801503517005');



--inserting values for the payment table

insert into payment (pay_id,payment_date,amount,cust_id) values (1,'1-MAR-2022',10000,2);
insert into payment (pay_id,payment_date,amount,cust_id) values (2,'3-MAR-2022',7000,1);
insert into payment (pay_id,payment_date,amount,cust_id) values (3,'7-MAR-2022',5000,8);
insert into payment (pay_id,payment_date,amount,cust_id) values (5,'17-MAR-2022',2000,3);
insert into payment (pay_id,payment_date,amount,cust_id) values (6,'14-MAR-2022',5000,6);
insert into payment (pay_id,payment_date,amount,cust_id) values (7,'23-MAR-2022',10000,3);
insert into payment (pay_id,payment_date,amount,cust_id) values (8,'14-MAR-2022',7000,9);
insert into payment (pay_id,payment_date,amount,cust_id) values (4,'27-MAR-2022',2000,8);
insert into payment (pay_id,payment_date,amount,cust_id) values (9,'11-MAR-2022',2000,8);

--inserting values for the car table

insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(1,'good',1,70000,2,1);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(2,'medium',2,5000,1,2);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(3,'premium',3,10000,3,3);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(4,'low',4,2000,4,5);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(5,'premium',5,10000,5,4);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(6,'good',6,7000,6,5);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(7,'low',7,2000,7,7);
insert into car(car_id,car_status,booking_id,price,cust_id,driver_id) values(8,'premium',8,10000,8,8);


--inserting value in the car_pay table


insert into car_pay (car_id,pay_id) values(1,1);
insert into car_pay (car_id,pay_id) values(1,2);
INSERT into car_pay (car_id, pay_id) values(2,1);
insert into car_pay (car_id,pay_id) values(2,3);
insert into car_pay (car_id,pay_id) values(3,4);
insert into car_pay (car_id,pay_id) values(4,3);
insert into car_pay (car_id,pay_id) values(5,6);
insert into car_pay (car_id,pay_id) values(2,7);

---set operation for better understanding
--set pagesize 1000;
--set linesize 1000;

--description of every table
DESC car;
DESC driver;
DESC customer;
DESC payment;
desc car_pay;


--data diaplay for erery table

select *from car;
select *from driver;
select *from customer;
select *from payment;
select * from car_pay;

--add operation (adding column)
alter table car add very_low VARCHAR2(50);
desc car;
select * from car;

--drop operation (dropping column)
alter table car drop column very_low;
desc car;
select * from car;


--modify operation (modifying column data type)
alter table driver modify  d_name VARCHAR2(60),
desc driver;
select * from driver;

 
--Rename a column
alter table customer rename column cust_id to customer_id;
desc customer;
select * from customer;
  

  alter table customer rename volumn customer_id to cust_id;
  desc customer;
  select * from customer;


  --update operation (updating a value)
update customer set cust_name='Sakib'  where cust_id=7;
desc customer;

select * from customer;

--Applying delete operation here

delete from customer where cust_id=5;
desc customer;
select * from customer;
  
insert into customer(cust_id,cust_name,address,cust_phone_number)values (5,'Mehedi',Shibbari,01744252963);
select * from customer;

--calculation of a specific field
select (cust_id*2) as cust_id_multiplied_by_two from customer; --Giving the column a different name


--applying conditions
select cust_name from customer where cust_id=7;

--Range Search
SELECT cust_id,cust_name FROM customer
WHERE cust_id BETWEEN 1 AND 5;

SELECT cust_id,cust_name FROM customer
WHERE cust_id not BETWEEN 1 AND 5;

--Range operation
SELECT cust_id,cust_name FROM customer
WHERE cust_id>=1 and cust_id<=5;

SELECT cust_id,cust_name FROM customer
WHERE cust_id>=1 and cust_id<=5;


--Set membership
SELECT d_name,d_phone_number FROM driver WHERE driver_id IN (1,5);
SELECT d_name,d_phone_number FROM driver WHERE driver_id NOT IN (1,5);


--Ordering by column values
SELECT d_name,d_phone_number FROM driver order by driver_id;

SELECT d_name,d_phone_number FROM driver order by driver_id desc;

--Ordering by column values(with multiple columns)
select d_name from driver 
order by driver_id,d_phone_number; --multi-column ordering(lab 04)

select d_name from driver 
order by driver_id,d_phone_number desc;

--Use of DISTINCT
select distinct (cust_id) from customer order by cust_id;


--Pattern Matching
select address from customer
where cust_name like '%Papon%';


--aggregate functions:
select  max(cust_id) from customer;

select min(cust_id) from customer;

select  sum(cust_id) from customer;

select count(cust_id) from customer;

select count(*) from customer;

select  avg(cust_id) from customer;



--GROUP BY clause
select car_status,count(*) from car group by car_status;
select car_status,count(*) from car where car_id >2 group by car_status;

--HAVING clause

select car_status from car  group by car_status having count(*)>2;

--IN
select cust_id,cust_name from customer where cust_name in ('Papon','swassow','Tashin');
--nested query
select pay_id from payment where amount in (select amount from payment where amount=7000);


--set operation 
--union all operation
select cust_id, cust_name from customer where cust_id>0 and cust_id<=5
union all 
select driver_id, d_name from driver where driver_id>0 and driver_id<=5;


--union operation
--select cust_id, cust_name from customer where cust_id>0 and cust_id<5

select cust_id, cust_name from customer 
union 
select driver_id, d_name from driver;




select driver_id, d_name from driver where driver_id>0 and driver_id<5
union all
select cust_id, cust_name from customer where cust_id>0 and cust_id<5;


--INTERSECT operation
select cust_id,cust_name from customer
INTERSECT
select driver_id,d_name from driver;


--MINUS operation
select cust_id,cust_name from customer
minus
select driver_id,d_name from driver;



-- Join operations :

-- Join
select d.cust_id, d.cust_name, p.pay_id from customer d join
payment p on d.cust_id = p.cust_id;



-- Natural Join
select cust_id, cust_name, pay_id from customer natural join payment;



-- Cross Join
select d.cust_id, d.cust_name, p.pay_id,p.amount from customer d cross join payment p;



-- Inner Join
select d.cust_id, d.cust_name, p.pay_id,p.amount from customer d inner join
payment p on d.cust_id = p.cust_id;



-- Left Outer Join
select d.cust_id, d.cust_name, p.pay_id,p.amount from customer d left outer join
payment p on d.cust_id = p.cust_id;



-- --RIGHT Outer Join
select d.cust_id, d.cust_name, p.pay_id, p.amount from customer d right outer join
payment p on d.cust_id = p.cust_id;



-- --FULL Outer Join
select d.cust_id, d.cust_name, p.pay_id, p.amount from customer d full outer join
payment p on d.cust_id = p.cust_id;


-- Self Join
select a.cust_id from customer a minus
select a.cust_id from customer a join customer b on a.cust_id < b.cust_id;








--PL_SQL WORKING AND FUNCTIONALITY




-- PL/SQL Procedure for displaying a Single Row

set serveroutput on

declare
pl_cust_id  customer.cust_id%type;
pl_cust_name customer.cust_name%type;

begin

select cust_id, cust_name  into pl_cust_id , pl_cust_name from customer
where cust_id = 3;

dbms_output.put_line('customer_Id : ' || pl_cust_id || ', Customer_Name : ' || pl_cust_name );

end;
/











-- PL/SQL Procedure for displaying Multiple Rows using Cursor

set serveroutput on

declare
cursor cust is select cust_id, cust_name, cust_phone_number from customer;
customer_record cust%rowtype;

begin

open cust;
loop
	fetch cust into customer_record;
	exit when cust%rowcount > 3;
	dbms_output.put_line('Customer_Id : ' || customer_record.cust_id);
	dbms_output.put_line('Customer_Name : ' || customer_record.cust_name);
	dbms_output.put_line('Customer_Name_Phone_no : ' || customer_record.cust_phone_number);
end loop;
close cust;

end;
/









-- PL/SQL Procedure for getting Customers's Info

set serveroutput on

create or replace procedure get_customer_info is
c_id customer.cust_id%type := 2;
c_name customer.cust_name%type;
c_phone customer.cust_phone_number%type;

begin

select cust_id, cust_name, cust_phone_number into c_id, c_name, c_phone from customer where cust_id = c_id;
dbms_output.put_line('Customer Id: '||c_id);
dbms_output.put_line('Customer Name: '||c_name);
dbms_output.put_line('Customer Phone No: '||c_phone);
end get_customer_info;
/
show errors




begin
	get_customer_info;
end;
/














-- Function to get the Maximum amount of fare of any Car from Payment Table

set serveroutput on

create or replace function car_payment_amount return number is
max_quantity payment.amount%type;
begin
select max(amount) into max_quantity from payment;
return max_quantity;
end car_payment_amount;
/



begin
	dbms_output.put_line('Max Car Amount: ' || car_payment_amount);
end;
/












-- PL/SQL Procedure which takes User Input & make Decision about CAR Status


set serveroutput on
declare
pl_price car.price%type;

pl_car_id car.car_id%type := &CAR_Id;

begin

select  price into pl_price from car
where car_id = pl_car_id;

dbms_output.put_line ('Car_id: ' || pl_car_id);


if pl_price = 7000 then
	dbms_output.put_line ('The Car is GOOD');
elsif pl_price  =5000  then
	dbms_output.put_line ('The Car is MEDIUM');
elsif pl_price  =10000  then
	dbms_output.put_line ('The Car is PREMIUM');
elsif pl_price  =2000  then
	dbms_output.put_line ('The Car is LOW');
end if;

exception
when others then
	dbms_output.put_line (sqlerrm);
end;
/















-- View (create, update, delete, drop)

create view customer_view as
select cust_id, cust_name from customer;

select * from customer_view ;

update customer_view  set cust_name = 'ASIF' where cust_id = 8;
select * from customer_view ;

delete from customer_view  where cust_id = 8;
select * from customer_view ;
   
drop view customer_view ;

insert into customer(cust_id, cust_name) values (10, 'Farhan');
select * from customer;
















-- Trigger to check the Validity of Price of a car to hire that during booking

set serveroutput on

create or replace trigger check_price before insert or update on car
for each row

declare
min_price number := 2000;
max_price number := 10000;

begin

if :new.price > max_price then
	raise_application_error(-20000,'Price is too Large for any car to hire');
elsif :new.price < min_price then
	raise_application_error(-20001,'Price is too Small for any Car to hire');
else dbms_output.put_line('New Row Inserted Successfully in Car Table');
end if;

end;
/

insert into car(car_id,price) values(9,5000);
insert into car(car_id,price) values(10,12000);
insert into car(car_id,price) values(11,1000);
select * from car;
delete from car where car_id = 7;
select * from car;















-- Trigger to Auto Increment the Distributor_id in Distributors Table

set serveroutput on

create or replace trigger auto_inc before insert or update on customer
for each row

declare
current_id int;

begin
select max(cust_id) into current_id from customer;
:new.cust_id := current_id + 1;
dbms_output.put_line('New Row Inserted Successfully in Customer Table');

end;
/

insert into customer(cust_id, cust_name, cust_phone_number) values (null, 'sakib', '+01352653626');
insert into customer(cust_id, cust_name, cust_phone_number) values (13, 'siam', '+01352683626');
insert into customer(cust_id, cust_name, cust_phone_number) values (66, 'sayem', '+01352353626');
select * from customer;
delete from customer where cust_id > 10;
select * from customer;















-- TRANSACTION MANAGEMENT FOR CUSTOMER
savepoint sp1;
delete from customer;
select * from customer;

rollback to sp1;
select * from customer;
commit;



savepoint sp2;
insert into customer(cust_id,cust_name,address,cust_phone_number)values (10,'Sihab','Shibbari','+8801704252963');
savepoint sp3;
insert into customer(cust_id,cust_name,address,cust_phone_number)values (11,'Tudu','Rahul','+8801744252763');
select * from customer;

rollback to sp3;
select * from customer;
rollback to sp2;
select * from customer;









-- DATE FUNCTIONALITY

select sysdate from dual;
select current_date from dual;
select systimestamp from dual;


select  payment_date, amount from payment where pay_id =4;
select add_months (payment_date, 3) as three_months_extension from payment where pay_id = 2;
select add_months (payment_date, -3) as three_months_Reduction from payment where pay_id = 2;


select least (to_date('1-JUL-2022'), to_date('1-DEC-2022')) from dual;
select greatest (to_date('1-JUL-2022'), to_date('27-DEC-2022')) from dual;


select last_day(payment_date) from payment where pay_id<= 5;

select amount, extract(day from payment_date) as Day from payment where pay_id <= 5;
select amount, extract(month from payment_date) as Month from payment where pay_id <= 5;
select amount, extract(year from payment_date) as Year from payment where pay_id <= 5;





---END OF DATA BASE