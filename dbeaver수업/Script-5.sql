-- 조인
-- 직원의 first_name과 직업명을 출력하세요.

-- select * from employees join jobs;


-- 카티션 곱
select e.first_name, e.job_id as 직원직업아이디, j.job_id as 직업아이디 
-- 조인 시 조건을 걸지 않으면 맞지 않는 데이터들이 연결될 수 있다.
from hr.employees as e join jobs as j
group by e.job_id 
order by e.job_id ;


-- 동등 조인
-- 거의 대부분의 조인은 inner 조인(동등조인)이다.
select e.first_name as 이름, 
-- 			e.job_id as 직원직업아이디, 
-- 			j.job_id as 직업아이디,
			j.job_title as 직업명
from employees e
	inner join jobs j
	-- on은 조인 전용 where문이다.
	on e.job_id = j.job_id;

-- 외부조인
-- 직원은 first_name과 department_name을 출력하시오.
select e.first_name as 이름, d.department_name as 직업
from employees e 
	inner join departments d 
	on e.department_id = d.department_id;

-- department_id가 null인 경우에도 출력해주세요.
select e.first_name as 이름, d.department_name as 직업
from employees e 
	-- 다 보여줄 테이블을 기준으로 outer join한다.
	-- employees 직원을 다 보여줘야 하기 때문에 left를 사용.
	left outer join departments d 
	on e.department_id = d.department_id;


-- 자체 조인
-- 직원의 first_name과 사수의 first_name을 출력하세요.
select e.first_name as 직원, e2.first_name as 사수 
from employees e 
	inner join employees e2 
	on e.manager_id = e2.employee_id ;



