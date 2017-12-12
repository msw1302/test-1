1. 테이블 구조
- PURGE: 완전 삭제하여 복구 할 수 없음.
 
DROP TABLE itpay PURGE;
 
CREATE TABLE itpay(
    payno   NUMBER(7)   NOT NULL,  -- 1 ~ 9999999
    part    VARCHAR(20) NOT NULL,  -- 부서명
    sawon   VARCHAR(10) NOT NULL,  -- 사원명
    age     NUMBER(3)   NOT NULL,  -- 나이, 1 ~ 999
    address VARCHAR(50) NULL,  -- 주소
    month   CHAR(6)     NOT NULL,  -- 급여달, 200805
    gdate   DATE        NOT NULL,  -- 수령일
    PRIMARY KEY(payno)
);
 
 
2. 기초 데이터 추가
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(1, '개발팀', '가길동', 27, '성남시', '200801', sysdate);
       
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(2, '개발팀', '나길동', 30, '인천시', '200801', sysdate-5);
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(3, '객체설계팀', '다길동', 34, '성남시', '200801', sysdate-3);
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(4, '객체설계팀', '라길동', 36, '부천시', '200802', sysdate-1);
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(5, 'DB설계팀', '마길동', 38, '부천시', '200802', sysdate-0);
 
SELECT * FROM itpay;
 PAYNO PART  SAWON AGE ADDRESS MONTH  GDATE
 ----- ----- ----- --- ------- ------ ---------------------
     1 개발팀   가길동    27 성남시     200801 2016-05-23 13:18:39.0
     2 개발팀   나길동    30 인천시     200801 2016-05-18 13:18:40.0
     3 객체설계팀 다길동    34 성남시     200801 2016-05-20 13:18:41.0
     4 객체설계팀 라길동    36 부천시     200802 2016-05-22 13:18:42.0
     5 DB설계팀 마길동    38 부천시     200802 2016-05-23 13:18:42.0
 
-- 6번 이후의 레코드 삭제
DELETE FROM itpay 
WHERE payno >= 6;
 
-- null 허용 컬럼 생략, address 컬럼 생략
INSERT INTO itpay(payno, part, sawon, age, month, gdate)
VALUES(6, '개발팀', '신길동', 33, '200804', sysdate);
 
SELECT * FROM itpay;
 
 PAYNO PART  SAWON AGE ADDRESS MONTH  GDATE
 ----- ----- ----- --- ------- ------ ---------------------
     1 개발팀   가길동    27 성남시     200801 2016-05-23 14:48:38.0
     2 개발팀   나길동    30 인천시     200801 2016-05-18 14:48:39.0
     3 객체설계팀 다길동    34 성남시     200801 2016-05-20 14:48:40.0
     4 객체설계팀 라길동    36 부천시     200802 2016-05-22 14:48:41.0
     5 DB설계팀 마길동    38 부천시     200802 2016-05-23 14:48:42.0
     6 개발팀   신길동    33 NULL    200804 2016-05-23 14:50:21.0
 
 
2. 컬럼 추가
ALTER TABLE itpay
ADD (test VARCHAR2(9));
 
 
3. 컬럼 속성 수정
ALTER TABLE itpay
MODIFY (test VARCHAR2(30));
 
 
4. 컬럼명 수정
ALTER TABLE itpay
RENAME COLUMN test to test2;
 
 
5. 컬럼 삭제
ALTER TABLE itpay
DROP COLUMN test2;
 
 
6. 테이블 삭제
DROP TABLE itpay;
 
-- DROP TABLE itpay PURGE; -- 테이블 완전 삭제
 
 
* 테이블 복구: 개발자 버전 지원 안됨.
FLASHBACK TABLE itpay TO BEFORE DROP;
 
SELECT * FROM itpay;
 
 
7. 휴지통 비우기
PURGE RECYCLEBIN;