-- employees 테이블에서 employees-id가 10 이상인 직원에 대해 job_id별로 그룹화하여
-- job_id별 총 급여와 평균 급여를 구하고, job_id별 총 급여를 기준으로 내림차순 정렬

select job_id, sum(salary) as 총급여, avg(salary)  
from employees where employee_id >= 10
group by job_id 
-- 별명을 컬럼명 대신 사용할 수 있다.
order by 총급여 desc;

-- SQL 작동 순서

-- 5
select * 
-- 1
from employees
-- 2
where employee_id > 0
-- 3
group by manager_id 
-- 4
having manager_id is not null 
-- 6
order by first_name;






