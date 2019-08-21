REATE TABLESPACE tas
  DATAFILE '/opt/oracle/app/oradata/tas_01.dbf' SIZE 1000M REUSE
  EXTENT MANAGEMENT        LOCAL
  SEGMENT SPACE MANAGEMENT AUTO
;
CREATE TABLESPACE tasind
  DATAFILE '/opt/oracle/app/oradata/tasind_01.dbf' SIZE 500M REUSE
  EXTENT MANAGEMENT        LOCAL
  SEGMENT SPACE MANAGEMENT AUTO
;
CREATE TABLESPACE tas_svc
  DATAFILE '/opt/oracle/app/oradata/tas_svc_01.dbf' SIZE 1000M REUSE,
           '/opt/oracle/app/oradata/tas_svc_02.dbf' SIZE 1000M REUSE
  EXTENT MANAGEMENT        LOCAL
  SEGMENT SPACE MANAGEMENT AUTO
;
CREATE TABLESPACE tasind_svc
  DATAFILE '/opt/oracle/app/oradata/tasind_svc_01.dbf' SIZE 500M REUSE,
           '/opt/oracle/app/oradata/tasind_svc_02.dbf' SIZE 500M REUSE
  EXTENT MANAGEMENT        LOCAL
  SEGMENT SPACE MANAGEMENT AUTO
;
CREATE USER tasadm
 PROFILE DEFAULT
 IDENTIFIED BY tasadm
 DEFAULT TABLESPACE tas
 QUOTA UNLIMITED ON tas
 QUOTA UNLIMITED ON tasind
 QUOTA UNLIMITED ON tas_svc
 QUOTA UNLIMITED ON tasind_svc
;
GRANT connect, CREATE TABLE, CREATE sequence, CREATE VIEW,CREATE synonym TO tasadm
;
GRANT SELECT any dictionary TO tasadm
;
/
