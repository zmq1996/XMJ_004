

--0.管理员表
select *from admin 
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
drop table users 
select * from users;
create table users(
		u_id int primary key,
		u_name varchar2(20) unique,
		u_password varchar2(40),
		u_sex varchar2(4),
		idcard varchar2(18),
		u_phone varchar2(11),
		email varchar2(40),
		u_root Integer , --卖家，买家
		realNameAuthentication int,  --实名认证
		payAuthentication int,		--支付认证
		obligate1 varchar2(20),
		obligate2 varchar2(20)
)
drop sequence users_seq
create sequence users_seq start with 1000
insert into users values(users_seq.nextval,'l44444','l44444',null,null,'15573481252',null,0,0,0,null,null);

--2.地址	
drop table address
create table address(
		addr_id Integer primary key ,
		u_id Integer references users(u_id),
		addr_name varchar2(20),
		introduce varchar2(50),
		u_phone varchar2(11),
		email varchar2(40),
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
select *from address;
drop sequence address_seq ;
create sequence address_seq start with 1000;
insert into ADDRESS values(address_seq.nextval,1000,'儿子丹','湖南工学院','12345678910',null,null,null);
alter table ADDRESS rename column obligate1 to addr_default;
alter table ADDRESS modify addr_default int default 0;
update ADDRESS set addr_default = 1

select addr_id,
		u_id,
		addr_name,
		introduce,
		addr_phone,
		email  
		 from Address where addr_default =1 and  u_id =  ${u_id}
		
--3.店铺
drop table shop
create table shop(
		s_id int primary key,
		s_name varchar2(20) not null unique,
		su_id int references users(u_id),
		majorBusiness varchar2(100),
		address varchar2(100),
		introduce varchar2(200),
		sbirthday varchar2(20),
		sstatus int,
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
delete  shop
select * from shop;
drop sequence shop_seq;
create sequence shop_seq start with 1000;
insert into shop values(shop_seq.nextval,'测试一号',1000,null,null,'用来测试',null,0,null,null);


create sequence se_shop_sid start with 1001 

--4.店铺申请信息表
drop table messages
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
select * from messages;
 

--5.类型表
drop table type
create table type(
		t_id int primary key ,
		t_name varchar2(20) not null,
		t_fid int , --父类型
		obligate1 varchar2(20),
		obligate2 varchar2(20)
)
select * from type ;
create sequence type_seq start with 1000;
insert into type values(type_seq.nextval,'数码设备',null,null,null);
insert into type values(type_seq.nextval,'服装',null,null,null);

insert into type values(type_seq.nextval,'手机',1000,null,null);
insert into type values(type_seq.nextval,'男装',1001,null,null);

--6.商品
select * from product;
drop table product
create table product(
		p_id int primary key ,
		p_name varchar2(20) not null,
		s_id int references shop(s_id),
		t_id int references type(t_id),
		properties varchar2(100),--通过协议协定所有商品属性
		p_stock int, --库存有无
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
drop sequence product_seq;
create sequence product_seq start with 1000;
insert into product values(product_seq.nextval,'一加手机3T (A3010)',1000,1002,null,1,null,null);
update PRODUCT set properties ='路径:/xmj/image/logov2.png,内存:6GB+64GB,颜色:枪灰版,其他:全网通 双卡双待 移动联通电信4G手机,价格:1000.00' where p_id = 1000;
insert into product values(product_seq.nextval,'兰书 卫衣 春季新款',1000,1003,null,1,null,null);
insert into product values(product_seq.nextval,'联想S41-35 14.0英寸笔记本电脑AMD四核轻薄S41-75手提办公娱乐 s41-75 A10-8700 8G 500G银色 2G独显 win10',1000,1002,'路径:/xmj/image/lazyload.gif,款式:A4-7210 4G 500G银色,价格:3000.00',1,null,null);
update PRODUCT set properties ='路径:/xmj/image/lazyload.gif,款式:2017春季新款韩版修身潮拼接连帽卡通绣花套头男士外套,颜色:绿色,尺寸:M,价格:110.00' where p_id = 1001;
alter table product rename column price to obligate1;
alter table product modify p_name varchar2(200);
--协议：路径第一，价格最后，其他在中间

--7.购物车
drop table SHOPPINGBAKCET
create table shoppingBakcet(
		sh_id int primary key,
		u_id int references users(u_id),
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
select * from shoppingbakcet;
select count(1) total,ceil(count(1)/5) totalPage,
		5 pageSize,1 currPage ,1000 u_id from (
select sb.u_id,sb.sh_id,s_date,s_num,p_id,p_name,s_id,t_id,properties from shoppingbakcet sb join 
(select sh_id,s_date,s_num,p.p_id,p_name,s_id,t_id,properties from shdetail st join product p on st.p_id = p.p_id ) st
on sb.sh_id = st.sh_id and u_id = 1000);

select * from
		(select n.*,rownum rn from
		(select * from (select sb.u_id,sb.sh_id,s_date,s_num,p_id,p_name,s_id,t_id,properties from shoppingbakcet sb join 
(select sh_id,s_date,s_num,p.p_id,p_name,s_id,t_id,properties from shdetail st join product p on st.p_id = p.p_id order by  s_date desc) st
on sb.sh_id = st.sh_id ))n where 2 >=rownum)
		where rn>0 and u_id = 1000	and s_num > 0



drop sequence shoppingBakcet_seq ;
create sequence shoppingBakcet_seq start with 1000;
insert into shoppingBakcet values(shoppingBakcet_seq.nextval,1000,null,null);

--8.购物车详情
select *from shdetail;
drop table shdetail
create table shdetail(
		sht_id int primary key,
		sh_id references shoppingBakcet(sh_id),
		p_id references product(p_id),	
		sht_detail varchar2(50),--拼接买家所选的商品属性以确定某件具体商品
		s_date varchar2(20), --加入购物车的时间
		s_num int, --商品数量
		obligate1 varchar2(20),
		obligate2 varchar2(20)
);
drop sequence shdetail_seq;
create sequence shdetail_seq start with 1000;
insert into shdetail values(shdetail_seq.nextval,1000,1000,null,to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),6,null,null);
insert into shdetail values(shdetail_seq.nextval,1000,1021,null,to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),3,null,null);
update shdetail set s_date = to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') where p_id = 1000 and s_num >0;
delete from shdetail where p_id =1021
select sh_id,s_date,s_num,st.p_id,p_name,s_id,t_id,properties from shdetail st join product p on st.p_id = p.p_id order by  s_date desc;
select * from shdetail where p_id = 1000
select * from shdetail  order by  s_date desc


--9.订单
drop table orders
create table orders(
	o_id int primary key,
	u_id int references users(u_id),
	o_date varchar2(20),
	obuy_status int ,--已支付，未支付，已退款，未退款
	osale_status int,--已处理，未处理
	obligate1 varchar2(20),
	obligate2 varchar2(20)
)
select * from orders;
drop sequence orders_seq;
create sequence orders_seq start with 1000;
insert into orders values(orders_seq.nextval,1000,to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),0,0,null,null);

select 1000 u_id ,o_id,u_id,addr_name,introduce,addr_phone,odd_num,o_date,obuy_status,osale_status,p_id,p_name,s_id,t_id,properties from ORDERS o join 
(select odd_id,odd_oid,odd_num,odd_addr_id,p.p_id,p_name,s_id,t_id,properties from ORDERDETAIL od 
join product p on od.p_id = p.p_id) a 
on  o.o_id = a.odd_oid and u_id = 1000
join users u on u.u_id = o.u_id 
join address addr on addr.addr_id = a.odd_addr_id

select sysdate from dual
select to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') from dual; 
update orders set o_date = to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') where o_id = 1000

select o_id currval from orders where u_id = 1000 #{u_id} 

--10.订单详情
drop table ORDERDETAIL
create table orderdetail(
	odd_id int primary key,
	odd_oid int references orders(o_id),
	p_id int references product(p_id),
	odd_detail varchar2(100),--拼接买家所选的商品属性以确定某件具体商品
	odd_num int, --商品数量
	odd_addr_id int references address(addr_id),
	obligate1 varchar2(20),
	obligate2 varchar2(20)
);
select * from orderdetail;
drop sequence orderdetail_seq;
create sequence orderdetail_seq start with 1000;
delete from  ORDERDETAIL;
insert into orderdetail values(orderdetail_seq.nextval,1000,1000,null,1,1000,null,null);
select sh_id,p_id,s_num from SHDETAIL where sh_id = 1000
insert into ORDERDETAIL(odd_id,odd_oid,p_id,odd_num,odd_addr_id) 
	select orderdetail_seq.nextval odd_id,1000 odd_oid,p_id,s_num,sh_id from 
	SHDETAIL shd join orders o on where sh_id = 1000 (
	select o_id from orders where u_id = 1000 
	)

select odd_id,odd_oid,odd_num,p.p_id,p_name,s_id,t_id,properties from ORDERDETAIL od 
join product p on od.p_id = p.p_id ;

--11.评论表
drop table COMMENTS
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

select * from orderdetail;
select * from orders;
select * from shdetail;
select * from shoppingbakcet;
select * from type ;
select * from messages;
select * from shop;
select * from address;
select * from users;
select * from admin ;
select * from product;