create user 'ki'@'localhost' identified by '12345678';
create user 'ki'@'%' identified by '12345678';

select user,host from mysql.user;

grant all privileges on *.* to ki@localhost;
grant all privileges on *.* to ki@'%';

create table member(
    id varchar(10) primary key,
    password varchar(10) not null,
    name varchar(50) not null,
    point int default 1000,
    email varchar(100) not null unique,
    age int check(age > 20),
    join_date timestamp not null default current_timestamp
    );


use crawl_test;
select * from accidentstatstime;
select * from accidenttype;
select * from accidentcause;
select * from yeartype;
select * from timeslot;
