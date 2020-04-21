create table city(
code int primary key auto_increment,
name char(50) not null
);
create table student(
roll_number int primary key not null,
name char(50) not null,
address varchar(300) not null,
gender char(1) not null,
date_of_birth date not null,
indian bool not null,
city_code int not null
);