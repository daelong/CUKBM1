create database cukbm;
use cukbm;
create table userinfo(
    id varchar(20) not null,
     password varchar(20) not null,
     major varchar(20),
    age varchar(2),
    phone varchar(15),
     photo varchar(20),
    pr varchar(500),
     primary key(id)
     );

 create table boarddb(
     seqno int(5) not null auto_increment,
    title varchar(50) not null,
     writer varchar(20) not null,
     date varchar(20) not null,
     content varchar(500) not null,
     heart int(4),
    master int(1),
    attend_max int(30),
    close int(1),
    attend_min int(2),
    subject varchar(20) not null,
    team varchar(20),
    kakao varchar(100),
     primary key(seqno)
     );

 create table forcedb(
    user varchar(20) not null primary key,
    postno int(5) not null
     );

create table likedb(
     like_no int(5) not null  auto_increment primary key ,
     like_id varchar(20) not null,
     like_seqno int(5) not null,
     like_title varchar(50) not null,
     like_subject varchar(20)
     );

create table msgdb(
	msgno int(10) not null auto_increment primary key,
	sender varchar(20) not null,
	receiver varchar(20) not null,
	content varchar(100) not null,
	kind varchar(10) not null
	);

create table postdb(
	postno int(30),
	user varchar(20)
	);