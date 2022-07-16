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
   payment_date VARCHAR2(30),
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
insert into driver(driver_id,d_name,d_phone_number) values (8,'Rishad','+8801533517005');



--inserting values for the payment table

insert into payment (pay_id,payment_date,amount,cust_id) values (1,'1/6/22',10000,2);
insert into payment (pay_id,payment_date,amount,cust_id) values (2,'2/8/22',7000,1);
insert into payment (pay_id,payment_date,amount,cust_id) values (3,'3/5/22',5000,8);
insert into payment (pay_id,payment_date,amount,cust_id) values (5,'26/3/22',2000,3);
insert into payment (pay_id,payment_date,amount,cust_id) values (6,'26/3/22',5000,6);
insert into payment (pay_id,payment_date,amount,cust_id) values (7,'26/3/22',10000,3);
insert into payment (pay_id,payment_date,amount,cust_id) values (8,'26/3/22',7000,9);
insert into payment (pay_id,payment_date,amount,cust_id) values (9,'26/3/22',2000,8);

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
