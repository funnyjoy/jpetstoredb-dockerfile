--
--    Copyright 2010-2013 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

INSERT INTO SIGNON VALUES('j2ee','j2ee');
INSERT INTO SIGNON VALUES('ACID','ACID');

INSERT INTO ACCOUNT VALUES('j2ee','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO ACCOUNT VALUES('ACID','acid@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');

INSERT INTO PROFILE VALUES('j2ee','english','DOGS',1,1);
INSERT INTO PROFILE VALUES('ACID','english','CATS',1,1);

INSERT INTO BANNERDATA VALUES ('FISH','<image src="../resources/images/banner_fish.gif">');
INSERT INTO BANNERDATA VALUES ('CATS','<image src="../resources/images/banner_cats.gif">');
INSERT INTO BANNERDATA VALUES ('DOGS','<image src="../resources/images/banner_dogs.gif">');
INSERT INTO BANNERDATA VALUES ('REPTILES','<image src="../resources/images/banner_reptiles.gif">');
INSERT INTO BANNERDATA VALUES ('BIRDS','<image src="../resources/images/banner_birds.gif">');

INSERT INTO SUPPLIER VALUES (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797');
INSERT INTO SUPPLIER VALUES (2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');

commit;

