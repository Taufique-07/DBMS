CREATE DATABASE IF NOT EXISTS DIUDB;             #TO CREATE DATABASE

DROP DATABASE DIUDB;                             #TO DROP DATABASE

USE DIUDB;                                       #USING DATABASE

CREATE TABLE INFO (                              #TO CREATE TABLE 
  ID INT PRIMARY KEY,
  NAME VARCHAR(50) NOT NULL,
  SECTION CHAR(1) DEFAULT 'A',
  AGE INT CHECK (AGE > 18)
);

INSERT INTO INFO (ID,NAME,SECTION,AGE)                #TO INSERT VAUES IN THE TABLE
VALUES 
   (1,"Akash",'K',22),
   (3,"Sami",'F',23),
   (4,"Bayzid",'T',22),
   (5,"Rafi",'A',22),
   (6,"Opu",'A',24);
   
INSERT INTO INFO (ID, NAME, AGE)                      #SINGLE INSERTION
VALUES (2, 'Ziad', 22);


UPDATE INFO                                           #UPDATE INFORMATION IN THE TABLE
SET AGE = 30
WHERE SECTION = 'A';


DELETE FROM INFO                                      #DELETE ANY ROW FORM THE TABLE
WHERE ID = 2;

ALTER TABLE INFO
ADD COLUMN CITY VARCHAR(20) DEFAULT 'DHAKA';

UPDATE INFO
SET CITY = 'COMILLA';


SELECT * FROM INFO;                                   #TO SHOW THE VALUES IN THE TABLE

SHOW TABLES;
