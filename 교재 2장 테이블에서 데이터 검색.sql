# 날짜 : 2022/06/15
# 이름 : 김효경
# 내용 : 교재 2장 테이블에서 데이터 검색

# P 53 테이블 생성
CREATE TABLE `sample21` (
`no`       INT AUTO_INCREMENT PRIMARY KEY,
`name`     VARCHAR(10),
`birthday` CHAR(10), 
`address`  VARCHAR(100)
);
DROP TABLE `sample24`;
 
# p53
INSERT INTO `sample21` (`name`, `birthday`,`address`) VALUES ('박준용', '1976-10-18', '대구광역시 수성구');
INSERT INTO `sample21` (`name`, `address`) VALUES ('김재진', '대구광역시 동구');
INSERT INTO `sample21` (`name`, `address`) VALUES ('홍길동', '서울특별시 마포구');

# P 62
# P 66
SELECT `no`, `name` FROM `sample21`;

# P 68
SELECT * FROM `sample21` WHERE `no`=2;

# P 70
SELECT * FROM `sample21` WHERE `no`!=2;
SELECT * FROM `sample21` WHERE `no`<>2;

# P 71
SELECT * FROM `sample21` WHERE `name`='박준용';

# P 72
SELECT * FROM `sample21` WHERE `birthday` IS NULL;

# P 73
SELECT * FROM `sample21` WHERE `birthday` IS NULL;

# 테이블 생성/ 데이터 저장
CREATE TABLE `sample24`(
`no`  INT AUTO_INCREMENT PRIMARY KEY,
`a`   INT,
`b`   INT,
`c`   INT
);

INSERT INTO `sample24` (`a`, `b`, `c`) VALUES (1, 0, 0);
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES (0, 1, 0);
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES (0, 0, 1);
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES (2, 2, 0);
INSERT INTO `sample24` (`a`, `b`, `c`) VALUES (0, 2, 2);

# P 76
SELECT * FROM `sample24`;

# P 77
SELECT * FROM `sample24` WHERE `a`<> 0 AND `b` <> 0;

# P 78
SELECT * FROM `sample24` WHERE `a` <> 0 OR `b` <> 0;

# P 80
SELECT * FROM `sample24`  WHERE `a`=1 OR `a`=2 AND `b`=1 OR `b`=2;

# P 82
SELECT * FROM `sample24`  WHERE NOT(`a` <> 0 OR `b` <> 0 );

# 테이블 생성 / 데이터 저장
CREATE TABLE `sample25` (
	`no` INT AUTO_INCREMENT PRIMARY KEY,
	`text` VARCHAR(255)
);

INSERT INTO `sample25` SET `text` = 'SQL은 RDBMS를 조작하는 언어이다';
INSERT INTO `sample25` SET `text` = 'LIKE에서는 메타문자 %와 _를 사용할 수 있다';
INSERT INTO `sample25` SET `text` = 'LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다';

# P 85
SELECT * FROM `sample25` WHERE `text` LIKE 'SQL%';

# P 86
SELECT * FROM `sample25` WHERE `text` LIKE '%SQL%';

# P 88
SELECT * FROM `sample25` WHERE `text` LIKE '%\%%';
