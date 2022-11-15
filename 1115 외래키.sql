/* 관계형 데이터베이스
primary key를 이용해서 테이블에서 원하는 데이터를 찾아낼수있고
foreign key를 이용해서 다른 테이블과 연결할수 있다
 */
 /* foreign key를 확인하기 위한 2개의 테이블
test 데이터 베이스 생성
testtable1 테이블1개 생성 id(int/PK) text(varchar(30))
testtable2 테이블1개 생성 myid(int/PK) parentid(int) - Foreign key
 */
 create database test;
 use test;
 create table testtable1 (
	id int primary key,
    text text
 );
/* foreign key는 외부테이블의 컬럼과 연결할수 있게 작성한다
foreign key(현재테이블에서 필드) : 현재 테이블에서 연결한 칼럼(필드)값
references 외부테이블(필드) : 외부테이블에서 연결할 칼럼(필드)값 *PK값만 연결가능
on update cascade : 외부 테이블에서 업데이트 될때 같이 업데이트
*/
 create table testtable2 (
	myid int primary key,
    parentid int,
    foreign key(parentid) references testtable1(id) on update cascade
);
insert into testtable1 values (1, "첫번째값입니다");
insert into testtable1 values (2, "두번째값입니다");
select * from testtable1;
select * from testtable2;
insert into testtable2 values(1,1);
insert into testtable2 values(2,1);

/*
testtable3 생성
id(int), name(varchar()), parentid(int/testtable1의 id를 foreign key)
insert를 통해 값이 들어가는지 확인
*/

 