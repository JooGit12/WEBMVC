create table jun26_snack(
	s_name varchar2(10 char) primary key,
	s_price number(4) not null
);
insert into jun26_snack values('양파링', 5000);
select * from jun26_snack;


create table jun27_menu(
	m_name varchar2(10 char) primary key,
	m_price number(5) not null
);
insert into jun27_menu values('참치비빔밥', 6500);
select * from jun27_menu;


