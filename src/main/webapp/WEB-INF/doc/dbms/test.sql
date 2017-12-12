DROP TABLE test;
 
DROP TABLE test;

select * from test;

CREATE TABLE test(
    testno NUMBER(5)   NOT NULL, -- -99999 ~ +99999 
    mname  VARCHAR(20) NOT NULL, -- 한글 10자 
    funct  VARCHAR(50) NOT NULL, -- 주요 기술 분야  
    PRIMARY KEY (testno)         -- 중복 안됨, 고유한 값만 가능  
); 
 
 
INSERT INTO test(testno, mname, funct) 
VALUES(1, '왕눈이', 'JAVA/JSP/Spring'); 
 
INSERT INTO test(testno, mname, funct) 
VALUES(2, '아로미', 'JAVA/JSP/Spring/JQuery'); 
 
INSERT INTO test(testno, mname, funct) 
VALUES(3, '투투', 'JAVA/JSP/Spring/JQuery/HTML5'); 
 
SELECT testno, mname, funct FROM test ORDER BY testno ASC; 
 
 TESTNO MNAME FUNCT
 ------ ----- ----------------------------
      1 왕눈이   JAVA/JSP/Spring
      2 아로미   JAVA/JSP/Spring/JQuery
      3 투투    JAVA/JSP/Spring/JQuery/HTML5