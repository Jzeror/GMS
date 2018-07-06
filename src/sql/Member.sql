select * from member;
-- member
-- userid,pass, name,ssn,regidate
-- addr_seq,phone,email,profile, access_num
-- credit_rating


--조인
--*대신 보고 싶은 것만 넣어두 됨.
SELECT* 
FROM member, account
WHERE member.account_seq = account.account_seq
AND member.userid = 'Kim'
;


SELECT userid, name, account_num, city
FROM member m, account ac, address ad
WHERE m.account_seq = ac.account_seq
AND m.userid = 'Lee'
AND m.addr_seq = ad.addr_seq 
;


SELECT * FROM member;

DROP TABLE member;

ALTER TABLE member ADD CONSTRAINT address_fk_addr_seq
    FOREIGN KEY addr_seq REFERENCES address(addr_seq);

CREATE TABLE member(
    userid VARCHAR2(20) CONSTRAINT member_pk_userid PRIMARY KEY,
    pass VARCHAR2(20),
    name VARCHAR2(20), 
    ssn VARCHAR2(8),
    regidate date,
    phone VARCHAR2(13),
    email VARCHAR2(20),
    profile VARCHAR2(8),
    access_num VARCHAR2(8),
    create_rating DECIMAL,
    addr_seq DECIMAL,
    account_seq DECIMAL
);
--userid, pass, name, ssn, regidate, phone, email, profile,access_num, create_rating, addr_seq , account_seq
INSERT INTO member
(
	userid, pass, name, ssn, regidate,
	phone, email, profile,access_num,create_rating,
	addr_seq , account_seq
) 
VALUES
(
	'Kim', '1', '김유신', '900101-1', SYSDATE,
	'010-4784-5784', 'backhome@naver.com', 'kim.jpg','',5,
	2000 , 1000
);
INSERT INTO member
(
	userid, pass, name, ssn, regidate,
	phone, email, profile,access_num,create_rating,
	addr_seq , account_seq
) 
VALUES
(
	'Lee', '1', '이순신', '890302-1', SYSDATE,
	'010-2944-9818', 'donttell@naver.com', 'lee.jpg','',5,
	2001 , 1001
);
INSERT INTO member
VALUES
(
	'Cha', '1', '차범근', '530522-1', SYSDATE,
	'010-6678-4574', 'chabum@gmail.com', 'cha.jpg','',5,
	2002, 1002
);
INSERT INTO member
VALUES
(
	'Ho', '1', '호날두', '850205-1', SYSDATE,
	'010-5505-0247', 'naldo@gmail.com', 'Hou.jpg', '' ,5,
	2003,1003
);
INSERT INTO member
VALUES
(
	'Bang', '1', '방덕배', '910628-1', SYSDATE,
	'010-9877-5455', 'Attack@mancity.com','Bang.jpg','',5,
	2004,1004
);
INSERT INTO member
VALUES
(
	'Iu', '1', '이지은', '930516-2', SYSDATE,
	'010-6565-8421', 'youandI@iu.com','Iu.jpg','',5,
	2005,1005
);
INSERT INTO member
VALUES
(
	'Son','1', '손나은', '940210-2', SYSDATE,
	'010-3303-0304', 'Apink@pink.com', 'Son.jpg','',5,
	2006,1006
);
INSERT INTO member
VALUES
(
	'Jo','1', '조성모', '770311-1', SYSDATE,
	'010-6980-0021', 'heaven@gotohell.com', 'Jo.jpg','',5,
	2007,1007
);
INSERT INTO member
VALUES(
	'Mun','1','문재인', '530124-1', SYSDATE,
	'010-1004-4989', 'blue@house.com', 'Mun', '',5,
	2008,1008
);
INSERT INTO member
VALUES(
	'Kim1','1','김일성', '120415-1', SYSDATE,
	'010-8744-8774', 'all@mighty.com', 'Kim1', '',5,
	2009,1009
);


