 create database StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table student(student_id varchar(10)not null primary ke,First_name varchar(20)not null,last_name varchar(10)not null,dateofbirth datetime not null,gender varchar(10)not null,phone varchar(10)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ke,First_name varchar(20)not null,last_name varchar(10)not null,dateofbirth date' at line 1
mysql> create table student(student_id varchar(10)not null primary key,First_name varchar(20)not null,last_name varchar(10)not null,dateofbirth datetime not null,gender varchar(10)not null,phone varchar(10)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table Student(student_id varchar(10)not null primary key,First_name varchar(20)not null,last_name varchar(10)not null,dateofbirth datetime not null,gender varchar(10)not null,email varchar(20)not null,phone varchar(10)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table Student(student_id varchar(10)not null primary key,First_name varchar(20)not null,last_name varchar(10)not null,dateofbirth datetime not null,gender varchar(10)not null,email varchar(20)not null,phone varchar(10)not null);
Query OK, 0 rows affected (0.09 sec)

mysql> desc student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| student_id  | varchar(10) | NO   | PRI | NULL    |       |
| First_name  | varchar(20) | NO   |     | NULL    |       |
| last_name   | varchar(10) | NO   |     | NULL    |       |
| dateofbirth | datetime    | NO   |     | NULL    |       |
| gender      | varchar(10) | NO   |     | NULL    |       |
| email       | varchar(20) | NO   |     | NULL    |       |
| phone       | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

mysql> select * from student;
Empty set (0.02 sec)

 insert into student values (
    -> 's01','pihu','shukla','2005-06-11','female','pihu@gmail.com','7136873647');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values (
    -> 's02','ravi','yadav','2005-06-12','male','ravi@gmail.com','8766873647'),(
    -> 's03','yuvi','yadav','2005-06-13','male','yui@gmail.com','1234573647'),(
    -> 's04','vikas','tiwari','2005-06-14','male','vikas@gmail.com','1234567890'),(
    -> 's05','priya','tiwari','2005-05-14','female','priya@gmail.com','1238967890');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+------------+-----------+---------------------+--------+-----------------+------------+
| student_id | First_name | last_name | dateofbirth         | gender | email           | phone      |
+------------+------------+-----------+---------------------+--------+-----------------+------------+
| s01        | pihu       | shukla    | 2005-06-11 00:00:00 | female | pihu@gmail.com  | 7136873647 |
| s02        | ravi       | yadav     | 2005-06-12 00:00:00 | male   | ravi@gmail.com  | 8766873647 |
| s03        | yuvi       | yadav     | 2005-06-13 00:00:00 | male   | yui@gmail.com   | 1234573647 |
| s04        | vikas      | tiwari    | 2005-06-14 00:00:00 | male   | vikas@gmail.com | 1234567890 |
| s05        | priya      | tiwari    | 2005-05-14 00:00:00 | female | priya@gmail.com | 1238967890 |
+------------+------------+-----------+---------------------+--------+-----------------+------------+
5 rows in set (0.01 sec)