--회원
create table member(
    m_id varchar2(50) primary key,
    m_password varchar2(20) not null,
    m_tel varchar2(13) not null,
    m_birth varchar2(6),
    m_gender varchar2(4)
);
drop table member;
  
--사장님
create table boss(
    b_num varchar2(12) primary key,
    b_id varchar2(20) UNIQUE,
    b_password varchar2(20) not null,
    b_name varchar2(20) not null,
    b_mail varchar2(50) not null,
    b_birth varchar2(6),
    b_tel varchar2(13) not null
);
drop table boss;

--업소
create table food_home(
    f_boss varchar2(12) primary key,
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
--업소 외래키 지정
ALTER TABLE food_home
ADD CONSTRAINT FK_food_home FOREIGN KEY(f_boss) 
references boss(b_num);
--메뉴
create table menu(
    menu_num varchar2(5) primary key,
    menu_name varchar2(20) not null,
    menu_soldout char default 'N',
    menu_price number not null,
    menu_boss varchar2(12) not null,
    menu_img varchar2(100)
);
drop table menu;
ALTER TABLE menu DROP CONSTRAINT FK_menu;
--메뉴 외래키 지정
ALTER TABLE menu
ADD CONSTRAINT FK_menu FOREIGN KEY(menu_boss) 
references food_home(f_boss);
--리뷰
create table review(
    r_num varchar2(5) primary key,
    r_content varchar2(500),
    r_date date,
    r_member varchar2(50) not null,
    r_boss varchar2(12) not null
);
drop table review;
ALTER TABLE review DROP CONSTRAINT fk_review_member;
ALTER TABLE review DROP CONSTRAINT fk_review_boss;
--리뷰 외래키 지정
alter table review
add constraint fk_review_member foreign key(r_member)
references member(m_id);
alter table review
add constraint fk_review_boss foreign key(r_boss)
references food_home(f_boss);
--주문
create table order_list(
    o_num varchar2(5) primary key,
    o_tel varchar2(13) not null,
    o_address varchar2(100) not null,
    o_date date,
    o_request varchar2(500),
    o_money number not null,
    o_member varchar2(50) not null,
    o_boss varchar2(12) not null
);
drop table order_list;
ALTER TABLE order_list DROP CONSTRAINT fk_order_member;
ALTER TABLE order_list DROP CONSTRAINT fk_order_boss;
--주문 외래키 지정  
alter table order_list
add constraint fk_order_member foreign key(o_member)
references member(m_id);
alter table order_list
add constraint fk_order_boss foreign key(o_boss)
references food_home(f_boss);

--리뷰 시퀀스
create SEQUENCE seq_review;
--주문 시퀀스
create SEQUENCE seq_order;
--메뉴 시퀀스
create SEQUENCE seq_menu;

insert into member values ('kxz424@naver.com', '1234', '010-4781-0364', '910424', '남');
insert into boss values ('123-45-67890', 'kxz424', '1234', '김종상', 'kxz424@naver.com', '910424', '010-4781-0364');
insert into food_home values('123-45-67890', '쌀통닭', '서울특별시 송파구 석촌동 120-9', '09', '23', '010-4781-0364', 'Y', '석촌동', '메뉴_쌀통닭.png');
insert into menu values (seq_menu.nextval, '쌀통닭', 'N', 16900, '123-45-67890', '메뉴_쌀통닭.png'







