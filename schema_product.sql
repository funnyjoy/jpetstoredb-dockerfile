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

CREATE TABLE CATEGORY (
    CATID VARCHAR(10) NOT NULL,
    NAME VARCHAR(80) NULL,
    DESCN VARCHAR(255) NULL,
    CONSTRAINT PK_CATEGORY PRIMARY KEY (CATID)
);

CREATE TABLE PRODUCT (
    PRODUCTID VARCHAR(10) NOT NULL,
    CATEGORY VARCHAR(10) NOT NULL,
    NAME VARCHAR(80) NULL,
    DESCN VARCHAR(255) NULL,
    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCTID),
        CONSTRAINT FK_PRODUCT_1 FOREIGN KEY (CATEGORY)
        REFERENCES CATEGORY (CATID)
);

CREATE INDEX PRODUCTCAT ON PRODUCT (CATEGORY);
CREATE INDEX PRODUCTNAME ON PRODUCT (NAME);

CREATE TABLE ITEM (
    ITEMID VARCHAR(10) NOT NULL,
    PRODUCTID VARCHAR(10) NOT NULL,
    LISTPRICE DECIMAL(10,2) NULL,
    UNITCOST DECIMAL(10,2) NULL,
    SUPPLIER INT NULL,
    STATUS VARCHAR(2) NULL,
    ATTR1 VARCHAR(80) NULL,
    ATTR2 VARCHAR(80) NULL,
    ATTR3 VARCHAR(80) NULL,
    ATTR4 VARCHAR(80) NULL,
    ATTR5 VARCHAR(80) NULL,
    CONSTRAINT PK_ITEM PRIMARY KEY (ITEMID),
        CONSTRAINT FK_ITEM_1 FOREIGN KEY (PRODUCTID)
        REFERENCES PRODUCT (PRODUCTID),
        CONSTRAINT FK_ITEM_2 FOREIGN KEY (SUPPLIER)
        REFERENCES SUPPLIER (SUPPID)
);

CREATE INDEX ITEMPROD ON ITEM (PRODUCTID);

CREATE TABLE INVENTORY (
    ITEMID VARCHAR(10) NOT NULL,
    QTY INT NOT NULL,
    CONSTRAINT PK_INVENTORY PRIMARY KEY (ITEMID)
);