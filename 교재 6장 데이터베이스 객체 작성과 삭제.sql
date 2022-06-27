#날짜 : 2022/06/22
#이름 : 김효경
#내용 : 교재 6장 데이터베이스 객체 작성과 삭제

###############################
#26강 테이블 작성,삭제,변경
###############################
#p234

CREATE TABLE `sample62`(
`no`  INTEGER NOT NULL,
`a`   VARCHAR (30),
`b`   DATE
);

DESC `sample62`;

#p237

ALTER TABLE `sample62` ADD `newcol` INTEGER;
DESC `sample62`;

#p238

ALTER TABLE `sample62` MODIFY `newcol` VARCHAR(20);
DESC `sample62`;


#p239

ALTER TABLE `sample62` CHANGE `newcol` c VARCHAR(20);
DESC `sample62`;

###############################
#27강 제약
###############################
#p243

CREATE TABLE `sample631` (
`a` INTEGER NOT NULL,
`b` INTEGER NOT NULL UNIQUE,
`c` VARCHAR(30)
);

CREATE TABLE `sample632` (
`no`     INTEGER NOT NULL,
`sub_no` INTEGER NOT NULL,
`name`   VARCHAR(30),
PRIMARY KEY (`no`, `sub_no`)
);

DROP TABLE `sample631`;
#p244

ALTER TABLE `sample631` MODIFY c VARCHAR (30) NOT NULL;

#p245

ALTER TABLE `sample631` ADD CONSTRAINT `pkey_sample631` PRIMARY KEY(a);

ALTER TABLE `sample631` MODIFY c VARCHAR(30);

ALTER TABLE `sample631` DROP CONSTRAINT `pkey_sample631`;

ALTER TABLE `sample631` PRIMARY KEY;

#p246

CREATE TABLE `sample634` (
`p`  INTEGER NOT NULL,
`a`  VARCHAR(30),
CONSTRAINT pkey_sample634 PRIMARY KEY(p)  
);

#p247

INSERT INTO `sample634` VALUES (1, '첫째줄');
INSERT INTO `sample634` VALUES (2, '둘째줄');
INSERT INTO `sample634` VALUES (3, '셋째줄');

INSERT INTO `sample634` VALUES (2, '넷째줄');

#p248

SELECT a,b FROM `sample635`;

###############################
#29강 인덱스 작성과 삭제
###############################
#p258

CREATE INDEX `isample65` ON `sample62`(`no`);

#p259

drop INDEX `isample65` ON `sample62`;

#p260

EXPLAIN SELECT * FROM `sample62` WHERE a='a';

#p261
EXPLAIN SELECT * FROM `sample62` WHERE `no` > 10;
###############################
#30강 뷰 작성과 삭제
###############################
#p266
#p267