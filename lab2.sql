/*Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2

 Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment2.sql" Provide comments above each query to indicate the task number and the query's purpose*/

mysql> create database demo;
Query OK, 1 row affected (0.03 sec)

mysql> create table employee(emp_id varchar(10) not null primary key,first_name varchar(10) not null,last_name varchar(10) not null,age varchar(20) not null,email varchar(30) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(10) | NO   |     | NULL    |       |
| age        | varchar(20) | NO   |     | NULL    |       |
| email      | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into employee values('1','Shreyas','Kadam','20','shreyaskadam205@gamil.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('2','mohammad','Sadik','40','mohamad123@gamil.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('3','sakshi','yadav','10','sak123@gamil.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('4','ravi','kumar','25','abc234@gamil.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values('5','aditya','mishra','55','mishra234@gamil.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+--------+------------+-----------+-----+---------------------------+
| emp_id | first_name | last_name | age | email                     |
+--------+------------+-----------+-----+---------------------------+
| 1      | Shreyas    | Kadam     | 20  | shreyaskadam205@gamil.com |
| 2      | mohammad   | Sadik     | 40  | mohamad123@gamil.com      |
| 3      | sakshi     | yadav     | 10  | sak123@gamil.com          |
| 4      | ravi       | kumar     | 25  | abc234@gamil.com          |
| 5      | aditya     | mishra    | 55  | mishra234@gamil.com       |
+--------+------------+-----------+-----+---------------------------+
5 rows in set (0.01 sec)

mysql> select first_name,last_name from employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Shreyas    | Kadam     |
| mohammad   | Sadik     |
| sakshi     | yadav     |
| ravi       | kumar     |
| aditya     | mishra    |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name,age from employee where age>30;
+------------+-----------+-----+
| first_name | last_name | age |
+------------+-----------+-----+
| mohammad   | Sadik     | 40  |
| aditya     | mishra    | 55  |
+------------+-----------+-----+
2 rows in set (0.01 sec)

mysql> update employee set age=age+1 where age>2;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from employee;
+--------+------------+-----------+-----+---------------------------+
| emp_id | first_name | last_name | age | email                     |
+--------+------------+-----------+-----+---------------------------+
| 1      | Shreyas    | Kadam     | 21  | shreyaskadam205@gamil.com |
| 2      | mohammad   | Sadik     | 41  | mohamad123@gamil.com      |
| 3      | sakshi     | yadav     | 11  | sak123@gamil.com          |
| 4      | ravi       | kumar     | 26  | abc234@gamil.com          |
| 5      | aditya     | mishra    | 56  | mishra234@gamil.com       |
+--------+------------+-----------+-----+---------------------------+
5 rows in set (0.00 sec)