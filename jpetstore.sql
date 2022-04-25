--
--    COPYRIGHT 2010-2013 THE ORIGINAL AUTHOR OR AUTHORS.
--
--    LICENSED UNDER THE APACHE LICENSE, VERSION 2.0 (THE "LICENSE");
--    YOU MAY NOT USE THIS FILE EXCEPT IN COMPLIANCE WITH THE LICENSE.
--    YOU MAY OBTAIN A COPY OF THE LICENSE AT
--
--       HTTP://WWW.APACHE.ORG/LICENSES/LICENSE-2.0
--
--    UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING, SOFTWARE
--    DISTRIBUTED UNDER THE LICENSE IS DISTRIBUTED ON AN "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
--    SEE THE LICENSE FOR THE SPECIFIC LANGUAGE GOVERNING PERMISSIONS AND
--    LIMITATIONS UNDER THE LICENSE.
--

CREATE TABLE SUPPLIER (
    SUPPID INT NOT NULL,
    NAME VARCHAR(80) NULL,
    STATUS VARCHAR(2) NOT NULL,
    ADDR1 VARCHAR(80) NULL,
    ADDR2 VARCHAR(80) NULL,
    CITY VARCHAR(80) NULL,
    STATE VARCHAR(80) NULL,
    ZIP VARCHAR(5) NULL,
    PHONE VARCHAR(80) NULL,
    CONSTRAINT PK_SUPPLIER PRIMARY KEY (SUPPID)
);

CREATE TABLE SIGNON (
    USERNAME VARCHAR(25) NOT NULL,
    PASSWORD VARCHAR(25)  NOT NULL,
    CONSTRAINT PK_SIGNON PRIMARY KEY (USERNAME)
);

CREATE TABLE ACCOUNT (
    USERID VARCHAR(80) NOT NULL,
    EMAIL VARCHAR(80) NOT NULL,
    FIRSTNAME VARCHAR(80) NOT NULL,
    LASTNAME VARCHAR(80) NOT NULL,
    STATUS VARCHAR(2)  NULL,
    ADDR1 VARCHAR(80) NOT NULL,
    ADDR2 VARCHAR(40) NULL,
    CITY VARCHAR(80) NOT  NULL,
    STATE VARCHAR(80) NOT NULL,
    ZIP VARCHAR(20) NOT NULL,
    COUNTRY VARCHAR(20) NOT NULL,
    PHONE VARCHAR(80) NOT NULL,
    CONSTRAINT PK_ACCOUNT PRIMARY KEY (USERID)
);

CREATE TABLE PROFILE (
    USERID VARCHAR(80) NOT NULL,
    LANGPREF VARCHAR(80) NOT NULL,
    FAVCATEGORY VARCHAR(30),
    MYLISTOPT INT,
    BANNEROPT INT,
    CONSTRAINT PK_PROFILE PRIMARY KEY (USERID)
);

CREATE TABLE BANNERDATA (
    FAVCATEGORY VARCHAR(80) NOT NULL,
    BANNERNAME VARCHAR(255)  NULL,
    CONSTRAINT PK_BANNERDATA PRIMARY KEY (FAVCATEGORY)
);


INSERT INTO SIGNON VALUES('j2ee','j2ee');
INSERT INTO SIGNON VALUES('ACID','ACID');
INSERT INTO SIGNON VALUES('user01','user01');
INSERT INTO SIGNON VALUES('user02','user02');
INSERT INTO SIGNON VALUES('user03','user03');
INSERT INTO SIGNON VALUES('user04','user04');
INSERT INTO SIGNON VALUES('user05','user05');
INSERT INTO SIGNON VALUES('user06','user06');
INSERT INTO SIGNON VALUES('user07','user07');
INSERT INTO SIGNON VALUES('user08','user08');
INSERT INTO SIGNON VALUES('user09','user09');
INSERT INTO SIGNON VALUES('user10','user10');
INSERT INTO SIGNON VALUES('user11','user11');
INSERT INTO SIGNON VALUES('user12','user12');
INSERT INTO SIGNON VALUES('user13','user13');
INSERT INTO SIGNON VALUES('user14','user14');
INSERT INTO SIGNON VALUES('user15','user15');
INSERT INTO SIGNON VALUES('user16','user16');
INSERT INTO SIGNON VALUES('user17','user17');
INSERT INTO SIGNON VALUES('user18','user18');
INSERT INTO SIGNON VALUES('user19','user19');
INSERT INTO SIGNON VALUES('user20','user20');

INSERT INTO ACCOUNT VALUES('j2ee','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('ACID','acid@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user01','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user02','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user03','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user04','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user05','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user06','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user07','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user08','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user09','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user10','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user11','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user12','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user13','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user14','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user15','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user16','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user17','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user18','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user19','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('user20','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');

INSERT INTO PROFILE VALUES('j2ee','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('ACID','english','CATS',1,1);
INSERT INTO PROFILE VALUES('user01','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user02','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user03','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user04','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user05','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user06','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user07','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user08','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user09','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user10','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user11','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user12','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user13','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user14','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user15','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user16','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user17','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user18','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user19','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('user20','english','DOGS',1,1);

INSERT INTO BANNERDATA VALUES ('FISH','<image src="../resources/images/banner_fish.gif">');
INSERT INTO BANNERDATA VALUES ('CATS','<image src="../resources/images/banner_cats.gif">');
INSERT INTO BANNERDATA VALUES ('DOGS','<image src="../resources/images/banner_dogs.gif">');
INSERT INTO BANNERDATA VALUES ('REPTILES','<image src="../resources/images/banner_reptiles.gif">');
INSERT INTO BANNERDATA VALUES ('BIRDS','<image src="../resources/images/banner_birds.gif">');

INSERT INTO SUPPLIER VALUES (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797');
INSERT INTO SUPPLIER VALUES (2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');

commit;

