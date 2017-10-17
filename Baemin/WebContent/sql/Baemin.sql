--ȸ��
create table member(
    m_id varchar2(50) primary key,
    m_password varchar2(20) not null,
    m_tel varchar2(13) not null,
    m_birth varchar2(6),
    m_gender varchar2(4)
);
drop table member;

--�����
create table boss(
    b_num varchar2(10) primary key,
    b_id varchar2(20) UNIQUE,
    b_password varchar2(20) not null,
    b_name varchar2(20) not null,
    b_mail varchar2(50) not null,
    b_birth varchar2(6),
    b_tel varchar2(13) not null
);
drop table boss;

--����
create table food_home(
    f_boss varchar2(10) primary key,
    f_name varchar2(20) not null,
    f_location varchar2(100) not null,
    f_open varchar2(5),
    f_close varchar2(5),
    f_tel varchar2(13) not null,
    f_ing char default 'Y',
    f_category varchar2(10) not null,
    f_img varchar2(100)
);
drop table food_home;
ALTER TABLE food_home DROP CONSTRAINT FK_food_home;
--���� �ܷ�Ű ����
ALTER TABLE food_home
ADD CONSTRAINT FK_food_home FOREIGN KEY(f_boss) 
references boss(b_num);
--�޴�
create table menu(
    menu_num varchar2(5) primary key,
    menu_name varchar2(20) not null,
    menu_soldout char default 'N',
    menu_price number not null,
    menu_boss varchar2(10) not null,
    menu_img varchar2(100)
);
drop table menu;
ALTER TABLE menu DROP CONSTRAINT FK_menu;
--�޴� �ܷ�Ű ����
ALTER TABLE menu
ADD CONSTRAINT FK_menu FOREIGN KEY(menu_boss) 
references food_home(f_boss);
--����
create table review(
    r_num varchar2(5) primary key,
    r_content varchar2(500),
    r_date date,
    r_member varchar2(50) not null,
    r_boss varchar2(10) not null
);
drop table review;
ALTER TABLE review DROP CONSTRAINT fk_review_member;
ALTER TABLE review DROP CONSTRAINT fk_review_boss;
--���� �ܷ�Ű ����
alter table review
add constraint fk_review_member foreign key(r_member)
references member(m_id);
alter table review
add constraint fk_review_boss foreign key(r_boss)
references food_home(f_boss);
--�ֹ�
create table order_list(
    o_num varchar2(5) primary key,
    o_tel varchar2(13) not null,
    o_address varchar2(100) not null,
    o_date date,
    o_request varchar2(500),
    o_money number not null,
    o_member varchar2(50) not null,
    o_boss varchar2(10) not null
);
drop table order_list;
ALTER TABLE order_list DROP CONSTRAINT fk_order_member;
ALTER TABLE order_list DROP CONSTRAINT fk_order_boss;
--�ֹ� �ܷ�Ű ����
alter table order_list
add constraint fk_order_member foreign key(o_member)
references member(m_id);
alter table order_list
add constraint fk_order_boss foreign key(o_boss)
references food_home(f_boss);

