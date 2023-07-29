-- 대륙 REGIONS
-- 나라 COUNTRIES
-- 도시 LOCATIONS
-- 직원 EMPLOYEES
-- 부서 DEPARTMENTS
-- 직업 JOBS
-- 직업 변동 내역 JOB_HISTORY

-- 1. 모든 사원의 이름(FIRST_NAME, LAST_NAME)을 조회하라.
select first_name, last_name  from employees;
-- 2. 모든 사원의 모든 정보를 조회하라.
select * from employees;
-- 3. 모든 도시 명을 조회하라.
select city from locations;
-- 4. 이름(FIRST_NAME)이 M 으로 시작하는 사원의 모든 정보를 조회하라.
select * from employees where first_name like 'M%';
-- 5. 이름(FIRST_NAME)의 두 번째 글자가 'a'인 사원의 이름(FIRST_NAME)과 연봉을 조회하라. (위치 생략 _ 이용)
select first_name, salary from employees where first_name like '_a%';
-- 6. 도시 명을 오름차순 정렬하라.
select city from locations order by city; 
-- 7. 부서 명을 내림차순 정렬하라.
select department_name from departments order by department_name desc;
-- 8. 연봉이 7000 이상인 사원들의 모든 정보를 연봉순(오름차순)으로 정렬하라.
select * from employees where salary >= 7000 order by salary asc; 
-- 9. 인센티브(COMMISSION_PCT)를 받지 않는 사원들의 모든 정보를 조회하라.
select * from employees where commission_pct is null;
-- 10. 인센티브(COMMISSION_PCT)를 받는 사원들의 모든 정보를 조회하라.
select * from employees where commission_pct is not null and commission_pct != 0;
-- 11. 2007년 06월 21일에 입사한 사원의 사원번호, 이름(FIRST_NAME, LAST_NAME) 그리고 부서번호를 조회하라.
select * from employees where hire_date = '2000-02-06';
-- 14. 부서번호별 사원수를 조회하라. (부서번호 오름차순 정렬)

-- 15. 직무 아이디별 평균 연봉을 조회하라. (직무 아이디 내림차순 정렬)
