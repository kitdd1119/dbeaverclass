-- 조인
-- 문제1) 사원들의 이름, 부서번호, 부서명을 출력하라
select e.first_name, e.department_id, d.department_name 
from employees e inner join departments d ; 

-- 문제2) 30번 부서의 사원들의 이름,직업,부서명을 출력하라
select e.first_name, j.job_title,  d.department_name
from employees e 
inner join departments d, jobs j 
where e.department_id = 30;

-- 문제3) 커미션을 받는 사원의 이름, 직업, 부서번호,부서명을 출력하라
select e.first_name , j.job_title , e.department_id, d.department_name, e.commission_pct 
from employees e 
inner join departments d, jobs j
where e.commission_pct > 0
group by e.first_name;

-- 문제4) 지역번호 2500 에서 근무하는 사원의 이름, 직업,부서번호,부서명을 출력하라
select e.first_name 이름, j.job_title 직업, d.department_id 부서번호, d.department_name 부서명
from employees e 
inner join departments d, jobs j 
where d.location_id = 2500
group by e.first_name ;

-- 문제5) 이름에 A가 들어가는 사원들의 이름과 부서이름을 출력하라
select e.first_name 이름, d.department_name 부서명 
from employees e 
inner join departments d 
on e.department_id  = d.department_id  
where e.first_name like '%a%';

-- 문제6) 사원이름과 그 사원의 관리자 이름을 출력하라
select e.first_name, e2.first_name 
from employees e
inner join employees e2 
ON e.manager_id = e2.employee_id ;

-- 문제7) 사원이름과 부서명과 월급을 출력하는데 월급이 3000 이상인 사원을 출력하라
select e.first_name, d.department_name, e.salary 
from employees e
inner join departments d
on e.department_id = d.department_id
where e.salary >= 3000 ;

-- 문제8) TJ 이란 사원보다 늦게 입사한 사원의 이름과 입사일을 출력하라
-- cross join
select e2.first_name, e2.hire_date 
from employees e
cross join employees e2 
on e.first_name = 'Tj'
where e.hire_date > e2.hire_date ;
-- 조인
select e.first_name, e.hire_date 
from employees e
join employees e2 
on e2.first_name = 'Tj'
where e.hire_date > e2.hire_date ;
-- 서브쿼리
select hire_date
from employees e 
where first_name = 'Tj';

select e.first_name, e.hire_date 
from employees e
where e.hire_date > (
	select hire_date 
	from employees e2 
	where first_name = 'Tj'
) ;

-- 문제9) 급여가 3000에서 5000사이인 사원의 이름과 소속부서명 출력하라


-- 문제10) ACCOUNTING 부서 소속 사원의 이름과 입사일 출력하라


-- 문제11) 급여가 3000이하인 사원의 이름과 급여, 근무지를 출력하라

