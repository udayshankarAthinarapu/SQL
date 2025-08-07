create database student;
use student;
create table student (stu_id int, stu_name varchar(30),marks int);

select * from student;
insert into student (stu_id , stu_name , marks) 
values (001,'abc',40),(002,'asd',50);

select * from student;

insert into student values(003,'qwe',45);


CREATE TABLE emp (
    id INT,
    e_name VARCHAR(30) NOT NULL,
     mail varchar(40)
);
use student;

select * from emp1;

CREATE TABLE emp1 (
    id INT unique,
    e_name VARCHAR(30) NOT NULL,
     mail varchar(40)
);

insert into emp1 values (05,'aqwert','aasdfg@mail');

show databases;

create table travel(
t_id int primary key auto_increment,
name varchar(40) not null,
t_time datetime default current_timestamp);

select * from  travel;
insert into travel(name) values('uday');

create table IOO(
id int primary key auto_increment,
name varchar(40) not null,
age int check(age>25));

insert into IOO(name , age) values ('uday',26);
insert into IOO(name, age) values ('yash',22);
select * from IOO;

create table product(
id varchar(30) primary key,
name varchar(30) unique not null,
price int not null);

select * from product;

insert into product values(001,'abcd',999);
insert into product values
('m667','uday',1000),
('m378','shankar',5999),
('m679','mahi',6666);

update product set name='yash',stock=10 where id='m378';
update product set id='m666' where name='abcd';

delete from product where id='m666';

alter table product add stock int;
update product set stock=10 where id='m378';
update product set stock=5 where id='m667';
update product set stock=15 where id='m679';

select id,name, price from product where stock>=10;
select name,price,stock from product where price>500;

select * from product;

alter table product drop column stock;
alter table product modify id varchar(40);
alter table product rename column id to p_id;

alter table emp1 rename to empoo;

select * from empoo;

truncate table empoo;

drop table empoo;
use student;
select * from sales ;
SELECT orderid,orderdate,country,region FROM sales;
SELECT DISTINCT category from sales;
SELECT orderid as order_id from sales;
SELECT * FROM sales where category='Technology';
SELECT * FROM sales WHERE Quantity > 10;
SELECT * FROM sales WHERE sales > 500;
SELECT * FROM sales WHERE sales = (SELECT MAX(sales) FROM sales);
SELECT * FROM sales WHERE profit =(SELECT min(profit) FROM sales);
SELECT * FROM sales WHERE profit =(SELECT MAX(profit) FROM sales);

SELECT * FROM sales WHERE state='texas' AND category='technology';
SELECT * FROM sales WHERE quantity > 5 AND region='east' AND subcategory='phones';

SELECT * FROM sales where category='technology' OR category='office supplies';
SELECT * FROM sales WHERE subcategory='phones' OR subcategory='paper' OR subcategory='art';

SELECT *  FROM sales WHERE NOT category='Technology';
SELECT * FROM sales WHERE NOT region='central';
SELECT * FROM sales WHERE region not in('central');
