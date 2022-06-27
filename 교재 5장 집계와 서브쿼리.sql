# 날짜 : 2022/06/21
# 이름 : 김효경 
# 내용 : 교재 5장 집계와 서브쿼리

###############################
#20강 행 개수 구하기
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample51` (
`no`       INT PRIMARY KEY AUTO_INCREMENT,
`name`     VARCHAR(10),
`quantity` INT
);

INSERT INTO `sample51` (`name`, `quantity`)VALUES ('A', 1);
INSERT INTO `sample51` (`name`, `quantity`)VALUES ('A', 2);
INSERT INTO `sample51` (`name`, `quantity`)VALUES ('B', 10);
INSERT INTO `sample51` (`name`, `quantity`)VALUES ('C', 3);
INSERT INTO `sample51` VALUES ();

#p183

SELECT COUNT(*) FROM `sample51`;

#p185

SELECT COUNT(*) FROM `sample51` WHERE `name`='A';

#p186

SELECT COUNT(no), COUNT(name) FROM `sample51`;

#p187

SELECT * FROM `sample51`;

#p188

SELECT ALL `name` FROM `sample51`;
SELECT DISTINCT `name` FROM `sample51`;

#p189

SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM `sample51`;  

###############################
#21강 COUNT 이외의 집계함수
###############################
#p191

SELECT SUM(quantity) FROM `sample51`;

#p192

SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM `sample51`;

#p193

SELECT AVG(case when `quantity` IS NULL then 0 ELSE `quantity` END) AS avgnull0 FROM `sample51`;

SELECT MIN(quantity), MAX(quantity), MIN(NAME), MAX(NAME) FROM `sample51`;

###############################
#22강 그룹화-GROUP BY
###############################
#p195

SELECT `name` FROM `sample51` GROUP BY `name`;

#p197

SELECT `name`, COUNT(NAME), SUM(quantity) FROM `sample51` GROUP BY `name`;

#p199

SELECT `name`, COUNT(NAME) FROM `sample51` GROUP BY `name`;
SELECT `name`, COUNT(NAME) FROM `sample51` GROUP BY `name` HAVING COUNT(NAME)=1;

#p202

SELECT `name`, COUNT(NAME), SUM(quantity) FROM `sample51` GROUP BY `name` ORDER BY SUM(quantity) DESC;

###############################
#23강 서브쿼리
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample54` (
`no` INT,
`a`  INT
);

INSERT INTO `sample54` VALUES (1, 100);
INSERT INTO `sample54` VALUES (2, 900);
INSERT INTO `sample54` VALUES (3, 20);
INSERT INTO `sample54` VALUES (4, 80);

DROP TABLE `sample54`;
#p205

SELECT MIN(a) FROM `sample54`;

#p206

DELETE FROM `sample54` WHERE a=(SELECT MIN(a) FROM `sample54`);
SELECT * FROM `sample54`;

#p207

SELECT MIN(a) FROM `sample54`;
SELECT `no` FROM `sample54`;
SELECT MIN(a), MAX(NO) FROM `sample54`;

#p208

SELECT `no`, `a` FROM `sample54`;

#p210

SELECT (SELECT COUNT(*) FROM `sample51`) AS `sq1`,
       (SELECT COUNT(*) FROM `sample54`) AS `sq2`; 
       
SELECT (SELECT COUNT(*) FROM `sample51`) AS `sq1`,
       (SELECT COUNT(*) FROM `sample54`) AS `sq2`FROM DUAL;        


#p211

UPDATE `sample54` SET a=(SELECT MAX(a) FROM `sample54`);

#p212

SELECT * FROM (SELECT * FROM `sample54`) sq;
SELECT * FROM (SELECT * FROM `sample54`) AS sq;

#p213

SELECT * FROM (SELECT * FROM (SELECT * FROM `sample54`) sq1) sq2;


SELECT * FROM (
  SELECT * FROM `sample54` ORDER BY a DESC
)sq 
WHERE rownum <=2;

#테이블 생성/데이터 저장
CREATE TABLE `sample541` (
`a` INT,
`b` INT
);
#p214

INSERT INTO `sample541` VALUES (
(SELECT COUNT(*) FROM `sample51`), 
(SELECT COUNT(*) FROM `sample54`));

INSERT INTO `sample541` SELECT 1, 2;

SELECT * FROM `sample541`;

#p215

INSERT INTO `sample542` SELECT * FROM `sample543`;

###############################
#24강 상관 서브쿼리
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample551` (
`no` INT, 
`a`  CHAR(10)
);

INSERT INTO `sample551`(`no`) VALUES (1);
INSERT INTO `sample551`(`no`) VALUES (2);
INSERT INTO `sample551`(`no`) VALUES (3);
INSERT INTO `sample551`(`no`) VALUES (4);
INSERT INTO `sample551`(`no`) VALUES (5);

CREATE TABLE `sample552` (
`no2` INT
);

INSERT INTO `sample552` VALUES (3);
INSERT INTO `sample552` VALUES (5);

#p217

SELECT * FROM `sample551`;
SELECT * FROM `sample552`;

#p218

UPDATE `sample551` SET a='있음' WHERE
 EXISTS (SELECT * FROM `sample552` WHERE `no2`=`no`);
SELECT * FROM `sample551`;

#p219

UPDATE `sample551` SET a='없음' WHERE
 not EXISTS (SELECT * FROM `sample552` WHERE `no2`=`no`);
SELECT * FROM `sample551`; 

#p221

UPDATE `sample551` SET a='있음' WHERE
 EXISTS (SELECT * FROM `sample552` WHERE `sample552`.no2=`sample551`.`no`);

#p222

SELECT * FROM `sample551` WHERE `no` IN (3, 5);

SELECT * FROM `sample551` WHERE `no` IN (SELECT `no2` FROM `sample552`);


