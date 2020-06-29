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
