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

select * from actor where first_name = "JOE";
select actor_id from actor where last_name ="DEAN";


/* where에 연산자를 넣어서 조건을 만들 수 있다*/
/* =, <, >, <=, >= 비교연산자 사용 가능*/
select * from actor where actor_id <= 5;

/* 
IS NULL : null인 데이터를 찾음
IS NOT NULL : null이 아닌 데이터를 찾음
IS : 두개의 값이 같을 때 찾음 ( = )
IS NOT : 두개의 값이 같지 않을때 찾음
*/
select * from actor where actor_id IS NULL;
select * from actor where actor_id IS NOT NULL;

/*
BETWEEN 최소값 AND 최대값 : 사이값을 찾음
NOT BETWEEN 최소값 AND 최대값 : 최소값보다 작고, 최대값보다 큰값을 찾음
*/
select * from actor where actor_id NOT BETWEEN 5 AND 10;

/*
IN(찾을 값) : 찾는 값이 있다면 데이터 찾음 (여러 개를 함께 찾음)
NOT IN(제외할 값) : 제외할 값을 빼고 데이터를 찾음(여러개 제외가능)
*/
select * from actor where last_name in("DEAN", "DAVIS");

/*
비교연산자 : actor_id가 190이상인 데이터를 출력하세요
IS : last_name이 CHASE 인 사람을 찾으세요
BETWEEN : actor_id가 100에서 110인 데이터를 출력하세요
IN : first_name이 SUSAN과 NICK인 사람을 찾으세요
*/
