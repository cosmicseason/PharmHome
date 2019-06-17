create table pharm_user(
userNum NUMBER PRIMARY KEY,
userId  VARCHAR2(100),
userPwd VARCHAR2(100),
userAddr VARCHAR2(300),
userEmail VARCHAR2(200),
userRegdate DATE
);

CREATE SEQUENCE pharm_user_seq;

