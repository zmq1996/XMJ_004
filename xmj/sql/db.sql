

--0.管理员表
create table Admin(
		a_id Integer primary key,
		a_name varchar2(20),
		a_password varchar2(40),
		a_root Integer ,
		obligate1 varchar2(20),--电话
		obligate2 varchar2(20)
);
alter table Admin rename column obligate1 to tel
create sequence seq_admin start with 1001;
insert into ADMIN values(seq_admin.nextval,'张三','abc',0,null,null);
insert into ADMIN values(seq_admin.nextval,'lisi','abc',1,null,null);
--1.用户表
drop table users cascade constraints;
select * from users
create table users(
		u_id integer primary key,
		u_name varchar2(20),
		u_password varchar2(40),
		u_sex varchar2(4),
		idcard varchar2(18),
		u_phone varchar2(11),
		email varchar2(40),
		u_root Integer check(u_root<1), --卖家，买家
		realNameAuthentication integer,  --实名认证
		payAuthentication integer,		--支付认证
		obligate1 varchar2(20),
		obligate2 varchar2(20)
)
update users set u_root=0 where u_id=1001;
insert into users (u_id,u_name) values(1001,'xiaodansfather');

alter table users rename column obligate2 to payAuthentication
alter table users modify realNameAuthentication integer
update users set u_name='liujiasfather',u_password=null,u_sex=null,
		idcard=null,u_phone=null,email=null,u_root=0,realNameAuthentication=0,payAuthentication=0
		where u_id=1001

--2.地址	

create table address(
		addr_id Integer primary key ,
		introduce varchar2(50),
		u_id Integer references users(u_id),
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
select
--3.店铺
create table shop(
		sid int primary key,
		sname varchar2(20) not null unique,
		suid int references users(u_id),
		majorBusiness varchar2(100),
		address varchar2(100),
		introduce varchar2(200),
		sbirthday date,
		sstatus int,
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
delete  shop
select * from shop
update shop set sid =12345 where sid=1029
drop table shop cascade constraints;
select se_shop_sid.nextval current_sid from dual

create sequence se_shop_sid start with 1001 

--4.店铺申请信息表
create table messages(
		m_id int primary key,
		speaker int ,
		listener int ,
		m_type int ,
		m_rsn varchar2(100) not null,
		m_date varchar2(20),
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);


--5.类型表

create table type(
		t_id int primary key ,
		t_name varchar2(20) not null,
		t_fid int , --父类型
		obligate1 varchar2(20),
		obligate2 varchar2(20)
)

--6.商品
create table product(
		p_id int primary key ,
		p_name varchar2(20) not null,
		s_id int references shop(s_id),
		t_id int references type(t_id),
		properties varchar2(100),--通过协议协定所有商品属性
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);

--7.购物车
create table shoppingBakcet(
		sh_id int primary key,
		u_id int references users(u_id),
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);

--8.购物车详情
create table shdetail(
		sht_id int primary key,
		sh_id references shoppingBakcet(sh_id),
		p_id references product(p_id),	
		sht_detail varchar2(50),--拼接买家所选的商品属性以确定某件具体商品
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);

--9.订单
create table order(
	o_id int primary key,
	u_id int references users(u_id),
	date varchar2(20),
	obuy_status int ,--已支付，未支付，已退款，未退款
	osale_status int,--已处理，未处理
	obligate1 varchar2(20),
	obligate2 varchar2(20)
);

--10.订单详情
create table orderdetail(
	odd_id int primary key,
	p_id int references product(p_id),
	odd_detail varchar2(100),--拼接买家所选的商品属性以确定某件具体商品
	obligate1 varchar2(20),
	obligate2 varchar2(20)
);

--11.评论表
create table comments(
	com_id int primary key,
	u_id references users(u_id), 
	f_id int ,
	content varchar2(100),
	com_type int ,
	com_date varchar2(20),
	obligate1 varchar2(20),
	obligate2 varchar2(20)
);

select * from type;
select * from messages
select * from shop;
select * from address;
select * from users;
select * from ADMIN;
sele
