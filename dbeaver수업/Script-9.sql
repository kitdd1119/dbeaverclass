-- 데이터 입력 
use hr;
insert into regions 
values (1000, 'Moon');

insert into regions(region_id)
values(6);

-- 데이터 수정
update regions 
set regions_name = 'Mars';
where region_id = 6;

update regions 
set region_name = 'Mars', region_id = 7
where region_id - 6;

-- 데이터 삭제
update from regions 
where region_id = 5;










