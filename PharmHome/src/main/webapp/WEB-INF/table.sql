create table pharm_user(
userNum NUMBER PRIMARY KEY,
userId  VARCHAR2(100),
userPwd VARCHAR2(100),
userAddr VARCHAR2(300),
userEmail VARCHAR2(200),
userRegdate DATE
);

CREATE SEQUENCE pharm_user_seq;

create table pharm_blog_qa(
qaNum NUMBER PRIMARY KEY,
qaWriter VARCHAR2(100),
qaTitle VARCHAR2(300),
qaContents VARCAHR2(500),
qaRegdate DATE,
qaViewCount NUMBER
);

create SEQUENCE pharm_blog_qa_seq;

