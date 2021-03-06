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

CREATE TABLE ORDERS (
      ORDERID INT NOT NULL,
      USERID VARCHAR(80) NOT NULL,
      ORDERDATE DATE NOT NULL,
      SHIPADDR1 VARCHAR(80) NOT NULL,
      SHIPADDR2 VARCHAR(80) NULL,
      SHIPCITY VARCHAR(80) NOT NULL,
      SHIPSTATE VARCHAR(80) NOT NULL,
      SHIPZIP VARCHAR(20) NOT NULL,
      SHIPCOUNTRY VARCHAR(20) NOT NULL,
      BILLADDR1 VARCHAR(80) NOT NULL,
      BILLADDR2 VARCHAR(80)  NULL,
      BILLCITY VARCHAR(80) NOT NULL,
      BILLSTATE VARCHAR(80) NOT NULL,
      BILLZIP VARCHAR(20) NOT NULL,
      BILLCOUNTRY VARCHAR(20) NOT NULL,
      COURIER VARCHAR(80) NOT NULL,
      TOTALPRICE DECIMAL(10,2) NOT NULL,
      BILLTOFIRSTNAME VARCHAR(80) NOT NULL,
      BILLTOLASTNAME VARCHAR(80) NOT NULL,
      SHIPTOFIRSTNAME VARCHAR(80) NOT NULL,
      SHIPTOLASTNAME VARCHAR(80) NOT NULL,
      CREDITCARD VARCHAR(80) NOT NULL,
      EXPRDATE VARCHAR(7) NOT NULL,
      CARDTYPE VARCHAR(80) NOT NULL,
      LOCALE VARCHAR(80) NOT NULL,
      CONSTRAINT PK_ORDERS PRIMARY KEY (ORDERID)
);

CREATE TABLE ORDERSTATUS (
      ORDERID INT NOT NULL,
      LINENUM INT NOT NULL,
      TIMESTAMP DATE NOT NULL,
      STATUS VARCHAR(2) NOT NULL,
      CONSTRAINT PK_ORDERSTATUS PRIMARY KEY (ORDERID, LINENUM)
);

CREATE TABLE LINEITEM (
      ORDERID INT NOT NULL,
      LINENUM INT NOT NULL,
      ITEMID VARCHAR(10) NOT NULL,
      QUANTITY INT NOT NULL,
      UNITPRICE DECIMAL(10,2) NOT NULL,
      CONSTRAINT PK_LINEITEM PRIMARY KEY (ORDERID, LINENUM)
);

CREATE TABLE SEQUENCE
(
    NAME               VARCHAR(30)  NOT NULL,
    NEXTID             INT          NOT NULL,
    CONSTRAINT PK_SEQUENCE PRIMARY KEY (NAME)
);

INSERT INTO SEQUENCE VALUES('ordernum', 1000);

commit;

