-- TAB: address
-- addr_seq (DECIMAL, pk(PRIMARY KEY))
-- zipcode (아무말도 안하면 VARCHAR(20))
-- province 경기도
-- city
-- gugun 구,군
-- doro 백범로 15번길

SELECT * FROM tab;
DROP TABLE address;
SELECT * FROM address;
DROP SEQUENCE addr_seq;
CREATE SEQUENCE addr_seq START WITH 2000;

CREATE TABLE address(
	addr_seq DECIMAL PRIMARY KEY,
	zipcode VARCHAR2(20),
	province VARCHAR2(20),
	city VARCHAR2(20),
	gugun VARCHAR2(20),
	doro VARCHAR2(20)	
);

INSERT INTO address(
addr_seq, zipcode, province, city, gugun, doro
) VALUES(
addr_seq.nextval, '05844', '경기도','파주시' , '가평군', '가화2로'
);
INSERT INTO address(
addr_seq, zipcode, province, city, gugun, doro
) VALUES(
addr_seq.nextval, '04552', '서울','서울시' , '중구', '마루내로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '08413', '경기도', '화성시', '상군','나루호로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '15710', '강원도', '횡성시', '횡성군','가담3로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '01204', '서울', '서울시', '강북구','솔매22로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '07512', '서울', '서울시', '강서구','화곡4로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '35417', '대전', '대전시', '서구','안작로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '42157', '대구', '대구시', '수상구','수상로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '26471', '강원도', '원주시', '라온군','정7로'
);
INSERT INTO address
VALUES
(
addr_seq.nextval, '63166', '제주도', '제주시', '제주군','광덕로'
);
