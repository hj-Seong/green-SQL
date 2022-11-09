/* database Book를 만들고, table Coding 만드세요
컬럼의 필드값 : ID(int), Title(varchar), Author(varchar), Page(int)
insert into Coding (ID, Title, Author,Page) 
		values (1 ,"SQL", "green", 300);
*/
create database Book;
use Book;
create table Coding (
	ID int,
    Title varchar(30),
    Author varchar(30),
    Page int
);

insert into Coding (ID, Title, Author, Page) 
	value (1, "SQL", "green", 300);
insert into Coding (ID, Title,Author, Page) 
	value (2, "JS", "홍길동", 350);
select * from Coding;

/* insert를 이용해서 원하는 칼럼의 필드값에만 값을 넣어줄수있다
그럴경우 값을 넣지 않는 필드는 null 값을 갖는다.
*/
insert into Coding (ID, Title, Page) 
	value (3, "자바", 350);
    
/* update를 통해 데이터의 필드값을 바꿔줄수 있다
where을 통해서 원하는 데이터의 상태를 설정해서 찾아줄수 있다
*/
update Coding set Author = "성춘향" where Title = "자바";

/* update를 사용할때 where을 사용하지 않고 실행하면 
모든 데이터의 필드값이 바뀜*/
update Coding set Page = 600;

/*delete를 이용해서 데이터를 삭제
이때 where를 사용하여 원하는 데이터 선택*/ 
delete from Coding where ID =3;
/* where없이 작성하게 되면 안에 있는 모든 데이터가 삭제*/
delete from Coding;

/* 위에 작성한 insert를 통해 값을 넣어준 후,
id가 1인 Page를 100으로 업데이트하고
Author가 홍길동인 데이터를 삭제하세요.
*/
