create table pharm_user(
userNum NUMBER PRIMARY KEY,
userId  VARCHAR2(100),
userPwd VARCHAR2(100),
userAddr VARCHAR2(300),
userEmail VARCHAR2(200),
userRegdate DATE
);

CREATE SEQUENCE pharm_user_seq;

create table pharm_qa(
qaNum NUMBER PRIMARY KEY,
qaWriter VARCHAR2(100),
qaTitle VARCHAR2(300),
qaContents VARCAHR2(500),
qaRegdate DATE,
qaViewCount NUMBER
);

create SEQUENCE pharm_qa_seq;

create table pharm_qacomment(
qacmdNum number primary key,
qacmdWriter varchar2(100),
qacmdContent varchar2(300),
qacmdTarget_id varchar2(100),
qacmdRef_group number,
qacmdComment_group number,
qacmdRegdate date,
qacmdProfile varchar2(400)
);

create SEQUENCE pharm_qacomment;

