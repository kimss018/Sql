# 날짜 : 2022/06/16
# 이름 : 김효경
# 내용 : 교재 3장 정렬과 연산

#테이블 생성/데이터 저장
CREATE TABLE `sample31` (
`name`     VARCHAR(10) PRIMARY KEY,
`age`      INT,
`address`  VARCHAR(100)
);

INSERT INTO `sample31` VALUES ('A씨', 36, '대구광역시 중구');
INSERT INTO `sample31` VALUES ('B씨', 18, '부산 광역시 연제구');
INSERT INTO `sample31` VALUES ('C씨', 25, '서울특별시 중구');

#p95

SELECT * FROM `sample31` ORDER BY `age`;

#p96

SELECT * FROM `sample31` ORDER BY `address`;

#p98

SELECT * FROM `sample31` ORDER BY `age` DESC;
SELECT * FROM `sample31` ORDER BY `age` ASC;

#테이블 생성/데이터 저장
CREATE TABLE `sample311` (
`a` VARCHAR(10),
`b` INT
);

DROP TABLE `sample3`;

INSERT INTO `sample311` VALUES ('1', 1);
INSERT INTO `sample311` VALUES ('2', 2);
INSERT INTO `sample311` VALUES ('10', 10);
INSERT INTO `sample311` VALUES ('11', 11);

#p100

SELECT * FROM `sample311` ORDER BY `a`;

#테이블 생성/데이터 저장
CREATE TABLE `sample32` (
`a` INT,
`b` INT
);

INSERT INTO `sample32` VALUES (1, 1);
INSERT INTO `sample32` VALUES (2, 1);
INSERT INTO `sample32` VALUES (2, 2);
INSERT INTO `sample32` VALUES (1, 3);
INSERT INTO `sample32` VALUES (1, 2);

#p103

SELECT * FROM `sample32`;

#p104

SELECT * FROM `sample32` ORDER BY `a`;

#p105

SELECT * FROM `sample32` ORDER BY `a`,`b`;
SELECT * FROM `sample32` ORDER BY `b`,`a`;

#p106

SELECT * FROM `sample32` ORDER BY `a` ASC, `b` DESC;

#테이블 생성/데이터 저장
CREATE TABLE `sample33` (
`no` INT 
);

INSERT INTO `sample33` VALUES (1);
INSERT INTO `sample33` VALUES (2);
INSERT INTO `sample33` VALUES (3);
INSERT INTO `sample33` VALUES (4);
INSERT INTO `sample33` VALUES (5);
INSERT INTO `sample33` VALUES (6);
INSERT INTO `sample33` VALUES (7);

#p109

SELECT * FROM `sample33`;

#p110

SELECT * FROM `sample33` LIMIT 3;

#p111

SELECT * FROM `sample33` ORDER BY `no` DESC LIMIT 3;

#p113

SELECT * FROM `sample33`LIMIT 3 OFFSET 0;
SELECT * FROM `sample33`LIMIT 3 OFFSET 3;

#테이블 생성/데이터 저장
CREATE TABLE `sample34` (
`no`       INT PRIMARY KEY,
`price`    VARCHAR(10),
`quantity` INT 
);

INSERT INTO `sample34` VALUES (1,'100',10);
INSERT INTO `sample34` VALUES (2,'230',24);
INSERT INTO `sample34` VALUES (3,'1980',1);

#p117

SELECT * FROM `SAMPLE34`;

#p118

SELECT *, `PRICE` * `QUANTITY` FROM `SAMPLE34`;
SELECT *, `PRICE` * `QUANTITY` AS `amount` FROM `SAMPLE34`;

#p121

SELECT *, `PRICE` * `QUANTITY` AS `amount` FROM `SAMPLE34`
  WHERE `PRICE` * `QUANTITY` >= 2000;

#p124

SELECT *, `PRICE` * `QUANTITY` AS `amount` FROM `SAMPLE34` ORDER BY `PRICE` * `QUANTITY` DESC;

#p125

SELECT *, `PRICE` * `QUANTITY` AS `amount` FROM `SAMPLE34` ORDER BY `amount` DESC;

#테이블 생성/데이터 저장
CREATE TABLE `sample341` (
`amount` double
);

INSERT INTO `sample341` VALUES (5961.60);
INSERT INTO `sample341` VALUES (2138.40);
INSERT INTO `sample341` VALUES (1080.00);

#p127

select * FROM `sample341`;
SELECT `amount`, ROUND(amount) FROM `sample341`;

#p128
#p129


#테이블 생성/데이터 저장
CREATE TABLE `sample35` ();
#p132
#p137
#p139


#테이블 생성/데이터 저장
CREATE TABLE `sample37` ();
#p142
#p144
#p145
#p147