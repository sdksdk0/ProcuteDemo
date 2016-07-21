--案例
--通过一个固定的管理员账号和密码登录，进入商品添加界面，商品添加成功之后，自动跳转到商品显示界面

create table product(
       pid number(10) primary key,
       pname varchar2(100),
       price number(10,2),
       stores number(10)

);

create sequence seq_pid start with 1001;

select *from product;