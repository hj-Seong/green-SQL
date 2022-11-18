/* 데이터 베이스가 이미있는 경우는 drop 을 이용하여 데이터베이스를 삭제하고 실행*/
/* drop database myDatabase*/

create database myDatabase;
use myDatabase;
create table User (
	ID int primary key,
    Name varchar(50) not null,
    PassWord varchar(50) not null
);
insert into User values (1,"홍길동", "1234");
insert into User values (2,"성춘향", "5678");
insert into User values (3,"이몽룡", "abcd");
insert into User values (4,"흥부", "aaaa");
insert into User values (5,"놀부", "qwer");
select * from User;
update User set PassWord = "5678" where id = 2;

create table Board(
	ID int primary key,
	UserID int,
    Title varchar(50) default "비어있는 제목",
    text text,
    foreign key (UserID) 
    references User(ID) on update cascade on delete cascade
);
insert into Board values (1,1,"홍길동이 쓴 글", "처음으로 글을 남깁니다");
insert into Board values (2,1,"두번째로 쓴 글", "반갑습니다");
insert into Board values (3,2,"성춘향이 쓴 글", "글을 작성합니다");
insert into Board values (4,1,"세번째로 쓴 글", "내용을 입력합니다");
insert into Board(ID, UserID, text) values (5,5, "빈 내용입니다");
select * from Board;

select * from User inner join Board
on User.ID = Board.UserID;

select * from User left join Board
on User.ID = Board.UserID; 
