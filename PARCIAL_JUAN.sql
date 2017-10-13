--5
CREATE TABLE COURSES (
id_courses integer primary key, 
name varchar2(255), 
code varchar2(255), 
date_start date, 
date_end date
)

CREATE TABLE STUDENTS (
id_student  integer primary key, 
first_name varchar2(255), 
last_name varchar2(255), 
date_of_birth date, 
city varchar2(255), 
address varchar2(255)
)

CREATE TABLE ATTENDANCE (
id_attendance integer primary key,
student_id integer, 
course_id integer, 
attendance_date date
)

CREATE TABLE ANSWERS (
id_answer integer primary key, 
number_of_question varchar2(255), 
answer varchar2(255)
)

--
CREATE SEQUENCE answer_seq start with 500 increment by 10;

SELECT answer_seq.NEXTVAL FROM ANSWERS;


/*question 1*/insert into ANSWERS(ID,NUMBER_OF_QUESTION,ANSWER) select 1,'QUESTION 1',count(reference) from COURSES WHERE ID_COURSES=2;