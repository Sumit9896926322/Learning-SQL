create database newfriends;
use newfriends;

create table friends(
id int not null auto_increment,
name varchar(255) not null ,
nickname varchar(255),
location varchar(255),
age int not null,
birthdate date,
primary key(id) 
);

describe friends;

insert into friends (name,nickname,location,age,birthdate)
values
('sumit','a','mahipalpur',20,'2000-01-15'),
('suraj','b','mahipalpur',20,'2000-04-19'),
('avinash','c','mahipalpur',19,'2001-04-12'),
('utkarsh','d','mahipalpur',17,'2003-09-27'),
('gautam','r','mahipalpur',18,'2002-12-28'),
('reyansh','f','mahipalpur',15,'2005-03-01'),
('zayn','g','mahipalpur',32,'1988-09-09');

alter table friends drop surname;
alter table friends add surname varchar(100) not null after nickname; 
alter table friends drop main_id;

delete from friends where id > 5;
update friends set nickname = 'tappu' where id = 1;
delete from friends where age = 18 ;
select * from friends order by nickname;

select age from friends group by age;


