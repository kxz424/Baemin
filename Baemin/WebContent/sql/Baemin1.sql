--회원
create table member(
    m_id varchar2(50),
    m_password varchar2(20),
    m_tel varchar2(13),
    m_birth varchar2(8),
    m_gender varchar2(10),
    constraint pk_member_id primary key(m_id)
);
  
--사장님
create table boss(
    b_num varchar2(12),
    b_id varchar2(20) UNIQUE,
    b_password varchar2(20),
    b_name varchar2(20),
    b_mail varchar2(50),
    b_birth varchar2(8),
    b_tel varchar2(13),
    constraint pk_boss_num primary key(b_num)
);

--업소
create table food_home(
    f_boss varchar2(12),
    f_name varchar2(20),
    f_location varchar2(100),
    f_open varchar2(5),
    f_close varchar2(5),
    f_tel varchar2(13),
    f_ing char default 'Y',
    f_category varchar2(10),
    f_img varchar2(100),
    constraint pk_foodhome_boss primary key(f_boss),
    constraint fk_foodhome foreign key(f_boss) references boss(b_num)
);

--메뉴
create table menu(
    menu_num varchar2(5),
    menu_name varchar2(20),
    menu_soldout char default 'N',
    menu_price number,
    menu_food varchar2(12),
    menu_img varchar2(100),
    constraint pk_menu_num primary key(menu_num),
    constraint fk_menu_food foreign key(menu_food) references food_home(f_boss)
);

--리뷰
create table review(
    r_num varchar2(5),
    r_content varchar2(500),
    r_date date,
    r_member varchar2(50),
    r_food varchar2(12),
    constraint pk_review_num primary key(r_num),
    constraint fk_review_food foreign key(r_food) references food_home(f_boss),
    constraint fk_review_member foreign key(r_member) references member(m_id)
);

--주문
create table order_list(
    o_num varchar2(5),
    o_tel varchar2(13),
    o_address varchar2(100),
    o_date date,
    o_request varchar2(500),
    o_money number,
    o_member varchar2(50),
    o_food varchar2(12),
    constraint pk_order_num primary key(o_num),
    constraint fk_order_food foreign key(o_food) references food_home(f_boss),
    constraint fk_order_member foreign key(o_member) references member(m_id)
);

--리뷰 시퀀스
create SEQUENCE seq_review;
--주문 시퀀스
create SEQUENCE seq_order;
--메뉴 시퀀스
create SEQUENCE seq_menu;


drop table order_list;
drop table review;
drop table menu;
drop table food_home;
drop table boss;
drop table member;