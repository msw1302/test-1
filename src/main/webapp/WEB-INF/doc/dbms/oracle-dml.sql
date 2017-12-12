DROP TABLE sec PURGE;
purge 복구하지 않고 영구삭제
 
CREATE TABLE sec(
    name VARCHAR(10) NOT NULL,
    kuk  NUMBER(5,2) NOT NULL -- 정수3자리, 실수2자리, 소수는 자동 반올림
);
 
DELETE FROM sec;
     
ⓐ
INSERT INTO sec(name, kuk) VALUES('기획자', 100.01);
SELECT * FROM sec;
     
ⓑ ERROR, 정수 4자리, 정수는 자리수가 부족하면 에러가 발생합니다.
INSERT INTO sec(name, kuk) VALUES('설계자', 1000.01);
 
ⓒ 100 출력, 반올림이 안되면 소수 부분이 삭제됩니다.
INSERT INTO sec(name, kuk) VALUES('개발자', 100.001);
SELECT * FROM sec;
     
ⓓ 반올림, 0.5이상은 반올림됩니다.
INSERT INTO sec(name, kuk) VALUES('테스터', 100.005);
SELECT * FROM sec;
 
ⓔ 최대 값의 입력
INSERT INTO sec(name, kuk) VALUES('담당자', 999.99);
SELECT * FROM sec;
 
INSERT INTO sec(name, kuk) VALUES('담당자', -999.99);
SELECT * FROM sec;
 
 
4. Date: 날짜형
   - 오라클의 쿼리는 반드시 SELECT ~ FROM ~의 구로조 되어 있어야 합니다. 
     정상적인 쿼리의 구조가 아니면 dual 시스템 임시 테이블을 이용해 출력합니다.
     dual은 sys계정이 소유자로 시스템 변수등을 출력할 때 사용합니다.  
     SELECT절은 반드시 FROM절을 동반해야하는 오라클 문법 규칙 때문에 사용됩니다.
 
     SELECT * FROM dual;
     DROP TABLE sec PURGE;
 
CREATE TABLE sec(
    name VARCHAR(10) NOT NULL,
    kuk  NUMBER(5,2) NOT NULL --정수3자리, 실수2자리, 소수는 자동 반올림
);
 
DELETE FROM sec;
     
ⓐ
INSERT INTO sec(name, kuk) VALUES('기획자', 100.01);
SELECT * FROM sec;
     
ⓑ ERROR, 정수 4자리, 정수는 자리수가 부족하면 에러가 발생합니다.
INSERT INTO sec(name, kuk) VALUES('설계자', 1000.01);
 
ⓒ 100 출력, 반올림이 안되면 소수 부분이 삭제됩니다.
INSERT INTO sec(name, kuk) VALUES('개발자', 100.001);
SELECT * FROM sec;
     
ⓓ 반올림, 0.5이상은 반올림됩니다.
INSERT INTO sec(name, kuk) VALUES('테스터', 100.005);
SELECT * FROM sec;
 
ⓔ 최대 값의 입력
INSERT INTO sec(name, kuk) VALUES('담당자', 999.99);
SELECT * FROM sec;
 
INSERT INTO sec(name, kuk) VALUES('담당자', -999.99);
SELECT * FROM sec;
 
 
4. Date: 날짜형
   - 오라클의 쿼리는 반드시 SELECT ~ FROM ~의 구로조 되어 있어야 합니다. 
     정상적인 쿼리의 구조가 아니면 dual 시스템 임시 테이블을 이용해 출력합니다.
     dual은 sys계정이 소유자로 시스템 변수등을 출력할 때 사용합니다.  
     SELECT절은 반드시 FROM절을 동반해야하는 오라클 문법 규칙 때문에 사용됩니다.
 
     SELECT * FROM dual;
     DUMMY
     -----
     X
 
     SELECT sysdate FROM dual;
     SYSDATE
     ---------------------
     2016-05-23 13:03:51.0
 
--컬럼 별명 지정, 지정된 컬럼명이 사용됩니다.
SELECT sysdate as "DAY" FROM dual;
 DAY
 ---------------------
 2016-05-23 13:04:20.0
 
 -- 년월일만 출력하는 경우
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') as datetime 
FROM dual;
 DATETIME
 ----------
 2016-05-23
 
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') as datetime 
FROM dual;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') as datetime 
FROM dual;
 DATETIME
 -------------------
 2016-05-23 01:05:11
 
 
CREATE TABLE dateTest(
    datetestno    NUMBER(3)    NOT NULL,
    messagedate DATE         NOT NULL,
    message       VARCHAR(100) NOT NULL
);
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(1, sysdate, '감기 조심하세요.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ---------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate-1, '어제 너무 추웠다.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
 
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate+1, '내일 첫눈 온데요.');

INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate+1, '응 안와.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
          2 2016-05-24 13:07:46.0 내일 첫눈 온데요.
 
-- 문자열의 날짜를 입력, 시간은 0으로 자동 입력
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, '2018-01-01', '새해 복 많이 받으세요');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
          2 2016-05-24 13:07:46.0 내일 첫눈 온데요.
          2 2009-01-01 00:00:00.0 새해 복 많이 받으세요
 
-- 시간으로 00은 지정할 수 없습니다.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 00:00:01', 'YYYY-MM-DD HH:MI:SS')
, '새해 복 많이 받으세요');
 
-- 분은 00으로 지정 할 수 있습니다.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 12:00:01', 'YYYY-MM-DD HH:MI:SS')
, '새해 복 많이 받으세요');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
          2 2016-05-24 13:07:46.0 내일 첫눈 온데요.
          2 2009-01-01 00:00:00.0 새해 복 많이 받으세요
          2 2009-02-01 12:00:01.0 새해 복 많이 받으세요
          
     DUMMY
     -----
     X
 
     SELECT sysdate FROM dual;
     SYSDATE
     ---------------------
     2016-05-23 13:03:51.0
 
--컬럼 별명 지정, 지정된 컬럼명이 사용됩니다.
SELECT sysdate as "DAY" FROM dual;
 DAY
 ---------------------
 2016-05-23 13:04:20.0
 
 -- 년월일만 출력하는 경우
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') as datetime 
FROM dual;
 DATETIME
 ----------
 2016-05-23
 
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') as datetime 
FROM dual;
 DATETIME
 -------------------
 2016-05-23 01:05:11
 
 
CREATE TABLE dateTest(
    datetestno    NUMBER(3)    NOT NULL,
    messagedate DATE         NOT NULL,
    message       VARCHAR(100) NOT NULL
);
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(1, sysdate, '감기 조심하세요.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ---------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate-1, '어제 너무 추웠다.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
 
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate+1, '내일 첫눈 온데요.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
          2 2016-05-24 13:07:46.0 내일 첫눈 온데요.
 
-- 문자열의 날짜를 입력, 시간은 0으로 자동 입력
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, '2009-01-01', '새해 복 많이 받으세요');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
          2 2016-05-24 13:07:46.0 내일 첫눈 온데요.
          2 2009-01-01 00:00:00.0 새해 복 많이 받으세요
 
-- 시간으로 00은 지정할 수 없습니다.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 00:00:01', 'YYYY-MM-DD HH:MI:SS')
, '새해 복 많이 받으세요');
 
-- 분은 00으로 지정 할 수 있습니다.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 12:00:01', 'YYYY-MM-DD HH:MI:SS')
, '새해 복 많이 받으세요');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 감기 조심하세요.
          2 2016-05-22 13:06:57.0 어제 너무 추웠다.
          2 2016-05-24 13:07:46.0 내일 첫눈 온데요.
          2 2009-01-01 00:00:00.0 새해 복 많이 받으세요
          2 2009-02-01 12:00:01.0 새해 복 많이 받으세요
          