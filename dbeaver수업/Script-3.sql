
-- employees 테이블에서 부서 번호를 뽑아줘
select department_id from employees group by department_id ;

-- distinct는 select에서 컬럼의 중복을 제거한다.
select distinct department_id from employees ;

-- 직원들 first_name과 이메일을 뽑자
-- concat은 문자열을 더한다.
select first_name, concat(email, '@test.com') as 이메일  from employees;


-- 1999-01-01 ~ 1999-12-31 사이에 입사한 사람
select * from employees where hire_date
-- between을 사용하면 a이상 b이하의 범위 검색이 가능하다.
between '1999-01-01' and '1999-12-31';

-- 부서가 IT_PROG, FI_ACCOUNT인 사원 정보 조회
select * from employees where job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT'; 

select * from employees where job_id in ('IT_PROG', 'FI_ACCOUNT'); 


-- first_name이 S로 시작하는 사원
select * from employees where first_name like 'S%';
-- first_name이 B로 시작하는 사원
select * from employees where first_name like 'B%';
-- first_name이 S로 시작하는 사원, last_name이 D로 시작하는 사원
select * from employees where first_name like 'S%' and last_name like 'B%';

-- union은 값이 중복되면 1개로 합친다.
select * from employees where first_name like 'S%' union
select * from employees where first_name like 'B%';

-- union all은 값이 중복되어도 출력함.
select * from employees where first_name like 'S%' union all
select * from employees where first_name like 'B%';


-- 커미션이 null이면 0으로 바꾸고 싶다.
-- if(조건, 참결과, 거짓결과)
select first_name , if(commission_pct is null, 0, commission_pct)  from employees;


-- 문자 함수
-- SQL에서는 문자열 등 배열의 시작이 0이 아니라 1입니다.
-- substring(문자열, 시작위치, 개수)
select first_name , substring(phone_number, 1, 5) from employees;


-- replace(문자열, 치환될 문자, 치환할 문자)
select first_name , replace(phone_number, '515', '010') from employees;


-- 문자열 대문자로 표기
select upper(first_name)  from employees;


-- 숫자 함수

-- dual은 더미테이블이고, 연습용 테이블로 테스트 용도로 사용한다.
select round(1.5) from dual;

select truncate(1.5, 0) from dual; 





