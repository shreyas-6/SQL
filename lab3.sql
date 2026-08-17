
/* Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order*/


mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| demo                    |
| ecommerce               |
| information_schema      |
| joins                   |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.14 sec)

mysql> create database demo1;
Query OK, 1 row affected (0.05 sec)

mysql> CREATE TABLE student (stud_id INT PRIMARY KEY, FirstName VARCHAR(50),LastName VARCHAR(50),Age INT,Phoneno VARCHAR(15),Address VARCHAR(100));
Query OK, 0 rows affected (0.11 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   | PRI | NULL    |       |
| FirstName | varchar(50)  | YES  |     | NULL    |       |
| LastName  | varchar(50)  | YES  |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| Phoneno   | varchar(15)  | YES  |     | NULL    |       |
| Address   | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

mysql> insert into student values(101,'shreyas','kadam',20,'8108346070','powai'),(102,'Aditya','yadav',15,'8108346090','kurla'),(103,'Abhi','hawaigarh',22,'8000000000','malad'),(104,'pravin','autagi',21,'7070707070','chandivali'),(105,'himanshu','sheikh',21,'9090909090','kokata');
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>  select * from student;
+---------+-----------+-----------+------+------------+------------+
| stud_id | FirstName | LastName  | Age  | Phoneno    | Address    |
+---------+-----------+-----------+------+------------+------------+
|     101 | shreyas   | kadam     |   20 | 8108346070 | powai      |
|     102 | Aditya    | yadav     |   15 | 8108346090 | kurla      |
|     103 | Abhi      | hawaigarh |   22 | 8000000000 | malad      |
|     104 | pravin    | autagi    |   21 | 7070707070 | chandivali |
|     105 | himanshu  | sheikh    |   21 | 9090909090 | kokata     |
+---------+-----------+-----------+------+------------+------------+
5 rows in set (0.01 sec)

mysql> select * from student order by LastName;
+---------+-----------+-----------+------+------------+------------+
| stud_id | FirstName | LastName  | Age  | Phoneno    | Address    |
+---------+-----------+-----------+------+------------+------------+
|     104 | pravin    | autagi    |   21 | 7070707070 | chandivali |
|     103 | Abhi      | hawaigarh |   22 | 8000000000 | malad      |
|     101 | shreyas   | kadam     |   20 | 8108346070 | powai      |
|     105 | himanshu  | sheikh    |   21 | 9090909090 | kokata     |
|     102 | Aditya    | yadav     |   15 | 8108346090 | kurla      |
+---------+-----------+-----------+------+------------+------------+
5 rows in set (0.01 sec)
