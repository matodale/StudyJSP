show databases;
/*
 * basicjsp jspid jspppass
 * */
use basicjsp;
create table member(
	id varchar(50) not null primary key,
	passwd varchar(16) not null,
	name varchar(10) not null,
	reg_date datetime not null
);
desc member;
create table test(
	num_id int not null primary key auto_increment,
	title varchar(50) not null,
	content text not null
);
desc test;
drop table test;
show tables;
insert into member(id, passwd, name, reg_date)
values('kingdora@dragon.com', '1234', '김개동', now());
insert into member(id, passwd, name, reg_date)
values('hongkd@aaa.com', '1111', '홍길동', now());
select * from member;
select id, passwd from member;
select id, passwd from member where id='hongkd@aaa.com';
update member set passwd='3579' where id='hongkd@aaa.com';
select * from member;
select * from member where id='hongkd@aaa.com';