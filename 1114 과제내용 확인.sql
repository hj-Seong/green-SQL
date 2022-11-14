create database blog;
use blog;
create table post (
	ID int,
    Name varchar(30),
    Title varchar(50),
    Content text
);

insert into post (ID, Name, Title, Content) 
	values (1,'홍길동', '첫번째 포스트', '글을 작성합니다');
    
insert into post (ID, Name, Title, Content) 
	values (2,'홍길동', '두번째 포스트', '새로운 글을 작성합니다');
insert into post 
	values (4,'성춘향', '두번째 제목', '내용1');
select * from post;

update post set title = "수정된 타이틀입니다" where id = 2;
delete from post where id = 1;

select * from post where id =3;
