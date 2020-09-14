-- *****************************************************************************************
-- MEMBER 테이블 삭제
DROP TABLE MEMBER CASCADE CONSTRAINTS;

-- MEMBER 테이블 생성
CREATE TABLE MEMBER (
    UNIQUE_NUM	NUMBER CONSTRAINT UNPK PRIMARY KEY NOT NULL,
    USER_ID	VARCHAR2(30) NOT NULL UNIQUE,
    USER_PWD VARCHAR2(60) NOT NULL,
    NICKNAME	VARCHAR2(30) NOT NULL UNIQUE,
    PHONE VARCHAR2(30) NOT NULL,
    ORIGIN_PROFILE VARCHAR2(200),
    RENAME_PROFILE VARCHAR2(200),
    JOIN_DATE DATE DEFAULT SYSDATE,
    LAST_ACCESS_DATE DATE DEFAULT SYSDATE,
    LOGIN_TYPE VARCHAR2(10),
    LOGIN_LIMIT CHAR(1) DEFAULT 'N' NOT NULL,
    CONSTRAINT L_LIMIT CHECK (LOGIN_LIMIT IN ('Y','N'))
);

-- 시퀀스 삭제
DROP SEQUENCE UNIQUE_NUM_SEQ;
-- 시퀀스 설정
CREATE SEQUENCE UNIQUE_NUM_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCYCLE NOCACHE;

-- MEMBER 컬럼명
COMMENT ON COLUMN MEMBER.UNIQUE_NUM IS '회원번호';
COMMENT ON COLUMN MEMBER.USER_ID IS '아이디(이메일)';
COMMENT ON COLUMN MEMBER.USER_PWD IS '비밀번호';
COMMENT ON COLUMN MEMBER.NICKNAME IS '닉네임';
COMMENT ON COLUMN MEMBER.PHONE IS '핸드폰번호';
COMMENT ON COLUMN MEMBER.ORIGIN_PROFILE IS '프로필이미지 원본이름';
COMMENT ON COLUMN MEMBER.RENAME_PROFILE IS '프로필이미지 새이름';
COMMENT ON COLUMN MEMBER.JOIN_DATE IS '가입일';
COMMENT ON COLUMN MEMBER.LAST_ACCESS_DATE IS '최근접속일';
COMMENT ON COLUMN MEMBER.LOGIN_TYPE IS '로그인타입';
COMMENT ON COLUMN MEMBER.LOGIN_LIMIT IS '로그인제한';


-- MEMBER insert
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'admin@runningdog.com', '$2a$10$kyuLy.TfWFJqAhAhPeO8DeC4zA5VWYnD8TS5BVEg4ETtqq76x.5Fa', '관리자', '010-1111-1111', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'spark1048@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '멍무이', '010-3387-7583', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user01@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '말랑카우', '010-2222-2222', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user02@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '헤쉬그레이', '010-3333-3333', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user03@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '헤쉬브라운', '010-4444-4444', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user04@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '파라오', '010-5555-5555', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user05@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '핑크몽몽', '010-6666-6666', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user06@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '팔랑카', '010-7777-8888', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user07@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '밤톨이', '010-9999-9999', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user08@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '백곰이', '010-1010-1010', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user09@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '양옹이', '010-2020-2020', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user10@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '망망', '010-3030-3030', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user11@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '코코', '010-4040-4040', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user12@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '유이', '010-5050-5050', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user13@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '코로로', '010-6060-6060', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user14@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '센시아', '010-7070-7070', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user15@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '티아라', '010-8080-8080', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user16@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '아이유', '010-9090-9090', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user17@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '벨벳', '010-2121-2121', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user18@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '식빵', '010-3131-3131', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user19@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '시바개', '010-4141-4141', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);
INSERT INTO MEMBER VALUES(UNIQUE_NUM_SEQ.NEXTVAL, 'user20@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '냥냥펀치', '010-5151-5151', '20200914/animalImg03.jpg', '20200914/20200914132404929.jpg', DEFAULT, DEFAULT, null, DEFAULT);


-- LEAVE_MEMBER 테이블 삭제
DROP TABLE LEAVE_MEMBER CASCADE CONSTRAINTS;

-- LEAVE_MEMBER 테이블 생성
CREATE TABLE LEAVE_MEMBER (
    L_UNIQUE_NUM NUMBER NOT NULL,
    L_USER_ID VARCHAR2(30) NOT NULL,
    L_USER_PWD VARCHAR2(60) NOT NULL,
    L_NICKNAME VARCHAR2(30) NOT NULL,
    L_PHONE VARCHAR2(30) NOT NULL,
    L_JOIN_DATE DATE DEFAULT SYSDATE,
    L_LEAVE_DATE DATE DEFAULT SYSDATE,
    L_LOGIN_TYPE VARCHAR2(10)
);

-- LEAVE_MEMBER 컬럼명
COMMENT ON COLUMN LEAVE_MEMBER.L_UNIQUE_NUM IS '회원번호';
COMMENT ON COLUMN LEAVE_MEMBER.L_USER_ID IS '아이디(이메일)';
COMMENT ON COLUMN LEAVE_MEMBER.L_USER_PWD IS '비밀번호';
COMMENT ON COLUMN LEAVE_MEMBER.L_NICKNAME IS '닉네임';
COMMENT ON COLUMN LEAVE_MEMBER.L_PHONE IS '핸드폰번호';
COMMENT ON COLUMN LEAVE_MEMBER.L_JOIN_DATE IS '가입일';
COMMENT ON COLUMN LEAVE_MEMBER.L_LEAVE_DATE IS '탈퇴일';
COMMENT ON COLUMN LEAVE_MEMBER.L_LOGIN_TYPE IS '로그인타입';


-- LEAVE_MEMBER insert
INSERT INTO LEAVE_MEMBER VALUES(3, 'test01@naver.com', '$2a$10$UvlOgRwKqZrsouycemTEpODYD.0gUfI.dT7JqmSYvGQPJiZbjWEea', '한남자', '010-9090-9090', DEFAULT, DEFAULT, '네이버');

COMMIT;
-- *****************************************************************************************

-- 탈퇴 테이블로 보내기 처리
--INSERT INTO LEAVE_MEMBER (L_USER_ID, L_USER_PWD, L_NICKNAME, L_UNIQUE_NUM, L_PHONE, L_JOIN_DATE, L_LOGIN_TYPE)
--SELECT USER_ID, USER_PWD, NICKNAME, UNIQUE_NUM, PHONE, JOIN_DATE, LOGIN_TYPE
--FROM MEMBER
--WHERE UNIQUE_NUM = 2;
--
---- 탈퇴처리
--DELETE FROM MEMBER WHERE UNIQUE_NUM = 2;
--
--COMMIT;

--DBOARD 삭제
DROP TABLE DBOARD CASCADE CONSTRAINTS;
--DBOARD 생성

CREATE TABLE DBOARD (
	D_NUM	NUMBER	NOT NULL,
	USER_ID	VARCHAR2(30)	NOT NULL,
	UNIQUE_NUM	NUMBER	NOT NULL,
	D_WRITER	VARCHAR2(30)	NOT NULL,
	D_TITLE	VARCHAR2(100)	NOT NULL,
	D_CONTENT	VARCHAR2(4000)	NOT NULL,
	D_FIND_DATE	VARCHAR2(20)	NULL,
	D_FIND_LOCAL	VARCHAR2(50)	NULL,
	D_GENDER	CHAR(1)	NOT NULL,
	D_CATEGORY	CHAR(1)	NOT NULL,
	D_LOCAL	 VARCHAR2(10)	 NOT NULL,
	D_PHONE 	VARCHAR2(20)	NOT NULL,
	D_POINT	VARCHAR2(200)	NULL,
	D_DATE	DATE	DEFAULT SYSDATE,
	D_MDATE 	DATE	DEFAULT SYSDATE,
	D_COUNT 	NUMBER	 DEFAULT '0',
	MAP_X	VARCHAR2(30)	NULL,
	MAP_Y	VARCHAR2(30)	NULL,
	D_CHECK 	CHAR(1)  DEFAULT 'y',
	D_SUCCESS	CHAR(1)	DEFAULT 'n',
	ORIGINAL_FILE	VARCHAR2(50)	NULL,
	RENAME_FILE	VARCHAR2(50)	NULL
);

-- 시퀀스 삭제
DROP SEQUENCE DBOARD_NUM_SEQ;
-- 시퀀스 설정
CREATE SEQUENCE DBOARD_NUM_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCYCLE NOCACHE;

-- 권한 설정
ALTER TABLE DBOARD ADD CONSTRAINT D_CHECKD CHECK (D_CHECK IN ('y', 'n'));
ALTER TABLE DBOARD ADD CONSTRAINT D_CHECKSUCCESS CHECK (D_SUCCESS IN ('y', 'n'));
ALTER TABLE DBOARD ADD CONSTRAINT PK_DBOARD PRIMARY KEY (D_NUM);
ALTER TABLE DBOARD ADD CONSTRAINT FK_MEMBER_TO_DBOARD_1 FOREIGN KEY (USER_ID)
REFERENCES MEMBER (USER_ID);
ALTER TABLE DBOARD ADD CONSTRAINT FK_MEMBER_TO_DBOARD_2 FOREIGN KEY (UNIQUE_NUM)
REFERENCES MEMBER (UNIQUE_NUM);
ALTER TABLE DBOARD ADD CONSTRAINT FK_MEMBER_TO_DBOARD_3 FOREIGN KEY (D_WRITER)
REFERENCES MEMBER (NICKNAME);

--DBOARD 컬럼명
COMMENT ON COLUMN DBOARD.D_NUM IS '글번호';
COMMENT ON COLUMN DBOARD.USER_ID IS '유저ID';
COMMENT ON COLUMN DBOARD.UNIQUE_NUM IS '유저번호';
COMMENT ON COLUMN DBOARD.D_WRITER IS '작성자';
COMMENT ON COLUMN DBOARD.D_TITLE IS '글제목';
COMMENT ON COLUMN DBOARD.D_CONTENT IS '상세설명';
COMMENT ON COLUMN DBOARD.D_FIND_DATE IS '발견날짜';
COMMENT ON COLUMN DBOARD.D_FIND_LOCAL IS '발견장소';
COMMENT ON COLUMN DBOARD.D_GENDER IS '성별';
COMMENT ON COLUMN DBOARD.D_CATEGORY IS '반려동물종류';
COMMENT ON COLUMN DBOARD.D_LOCAL IS '지역시번호';
COMMENT ON COLUMN DBOARD.D_PHONE IS '연락처';
COMMENT ON COLUMN DBOARD.D_POINT IS '특징';
COMMENT ON COLUMN DBOARD.D_DATE IS '작성일자';
COMMENT ON COLUMN DBOARD.D_MDATE IS '수정일자';
COMMENT ON COLUMN DBOARD.D_COUNT IS '조회수';
COMMENT ON COLUMN DBOARD.MAP_X IS '경도X';
COMMENT ON COLUMN DBOARD.MAP_Y IS '위도Y';
COMMENT ON COLUMN DBOARD.D_CHECK IS '게시물표시여부';
COMMENT ON COLUMN DBOARD.D_SUCCESS IS '분양여부';
COMMENT ON COLUMN DBOARD.ORIGINAL_FILE IS '사진기존명';
COMMENT ON COLUMN DBOARD.RENAME_FILE IS '사진변경명';

COMMIT;


--DREPLY 삭제
DROP TABLE DREPLY CASCADE CONSTRAINTS;

--DREPLY 테이블 생성
CREATE TABLE DREPLY (
	DRE_NUM	NUMBER	NOT NULL,
	D_NUM	NUMBER	NOT NULL,
	DRE_WRITER	VARCHAR2(30)	NOT NULL,
	DRE_CONTENT	VARCHAR2(1000)	NOT NULL,
	DRE_DATE	DATE	NULL,
	DRE_MDATE	DATE	NULL,
	DRE_PARENTS	NUMBER	NULL,
	DRE_LEVEL	NUMBER	NULL,
	UNIQUE_NUM	NUMBER	NOT NULL
);


-- 시퀀스 삭제
DROP SEQUENCE DRE_NUM_SEQ;
-- 시퀀스 설정
CREATE SEQUENCE DRE_NUM_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCYCLE NOCACHE;

--DREPLY 컬럼명
COMMENT ON COLUMN DREPLY.DRE_NUM IS '댓글번호';
COMMENT ON COLUMN DREPLY.D_NUM IS '게시글번호';
COMMENT ON COLUMN DREPLY.DRE_WRITER IS '댓글작성자';
COMMENT ON COLUMN DREPLY.DRE_CONTENT IS '댓글내용';
COMMENT ON COLUMN DREPLY.DRE_DATE IS '댓글작성일자';
COMMENT ON COLUMN DREPLY.DRE_MDATE IS '댓글수정일자';
COMMENT ON COLUMN DREPLY.DRE_PARENTS IS '부모댓글번호';
COMMENT ON COLUMN DREPLY.DRE_LEVEL IS '댓글레벨';
COMMENT ON COLUMN DREPLY.UNIQUE_NUM IS '회원번호';

ALTER TABLE DREPLY ADD CONSTRAINT PK_DREPLY PRIMARY KEY (DRE_NUM);
ALTER TABLE DREPLY ADD CONSTRAINT FK_DBOARD_TO_DREPLY_1 FOREIGN KEY (D_NUM)
REFERENCES DBOARD (D_NUM);
ALTER TABLE DREPLY ADD CONSTRAINT FK_DBOARD_TO_DREPLY_2 FOREIGN KEY (UNIQUE_NUM)
REFERENCES MEMBER (UNIQUE_NUM);
ALTER TABLE DREPLY ADD CONSTRAINT FK_MEMBER_TO_DREPLY_3 FOREIGN KEY (DRE_WRITER)
REFERENCES MEMBER (NICKNAME);
COMMIT;


-- *****************************************************************************************
-- NOTICE 테이블 삭제
DROP TABLE NOTICE CASCADE CONSTRAINTS;

-- NOTICE 테이블 생성
CREATE TABLE NOTICE (
   NOTICE_NO   NUMBER      NOT NULL,
   NOTICE_WRITER   VARCHAR2(30)      NOT NULL,
   NOTICE_TITLE    VARCHAR2(100)      NOT NULL,
   NOTICE_CONTENT    VARCHAR2(4000)      NOT NULL,
   NOTICE_DATE   DATE   DEFAULT SYSDATE   NOT NULL,
   NOTICE_READCOUNT   NUMBER   DEFAULT 0   NOT NULL,
   NOTICE_STATE    VARCHAR2(10)    NULL,
   NOTICE_ORIGINAL_FILENAME1    VARCHAR2(260)      NULL,
   NOTICE_RENAME_FILENAME1   VARCHAR2(50)      NULL,
   NOTICE_ORIGINAL_FILENAME2    VARCHAR2(260)      NULL,
   NOTICE_RENAME_FILENAME2   VARCHAR2(50)      NULL,
   NOTICE_ORIGINAL_FILENAME3    VARCHAR2(260)      NULL,
   NOTICE_RENAME_FILENAME3   VARCHAR2(50)      NULL
);
-- PK 설정
ALTER TABLE NOTICE ADD CONSTRAINT PK_NOTICE_NO PRIMARY KEY(NOTICE_NO);
-- ALTER TABLE NOTICE DROP CONSTRAINT PK_NOTICE_NO;

-- NOTICE 코멘트
COMMENT ON COLUMN NOTICE.NOTICE_NO IS '글번호';
COMMENT ON COLUMN NOTICE.NOTICE_WRITER IS '작성자닉네임';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '제목';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '내용';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '작성날짜';
COMMENT ON COLUMN NOTICE.NOTICE_READCOUNT IS '조회수';
COMMENT ON COLUMN NOTICE.NOTICE_STATE IS '알림설정';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME1 IS '첨부파일기존명1';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME1 IS '첨부파일변경명1';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME2 IS '첨부파일기존명2';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME2 IS '첨부파일변경명2';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILENAME3 IS '첨부파일기존명3';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILENAME3 IS '첨부파일변경명3';

-- NOTICE TEST INSERT
INSERT INTO NOTICE(NOTICE_NO, NOTICE_WRITER, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, notice_readcount)
VALUES(1, '관리자', '첫번째 공지사항', '첫번째 공지사항 입니다', sysdate, default);
INSERT INTO NOTICE(NOTICE_NO, NOTICE_WRITER, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, notice_readcount)
VALUES(2, '관리자', '두번째 공지사항', '두번째 공지사항 입니다', sysdate, default);

-- FK 설정
-- ALTER TABLE NOTICE ADD CONSTRAINT FK_MEMBER_TO_NOTICE_WRITER FOREIGN KEY(NOTICE_WRITER) REFERENCES MEMBER(NICKNAME); -- 작성자 닉네임으로 FK 설정

COMMIT;


-- sponsor 테이블
drop table sponsor cascade constraints;

create table sponsor (
    s_num number primary key,
    s_id varchar2(30) references member (NICKNAME),
    s_title varchar2(100) not null,
    s_summary varchar2(200) not null,
    s_content varchar2(4000) not null,
    s_date date default sysdate,
    s_amount number not null,
    s_current number not null,
    s_original varchar2(50),
    s_rename varchar2(50)
);

comment on column sponsor.s_num is '글번호';
comment on column sponsor.s_id is '관리자 닉네임';
comment on column sponsor.s_title is '제목';
comment on column sponsor.s_summary is '요약설명';
comment on column sponsor.s_content is '내용';
comment on column sponsor.s_date is '작성일';
comment on column sponsor.s_amount is '목표금액';
comment on column sponsor.s_current is '모집금액';
comment on column sponsor.s_original is '오리지널 썸네일';
comment on column sponsor.s_rename is '리네임 썸네일';

COMMIT;
-------------------------- CHATTING -------------------------------
DROP TABLE "CHATROOM";
DROP TABLE "MESSAGE";
DROP SEQUENCE "ROOM_SEQ";
DROP SEQUENCE "MESSAGE_SEQ";

CREATE SEQUENCE "ROOM_SEQ"
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOMAXVALUE
NOCYCLE 
NOCACHE;

CREATE SEQUENCE "MESSAGE_SEQ"
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOMAXVALUE
NOCYCLE 
NOCACHE;

CREATE TABLE "CHATROOM" (
   "ROOMNO"   NUMBER      NOT NULL,
   "MEMBERNO"   NUMBER   NOT NULL,
   "LASTMESSAGE"   VARCHAR2(500),
   "NICKNAME"   VARCHAR2(30)    NOT NULL,
   "LASTDATE"   DATE    DEFAULT SYSDATE NOT NULL
);

CREATE TABLE "MESSAGE" (
    "MESSAGENO" NUMBER  NOT NULL,
    "ROOMNO"   NUMBER      NOT NULL,
    "SENDER"    NUMBER    NOT NULL,
    "RECEIVER"  NUMBER    NOT NULL,
    "SENDTIME"  DATE    DEFAULT SYSDATE NOT NULL,
    "CONTENT"   VARCHAR2(500) NOT NULL
);

COMMENT ON COLUMN "CHATROOM"."ROOMNO" IS '채팅방 번호';

COMMENT ON COLUMN "CHATROOM"."MEMBERNO" IS '채팅방 멤버';

COMMENT ON COLUMN "CHATROOM"."LASTDATE" IS '마지막 수정 날짜';

COMMENT ON COLUMN "MESSAGE"."MESSAGENO" IS '메세지 번호';

COMMENT ON COLUMN "MESSAGE"."ROOMNO" IS '채팅방 번호';

COMMENT ON COLUMN "MESSAGE"."SENDER" IS '송신자';

COMMENT ON COLUMN "MESSAGE"."RECEIVER" IS '수신자';

COMMENT ON COLUMN "MESSAGE"."SENDTIME" IS '메세지 전송 시각';

COMMENT ON COLUMN "MESSAGE"."CONTENT" IS '메세지 내용';

ALTER TABLE "CHATROOM" ADD CONSTRAINT "PK_CHATROOM" PRIMARY KEY (
   "ROOMNO",
   "MEMBERNO"
);

ALTER TABLE "MESSAGE" ADD CONSTRAINT "PK_MESSAGE" PRIMARY KEY (
   "MESSAGENO"
);

ALTER TABLE "CHATROOM" ADD CONSTRAINT "FK_MEMBER_TO_CHATROOM" FOREIGN KEY ("MEMBERNO")
REFERENCES "MEMBER" ("UNIQUE_NUM") ON DELETE CASCADE ENABLE;

COMMIT;

--------------------------------------------------------------------------------------------



DROP TABLE VOLUNTEER CASCADE CONSTRAINTS;

CREATE TABLE VOLUNTEER (
	"VOLNO"	NUMBER		NOT NULL,
	"VOLTITLE"	VARCHAR2(100)		NOT NULL,
	"VOLWRITER"	VARCHAR2(100),
	"VOLCONTENT"	VARCHAR2(4000),
	"VOLDATE"	DATE	DEFAULT SYSDATE,
	"VOLTEL"	VARCHAR2(50),
	"VOLTERM"	VARCHAR2(100),
	"VOLNAME"	VARCHAR2(200),
	"VOLOR1"	VARCHAR2(100),
	"VOLRE1"	VARCHAR2(100),
	"VOLOR2"	VARCHAR2(100),
	"VOLRE2"	VARCHAR2(100),
	"VOLOR3"	VARCHAR2(100),
	"VOLRE3"	VARCHAR2(100),
	"VOLADDRESS"	VARCHAR2(200),
	"VOLCHE"	CHAR(1)	DEFAULT 'Y' ,
    CONSTRAINT VCHE CHECK (VOLCHE IN ('Y','N')),
    CONSTRAINT "PK_VOLUNTEER" PRIMARY KEY ("VOLNO")
);

COMMENT ON COLUMN "VOLUNTEER"."VOLNO" IS '글번호';
COMMENT ON COLUMN "VOLUNTEER"."VOLTITLE" IS '글제목';
COMMENT ON COLUMN "VOLUNTEER"."VOLWRITER" IS '담당자';
COMMENT ON COLUMN "VOLUNTEER"."VOLCONTENT" IS '내용';
COMMENT ON COLUMN "VOLUNTEER"."VOLDATE" IS '작성일';
COMMENT ON COLUMN "VOLUNTEER"."VOLTEL" IS '번호(연락처)';
COMMENT ON COLUMN "VOLUNTEER"."VOLTERM" IS '봉사기간설정';
COMMENT ON COLUMN "VOLUNTEER"."VOLNAME" IS '센터명';
COMMENT ON COLUMN "VOLUNTEER"."VOLOR1" IS '첨부파일기존명1';
COMMENT ON COLUMN "VOLUNTEER"."VOLRE1" IS '첨부파일변경명1';
COMMENT ON COLUMN "VOLUNTEER"."VOLOR2" IS '첨부파일기존명2';
COMMENT ON COLUMN "VOLUNTEER"."VOLRE2" IS '첨부파일변경명2';
COMMENT ON COLUMN "VOLUNTEER"."VOLOR3" IS '첨부파일기존명3';
COMMENT ON COLUMN "VOLUNTEER"."VOLRE3" IS '첨부파일변경명3';
COMMENT ON COLUMN "VOLUNTEER"."VOLADDRESS" IS '주소명';
COMMENT ON COLUMN "VOLUNTEER"."VOLCHE" IS '모집표시';

COMMIT;

-- INSERT VOLUNTEER
INSERT INTO VOLUNTEER(VOLNO, VOLTITLE, VOLWRITER, VOLCONTENT, VOLDATE, VOLTEL, VOLTERM, VOLNAME, VOLADDRESS, VOLCHE)
VALUES(1, '도움이 필요합니다', '이선희', '버려진 유기견들과 유기묘들에게 사랑과 관심이 필요합니다.', SYSDATE, '010-6666-9999', '20200801-20200901', '수지사랑이네', '경기도 용인시', DEFAULT);
INSERT INTO VOLUNTEER(VOLNO, VOLTITLE, VOLWRITER, VOLCONTENT, VOLDATE, VOLTEL, VOLTERM, VOLNAME, VOLADDRESS, VOLCHE)
VALUES(2, '손길이 필요합니다', '박정현', '아이들에게 사료주는 일과 목욕시켜주는 일 등 다양한 도움이 간절히 필요합니다.', SYSDATE, '010-2222-3333', '20200701-20200901', '광주나눔', '경기도 광주시', DEFAULT);
INSERT INTO VOLUNTEER(VOLNO, VOLTITLE, VOLWRITER, VOLCONTENT, VOLDATE, VOLTEL, VOLTERM, VOLNAME, VOLADDRESS, VOLCHE)
VALUES(3, '사랑이 필요합니다', '박효신', '버려진 유기견들과 유기묘들이 사랑과 관심이 필요합니다.', SYSDATE, '010-1111-2222', '20200801-20200901', '담양이네', '경기도 화성시', DEFAULT);
INSERT INTO VOLUNTEER(VOLNO, VOLTITLE, VOLWRITER, VOLCONTENT, VOLDATE, VOLTEL, VOLNAME, VOLADDRESS, VOLCHE)
VALUES(4, '관심이 필요합니다', '참사랑', '지속적인 관심으로 돌봐줄 장기봉사자들을 모집합니다.', SYSDATE, '010-5454-6232', '한나네', '경기도 하남시', DEFAULT);
INSERT INTO VOLUNTEER(VOLNO, VOLTITLE, VOLWRITER, VOLCONTENT, VOLDATE, VOLTEL, VOLTERM, VOLNAME, VOLADDRESS, VOLCHE)
VALUES(5, '도움이 필요합니다', '공효진', '갓 태어난 아기강아지들을 사랑으로 보살펴주실 봉사자들 모집합니다. .', SYSDATE, '010-1234-4321', '20200801-20200901', '과천보호센터', '경기도 과천시', DEFAULT);
INSERT INTO VOLUNTEER(VOLNO, VOLTITLE, VOLWRITER, VOLCONTENT, VOLDATE, VOLTEL, VOLNAME, VOLADDRESS, VOLCHE)
VALUES(6, '도움의 손길로 다가와주실 분을 모집합니다.', '나유연', '혼자서 운영하고 있습니다. 도와줄 이들이 간절히 필요합니다. 마음있으신 분들 연락주세요.', SYSDATE, '010-6666-7777', '사랑이네', '경기도 남양주시', DEFAULT);

COMMIT;

DROP TABLE VREPLY CASCADE CONSTRAINTS;

CREATE TABLE "VREPLY" (
	"VREPLY_NO"	NUMBER		NOT NULL,
	"VOLNO"	NUMBER		NOT NULL,
	"NICKNAME"	VARCHAR2(30) NOT NULL,
	"VREPLY_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"VREPLY_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"PARANT_REPLY"	NUMBER		NULL,
	"VREPLY_LEVEL"	NUMBER		NULL
);
COMMENT ON COLUMN "VREPLY"."VREPLY_NO" IS '댓글번호';
COMMENT ON COLUMN "VREPLY"."VOLNO" IS '글번호';
COMMENT ON COLUMN "VREPLY"."NICKNAME" IS '닉네임';
COMMENT ON COLUMN "VREPLY"."VREPLY_DATE" IS '작성일';
COMMENT ON COLUMN "VREPLY"."VREPLY_CONTENT" IS '댓글내용';
COMMENT ON COLUMN "VREPLY"."PARANT_REPLY" IS '부모댓글번호';
COMMENT ON COLUMN "VREPLY"."VREPLY_LEVEL" IS '댓글레벨';

ALTER TABLE "VREPLY" ADD CONSTRAINT "PK_VREPLY" PRIMARY KEY ("VREPLY_NO");
ALTER TABLE "VREPLY" ADD CONSTRAINT "FK_VREPLY_NO" FOREIGN KEY ("VOLNO")REFERENCES "VOLUNTEER" ("VOLNO") ON DELETE CASCADE ENABLE;
ALTER TABLE "VREPLY" ADD CONSTRAINT "FK_VREPLY_N" FOREIGN KEY ("NICKNAME")REFERENCES "MEMBER" ("NICKNAME") ON DELETE CASCADE ENABLE;

--시퀀스 삭제
DROP SEQUENCE VREPLY_SEQ;
--시퀀스 설정
CREATE SEQUENCE VREPLY_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCYCLE NOCACHE;

--INSERT VREPLY
INSERT INTO VREPLY(VREPLY_NO, VOLNO, NICKNAME, VREPLY_DATE, VREPLY_CONTENT)
VALUES(VREPLY_SEQ.NEXTVAL, 1, '멍무이', DEFAULT, '혹시 그곳에 단체로 봉사를 신청해도 되나요?');
INSERT INTO VREPLY(VREPLY_NO, VOLNO, NICKNAME, VREPLY_DATE, VREPLY_CONTENT)
VALUES(VREPLY_SEQ.NEXTVAL, 2, '멍무이', DEFAULT, '아이들이랑 같이 방문해서 돕고 싶네요');


COMMIT;