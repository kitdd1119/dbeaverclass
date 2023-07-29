-- SQL문
-- 데이터를 가져오는 SQL문
-- select 뒤에는 테이블에서 가져올 컬럼명을 적는다.
select first_name


-- from 뒤에는 데이터를 가져올 테이블 명을 적는다.
-- 실행할 SQL 마지막에는 세미콜론을 적는다.
from employees;


-- 모든 컬럼을 가져올 떄에는 *을 적는다.
select * from employees;


-- where은 데이터를 조건에 맞는 것만 가져오도록 제한한다.
select * from employees where employee_id < 105;

-- employees 테이블에서 last_name이 King인 사람 조회하기
select * from employees 
-- 컬럼명 띄어쓰기를 할 때 언더바를 사용한다.
-- 문자열은 작은 따옴표를 사용한다.
-- 같다라는 코드 '=' 이거임. (프로그래밍 언어와 다름)
where last_name = 'King';


select * 
from employees 
where last_name = 'King'
-- 조건을 연결 할 떄에는 and, or를 사용.
-- 여러 조건을 사용할 때에는 나뉘어지는 방식을 잘 생각한다.
-- 묶어야 될 곳은 소괄호로 묶는다.
	and (employee_id = 100 or employee_id)= 101;
-- 위와 다르게 나옴.
select * 
from employees 
where (last_name = 'King'
-- 조건을 연결 할 떄에는 and, or를 사용.
-- 여러 조건을 사용할 때에는 나뉘어지는 방식을 잘 생각한다.
-- 묶어야 될 곳은 소괄호로 묶는다.
	and employee_id = 100) or employee_id = 101;



select * from employees 
-- group by 특정 컬럼을 기준으로 그룹을 만들 때 사용한다. 
group by job_id;

-- group by를 사용하면 having과 select에서 그룹함수를 사용할 수 있다.
-- group by없이도 select에서 그룹함수 일부를 사용할 수 있다.
-- 컬럼 위치에 수학 계산도 가능하다.ㄴㄴ
-- as는 컬럼의 별명을 만들 수 있다.
select job_id , sum(salary), count(salary), sum(salary) / count(salary) as 평균연봉
from employees 
group by job_id
-- having은 그룹을 기준으로 그룹함수 또는 컬럼을 이용해서 조건 검색
having sum(salary) > 40000;


-- group by없이도 select에서 그룹함수 일부를 사용할 수 있다.
-- (개별 행을 그룹으로 판단)
select count(*) 
from employees;

select * from employees 
-- order by 데이터를 특정 컬럼 기준으로 정렬할 때 사용.
order by salary asc; -- 반대로 많은 순서부터 정렬 (내림차순) = desc





select * from employees 
-- 문자열의 일부 내용을 생략할 때에는 %를 사용한다.
-- 문자열 일부 내용 검색 시에는 '='보다는 like를 사용한다.
where first_name like 'J%';

-- employees 안에 first_name에 e가 들어간 사람
select *
from employees 
where first_name like '%e%';



-- employees 에서 last_name이 t로 끝나는 사람
select * from employees 
where first_name like 'J%';


select *
from employees 
where last_name like '%t';

-- employees에서 커미션이 없는 사람만 찾기
select *
from employees
-- null 조건은 =이나 like가 아니라 is를 사용한다ㅏ.
where commission_pct is not null; 

