show tables;

desc guestbook;

-- insert
insert into guestbook values(null, '백성문', '1234', 'ㅎㅇ', now());

-- select
select no, name, password, date_format(reg_date, '%Y/%m/%d %H:%i:%s') as reg_date, message from guestbook order by reg_date desc;

-- delete
delete from guestbook where no = 1 and password = '1234';