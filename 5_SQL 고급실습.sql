# 날짜 : 2022/06/14
# 이름 : 김효경
# 내용 : SQL 고급실습


# 실습하기 5-1
CREATE TABLE `Member`(
`uid`   VARCHAR(10) PRIMARY KEY,
`mane`  VARCHAR(10) NOT NULL,
`hp`    CHAR(13)  UNIQUE,
`pos`   VARCHAR(10) NOT NULL,
`dep`   INT,
`rdate` DATE
);

CREATE TABLE `Department`(
`depNo` INT NOT null,
`name`  VARCHAR(10)
`tel`
);

