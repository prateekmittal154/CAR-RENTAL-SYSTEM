create table userinfo( 
user_id varchar2(100) primary key, 
user_name varchar2(100) NOT NULL, 
user_email varchar2(100) NOT NULL, 
user_phoneno number(10) NOT NULL, 
user_gender varchar2(10) NOT NULL, 
created_date timestamp);


create table useridpss( 
passwd_id number primary key  NOT NULL, 
user_id varchar2(100) references userinfo(user_id), 
user_passwd varchar2 (30) unique);
