--------------------------------------------------------
--  File created - Wednesday-December-09-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REGISTER
--------------------------------------------------------

  CREATE TABLE "CRUD1"."REGISTER" 
   (	"ID" NUMBER(10,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"SEX" VARCHAR2(100 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CRUD1.REGISTER
SET DEFINE OFF;
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('99','Pepe','pepe','pepe@valle.kas','male','Other');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('12','Miau','paco','paco@paco.er','female','India');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('1','jon','passjon','jon@paco.er','male','Spain');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('2','Gimeneo','passgimeneo','gime@neo.com','female','Spain');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('4','Manolo','password','paco@mer.com','male','Ghana');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('14','jonsui','asdasd','ai8bo16@gmail.com','male','India');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('15','Xexu','suminga','suminga@dominga.oe','male','Other');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('21','Ser','Gio','ser@gio.com','male','India');
Insert into CRUD1.REGISTER (ID,NAME,PASSWORD,EMAIL,SEX,COUNTRY) values ('31','Rahulk','jhk','blitzbergnews@gmail.com','female','Pakistan');
--------------------------------------------------------
--  DDL for Index SYS_C0012633
--------------------------------------------------------

  CREATE UNIQUE INDEX "CRUD1"."SYS_C0012633" ON "CRUD1"."REGISTER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table REGISTER
--------------------------------------------------------

  ALTER TABLE "CRUD1"."REGISTER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "CRUD1"."REGISTER" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CRUD1"."REGISTER" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "CRUD1"."REGISTER" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "CRUD1"."REGISTER" MODIFY ("SEX" NOT NULL ENABLE);
 
  ALTER TABLE "CRUD1"."REGISTER" MODIFY ("COUNTRY" NOT NULL ENABLE);
 
  ALTER TABLE "CRUD1"."REGISTER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
