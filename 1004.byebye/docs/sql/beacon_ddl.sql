DROP TABLE BEACON CASCADE CONSTRAINTS;

CREATE TABLE BEACON (
	B_IDX NUMBER(11),	/*비콘 게시 번호 */
	B_ID VARCHAR2(100) NOT NULL, /* 비콘아이디 */
	B_SPOTNAME VARCHAR2(100), /* 비콘장소명 */
	B_LOCACTION VARCHAR2(100), /* 비콘장소위치 */
	B_PAGE VARCHAR2(100), /* 비콘페이지 */
	CONSTRAINT PK_BEACON PRIMARY KEY(B_IDX)
);

insert into BEACON 
values(seq_beacon.nextval, 'test1', '롯데월드', '정문매표소', 'http://www.lotteworld.com/');

insert into BEACON 
values(seq_beacon.nextval, 'test2', '삼육대', '제1실 403호', 'http://www.syu.ac.kr/');

create sequence seq_beacon
  start with 1
  increment BY 1
;

select * from beacon;

delete from BEACON where b_id='22';

select * from beacon where b_id = 'FF:C9:DD:C2:19:2E';