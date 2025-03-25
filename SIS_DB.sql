create database SIS_DB
use SIS_DB;

CREATE TABLE students (
student_id int not null primary Key , 
first_name varchar(20) ,
last_name varchar(20) ,
date_of_birth date ,
email varchar(30) ,
phone_number bigint);

insert into students Values (101,'Suresh','Kumar', '2004-11-16' , 'sureshkumar@gmail.com',9958654512);
insert into students Values (102,'Ben','Stokes', '2004-10-16' ,'benstokes@gmail.com',9958656512);
insert into students Values (103,'Lockie','Ferguson', '2004-08-16' , 'lockieferguson@gmail.com',9985654512);
insert into students Values (104,'David','Warner', '2004-06-16' , 'davidwarner@gmail.com',9968554512);
insert into students Values (105,'Suresh','Raina', '2004-04-16' , 'sureshraina@gmail.com',9858654521);
insert into students Values (106,'Aaron','Smith', '2004-02-16' , 'aaronsmith@gmail.com',9598654512);
insert into students Values (107,'Chris','Gayle', '2004-01-16' , 'chrisgayle@gmail.com',9188654512);
insert into students Values (108,'Carolos','Brathwaite', '2004-09-16' , 'sureshkumar@gmail.com',9818654512);
insert into students Values (109,'Fraser','Mcgurk', '2004-07-16' , 'frasermcgurk@gmail.com',9798654512);
insert into students Values (110,'Brandon','King', '2004-05-16' , 'brandonking@gmail.com',9368654512);

create table teacher (
teacher_id int not null Primary Key ,
first_name varchar(20) ,
last_name varchar(20) ,
email varchar(30));
select * from teacher;

insert into teacher Values (201,'Rohit','Sharma','rohitsharma@gmail.com');
insert into teacher Values (202,'Shubman','Gill','shubmangill@gmail.com');
insert into teacher Values (203,'Virat','Kohli','viratkohli@gmail.com');
insert into teacher Values (204,'Shreyas','Iyer','shreyasiyer@gmail.com');
insert into teacher Values (205,'Rahul','Lokesk','rahullokesk@gmail.com');
insert into teacher Values (206,'Axar','Patel','axarpatel@gmail.com');
insert into teacher Values (207,'Ravindra','Jadeja','ravindrajadeja@gmail.com');
insert into teacher Values (208,'Mohammed','Shami','mohammedshami@gmail.com');
insert into teacher Values (209,'Varun','cv','varuncv@gmail.com');
insert into teacher Values (210,'Harshit','Rana','harshitrana@gmail.com');

create table courses (
course_id int not null Primary key,
course_name varchar(20) ,
credits varchar(50) ,
teacher_id int ,
FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id) ON DELETE CASCADE );


insert into courses Values (301,'CSE','Computer Technology',201);
insert into courses Values (302,'IT','Information Technology',202);
insert into courses Values (303,'ECE','Electronics and Communication',203);
insert into courses Values (304,'AI','Artificial Intelligence',204);
insert into courses Values (305,'DS','Data Structure',205);
insert into courses Values (306,'ML','Machine Learning',206);
insert into courses Values (307,'MECH','Mechanical Engineering',207);
insert into courses Values (308,'EEE','Electrical and Electronics',208);
insert into courses Values (309,'CIVIL','Civil Engineering',209);
insert into courses Values (310,'CSBS','Computer and Business Systems',210);

create table enrollments (
enrollment_id int not null Primary Key ,
student_id int ,
course_id int ,
enrollment_date date ,
FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE ,
FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE );

insert into enrollments Values (401,101,301,'2003-11-16');
insert into enrollments Values (402,102,302,'2003-10-16');
insert into enrollments Values (403,103,303,'2003-11-15');
insert into enrollments Values (404,104,304,'2003-11-13');
insert into enrollments Values (405,105,305,'2003-11-10');
insert into enrollments Values (406,106,306,'2003-11-08');
insert into enrollments Values (407,107,307,'2003-11-06');
insert into enrollments Values (408,108,308,'2003-11-04');
insert into enrollments Values (409,109,309,'2003-11-02');
insert into enrollments Values (410,110,310,'2003-11-11');

create table payments (
payment_id int not null Primary Key ,
student_id int ,
amount int ,
payment_date date ,
foreign key (student_id) references students(student_id) on delete cascade);

insert into payments values (501,101,5000,'2004-11-11');
insert into payments values (502,102,4000,'2004-11-10');
insert into payments values (503,103,3000,'2004-11-09');
insert into payments values (504,104,10000,'2004-11-12');
insert into payments values (505,105,8000,'2004-11-13');
insert into payments values (506,106,9000,'2004-11-15');
insert into payments values (507,107,7000,'2004-11-14');
insert into payments values (508,108,6000,'2004-11-17');
insert into payments values (509,109,11000,'2004-11-19');
insert into payments values (510,110,12000,'2004-11-18');



