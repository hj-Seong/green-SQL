use sakila;
/* select : 데이터베이스의 테이블을 데이터를 가져오는 명령어*/
/* select (칼럼 필드들 또는 *) from 테이블 */
select * from actor;
select actor_id, first_name from actor;

/* where을 이용하여 원하는 데이터를 찾아서 볼 수 있다*/
/* where이 하는 일 : 특정한 조건을 가진 데이터를 찾음*/
select * from actor where actor_id = 1;

/* 
1. select를 이용하여 first_name이 JOE인 사람을 찾으세요 
2. select를 이용하여 last_name이 DEAN인 사람을 찾으세요
	*이때, actor_id만 출력
*/