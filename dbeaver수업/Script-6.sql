use hr;
-- 서브 쿼리

-- 이름이 Jonathon인 사람의 월급보다 같거나 많은 사원의 이름과 월급을 출력하시오.

select first_name, salary from employees e
where first_name = 'Jonathon';

select first_name, salary from employees e 
where salary >= 8600;

- + -

select first_name, salary from employees e 
-- 값이 조건이 아니라 유동적인 데이터일 경우 서브쿼리를 사용할 수 있다.
-- 단일 비교 조건일 경우에는 서브쿼리 결과가 단일행 단일열이어야 한다.
where salary >= (
	-- select 문에 2개 이상의 값을 넣으면 오류
	select salary
	from employees e
	-- 'J%' 이런 식으로 검색을 하면 너무 많은 값이나와 오류
	where first_name = 'Jonathon');

-- first_name이 J로 시작하는 사람들의 월급과 같은 사람들의
-- first_name과 salary를 출력하시오.
-- 서브쿼리를 사용할 때에는 본쿼리보다 서브쿼리를 먼저 작성해본다.

select salary from employees where first_name like 'J%';

select * from employees where salary in (8200, 7800);

select first_name, salary from employees e 
-- in절을 걸 때 1개 이상의 행이 나오도록 서브쿼리를 작성할 수 있다.
where salary in (
	select salary 
	from employees e
	where first_name like 'J%');


-- 직원의 first_name과 department_name을 출력하시오. (department_name을 서브쿼리로)
-- 스칼라 서브쿼리는 쿼리횟수가 결과행만큼 실행될 수 있다.
-- join으로 해결 가능하면 join으로 해결하는 것이 좋다.
select e.first_name, (
	select department_name 
	from departments d 
	where e.department_id = d.department_id 
) 
from employees e ;


-- 인라인뷰 서브쿼리
-- from절 데이터를 줄여서 가져오거나 가공해서 가져오거나
-- 이름을 바꿔서 가져오거나 할 때 사용한다.

select concat(first_name, ' ', last_name) as name, salary
from employees;

select * 
-- 인라인뷰 서브쿼리
from (select concat(first_name, ' ', last_name) as name, salary
from employees) 
as emp
-- 순서가 맞아서 name을 사용할 수 있다.
where name like 'S%';

-- 실행되지 않는 이유 = 서순이 맞지 않음.
select concat(first_name, ' ', last_name) as name, salary
from employees
where name like 'S%';







