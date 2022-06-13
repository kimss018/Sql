#날짜 : 2022/06/13
#이름 : 김효경
#내용 : SQL 기본실습

#실습하기 1-1
CREATE DATABASE `MyDB`;
DROP DATABASE `MyDB`;

#실습하기 1-2
CREATE TABLE `User1` (
`uid` VARCHAR(10),
`name` VARCHAR(10),
`hp` CHAR(13),
`age` INT
);

DROP TABLE `User1`;

#실습하기 1-3
INSERT INTO `User1` VALUES ('a101', '김유신', '010-1234-1111', 25);
INSERT INTO `User1` VALUES ('a102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User1` VALUES ('a103', '장보고', '010-1234-3333', 32);

INSERT INTO `User1` (`uid`, `name`, `age`)
             VALUES ('a104', '강감찬', 45);
INSERT INTO `User1` SET
                        `uid` = 'a105',
                        `name` = '이순신',          
                        `hp` = '010-1234-5555';
                                              
#실습하기 1-4
SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='a101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` > 30;
SELECT `uid`, `name`, `age`, FROM `User1`;

#실습하기 1-5
update `User1` SET `hp`='010-1234-4444' WHERE `uid`='a104';
UPDATE `User1` SET `age`=51 WHERE `uid`='a105';
UPDATE `User1` SET `hp`='0101234-1001', `age`=27 WHERE `uid`='a101'

#실습하기 1-6
DELETE FROM `User1` WHERE `uid`='a101';
DELETE FROM `User1` WHERE `uid`='a102' AND `age`=25;
DELETE FROM `User1` WHERE `age` >=30;


