create database truyum;
use truyum;
create table menu(
item_id varchar(10) primary key,
item_name varchar(20),
price int,
active_status enum('Yes','No'),
date_of_launch date,
category varchar(30),
free_delivery enum('Yes','No')
);
create table user(
user_id varchar(10) primary key,
user_name varchar(20)
);
create table cart(
cart_id varchar(10) primary key,
user_id varchar(10),
item_id varchar(10),
foreign key(user_id) references user(user_id),
foreign key(item_id) references menu(item_id)
);
insert into menu values('i1','Sandwich','99','Yes','2017-03-15','Main Course','Yes');
insert into menu values('i2','Burger','129','Yes','2017-12-23','Main Course','No');
insert into menu values('i3','Pizza','149','Yes','2017-08-21','Main Course','No');
insert into menu values('i4','French Fries','57','No','2017-07-02','Starters','Yes');
insert into menu values('i5','Chocolate Brownie','32','Yes','2022-11-02','Dessert','Yes');


insert into user values('u1','Admin');
insert into user values('u2','Customer');

insert into cart values('c1','u2','i1');
insert into cart values('c2','u2','i5');
insert into cart values('c3','u2','i4');
insert into cart values('c4','u2','i2');






