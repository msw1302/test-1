-- SEQUENCE 삭제
DROP SEQUENCE memo_seq;
 
-- SEQUENCE 객체 생성
CREATE SEQUENCE memo_seq
START WITH   1            --시작번호
INCREMENT BY 1          --증가값
MAXVALUE     9999999  --최대값
CACHE        2               --시쿼스 변경시 자주 update되는 것을 방지하기위한 캐시값
NOCYCLE;    
 
CREATE TABLE memo(
  memono NUMBER(5) NOT NULL,
  title VARCHAR(30) NOT NULL,
  PRIMARY KEY(memono)
);
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, '내일 비옵니다.');
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, '더위 주춤');
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, '체력 관리');
 
SELECT memono, title 
FROM memo 
ORDER BY memono ASC;
 MEMONO TITLE
 ------ --------
      1 내일 비옵니다.
      2 더위 주춤
      3 체력 관리
 
DELETE FROM memo WHERE memono=3;
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, '화요일');
 
SELECT memono, title 
FROM memo 
ORDER BY memono ASC;
 MEMONO TITLE
 ------ --------
      1 내일 비옵니다.
      2 더위 주춤
      4 화요일