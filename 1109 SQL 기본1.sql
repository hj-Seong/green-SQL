/*주석 */
/*SQL의 명령어는 Query(쿼리)라고 부르며 ctrl+Enter를 통해 한줄로 실행 
여러줄을 동시에 실행할수 있지만 쿼리를 실행하면 데이터베이스에 즉시 반영되므로
이전에 작성한 명령어가 제대로 작동되지않을수 있다(특히 create)
*/

/*create database를 통해 데이터 베이스를 작성할수 있다
create database는 동일한 이름을 가질수 없다!(한번만 실행가능)
*/
create database test;
/* 데이터베이스의 테이블을 사용하기전에, 데이터 베이스로 이동*/
USE test;

/* 
데이터베이스의 테이블을 사용할때도 동일하게 create 사용
테이블을 작성해 줄때는, 안에 들어갈 자료형을 고정시킨다.
*/
create table people ( 
	ID int,
    Name varchar(10)
 );
 /* insert를 사용해서 데이터를 넣을수 있다*/
 insert into people (ID, Name) values (1 ,"홍길동");
 
 /* select (필드) from (테이블) 
 필드에 * 기호를 넣으면 테이블의 모든 필드값을 확인한다
 */
 select * from people;

/* insert이용해서 people에 사람 2명을 더 추가하고 select로 확인*/ 
 