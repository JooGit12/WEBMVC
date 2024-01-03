create table jul07_coffee(
	c_name varchar2(10 char) primary key,
	c_price number(5) not null
);

insert into jul07_coffee values('아아', 4000);

select * from jul07_coffee;

-- Node.js와 OracleDB조합 어색
-- SpringMVC프로젝트에서 쓸건데, 굳이 Node.js로 해서
--  Cross-Domain AJAX를 하나...
coffee.get -> json : spring
coffee.reg -> json





