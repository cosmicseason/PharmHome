CREATE SEQUENCE board_file_seq;

create table pharm_user(
user_num NUMBER PRIMARY KEY,
id	VARCHAR2(100),
pwd VARCHAR2(100),
addr VARCHAR2(300),
email VARCHAR2(200),
regdate DATE
);

CREATE SEQUESNCE pharm_user_seq;

