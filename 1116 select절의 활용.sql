/* select 절을 사용한 데이터베이스의 데이터 확인 */
/* 
1. select * from 테이블;
2. select 출력할 필드 from 테이블;
3. select * from 테이블 where 조건;
4. select * from 테이블 where 조건중 패턴매칭(like)
*/
/* 그외의 select절에 사용할수 있는 키워드
1. distinct : 필드 앞에 작성해서 중복되는 값 제거
2. order by : 원하는 칼럼의 글자,숫자 순으로 나열
*/
use sakila;
select * from customer;
select distinct store_id from customer;
select * from city;

/* sakila 데이터베이스의 city 테이블에서 country_id의 종류를 확인하세요 */
select distinct country_id from city;

/* order by를 통한 정렬 : asc (기본)오름차순으로정렬 / desc 내림차순정렬  */
select * from customer order by first_name desc;
select * from customer order by store_id desc, first_name;

/* active를 오름차순으로 정렬한 후 create_date를 내림차순으로 정렬하세요*/
/* last_name를 오름차순으로 정렬한 후 fisrt_name를 오름차순으로 정렬하세요*/
