--1
CREATE TABLESPACE COURSES DATAFILE
'C:\Users\LENOVO\Desktop\Parcial\morning_topic_a\courses1.dbf' SIZE 50M
AUTOEXTEND ON NEXT 50K MAXSIZE 50M
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO
ONLINE;

--2
CREATE PROFILE ADMINISTRATIVO LIMIT
SESSIONS_PER_USER 1
IDLE_TIME 3
FAILED_LOGIN_ATTEMPTS 4;

--3
CREATE USER JUANDA627
IDENTIFIED BY juan123
DEFAULT TABLESPACE COURSES
QUOTA 30M ON COURSES
PROFILE ADMINISTRATIVO;

--4
GRANT DBA TO JUANDA627 
GRANT CREATE SESSION, CREATE TABLE TO JUANDA627;




