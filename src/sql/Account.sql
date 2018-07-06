-- Account
-- account_seq(decimal), money(decimal), account_num, account_type, create_date(date), limit(decimal)
select*from tab;
SELECT *FROM account;
DROP TABLE account;
SELECT * FROM USER_SEQUENCES;
DROP SEQUENCE account_seq;
CREATE SEQUENCE account_seq START WITH 1000;
CREATE TABLE account(
	account_seq DECIMAL PRIMARY KEY,
	money DECIMAL,
	account_num VARCHAR2(20),
	account_type VARCHAR2(20),
	create_date DATE,
	limit DECIMAL
);

INSERT INTO account VALUES(
	account_seq.nextval, 0, '123-456-789', '보통예금', SYSDATE, 0 
);
INSERT INTO account
VALUES(
	account_seq.nextval, 1000, '220-753-881', '보통예금', SYSDATE, 0 
);
INSERT INTO account 
VALUES
(
account_seq.nextval, 8000, '874-621-024', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 6000, '357-410-902', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 100, '017-981-342', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 9000, '301-863-025', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 1500, '757-610-687', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 3500, '599-113-542', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 300, '154-215-322', '보통예금', SYSDATE, 0
);
INSERT INTO account
VALUES
(
account_seq.nextval, 1700, '751-665-102', '보통예금', SYSDATE, 0
);


