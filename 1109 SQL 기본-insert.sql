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
select * from Coding;