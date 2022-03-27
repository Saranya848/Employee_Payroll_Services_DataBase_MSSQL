Microsoft Windows [Version 10.0.19044.1586]
(c) Microsoft Corporation. All rights reserved.

C:\Users\king>mysql --version
mysql  Ver 8.0.28 for Win64 on x86_64 (MySQL Community Server - GPL)

C:\Users\king>mysql -u root -p
Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.26 sec)

mysql> use payroll_service
ERROR 1049 (42000): Unknown database 'payroll_service'
mysql> create database payroll_services;
Query OK, 1 row affected (0.19 sec)

mysql> use payroll_service
ERROR 1049 (42000): Unknown database 'payroll_service'
mysql> use payroll_services
Database changed
mysql> Create Table employee_payroll(id int, name char(20),salary double,start_date date);
Query OK, 0 rows affected (2.49 sec)

mysql> desc employee_payroll;
+------------+----------+------+-----+---------+-------+
| Field      | Type     | Null | Key | Default | Extra |
+------------+----------+------+-----+---------+-------+
| id         | int      | YES  |     | NULL    |       |
| name       | char(20) | YES  |     | NULL    |       |
| salary     | double   | YES  |     | NULL    |       |
| start_date | date     | YES  |     | NULL    |       |
+------------+----------+------+-----+---------+-------+
4 rows in set (0.19 sec)

mysql> Insert into employee_payroll(name,salary,start_date) values ('Harsha','340000','2012-6-17');
Query OK, 1 row affected (0.18 sec)

mysql> Insert into employee_payroll(name,salary,start_date) values ('Naresh','240000','2012-6-18');
Query OK, 1 row affected (0.19 sec)

mysql> Insert into employee_payroll(name,salary,start_date) values ('Saranya','236000','2012-6-18');
Query OK, 1 row affected (0.13 sec)

mysql> Insert into employee_payroll(name,salary,start_date) values ('Naresh','380000','2010-6-16');
Query OK, 1 row affected (0.15 sec)

mysql> desc employee_payroll;
+------------+----------+------+-----+---------+-------+
| Field      | Type     | Null | Key | Default | Extra |
+------------+----------+------+-----+---------+-------+
| id         | int      | YES  |     | NULL    |       |
| name       | char(20) | YES  |     | NULL    |       |
| salary     | double   | YES  |     | NULL    |       |
| start_date | date     | YES  |     | NULL    |       |
+------------+----------+------+-----+---------+-------+
4 rows in set (0.12 sec)

mysql> select * from employee_payroll;
+------+---------+--------+------------+
| id   | name    | salary | start_date |
+------+---------+--------+------------+
| NULL | Harsha  | 340000 | 2012-06-17 |
| NULL | Naresh  | 240000 | 2012-06-18 |
| NULL | Saranya | 236000 | 2012-06-18 |
| NULL | Naresh  | 380000 | 2010-06-16 |
+------+---------+--------+------------+
4 rows in set (0.00 sec)

mysql> Insert into employee_payroll(name,salary,start_date) values ('Bill','310000','2010-6-16');
Query OK, 1 row affected (0.08 sec)

mysql> select salary from employee_payroll where name = 'Bill';
+--------+
| salary |
+--------+
| 310000 |
+--------+
1 row in set (0.04 sec)

mysql> select * from employee_payroll;select * from employee_payroll
+------+---------+--------+------------+
| id   | name    | salary | start_date |
+------+---------+--------+------------+
| NULL | Harsha  | 340000 | 2012-06-17 |
| NULL | Naresh  | 240000 | 2012-06-18 |
| NULL | Saranya | 236000 | 2012-06-18 |
| NULL | Naresh  | 380000 | 2010-06-16 |
| NULL | Bill    | 310000 | 2010-06-16 |
+------+---------+--------+------------+
5 rows in set (0.00 sec)

    ->     -> where start Between Cast('2020-7-1' As Date) and Date(now());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> where start Between Cast('2020-7-1' As Date) and Date(now())' at line 2
mysql>     -> where start Between Cast('2010-06-16' As Date) and Date(now());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> where start Between Cast('2010-06-16' As Date) and Date(now())' at line 1
mysql> where start Between Cast('2010-06-16' As Date) and Date(now());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where start Between Cast('2010-06-16' As Date) and Date(now())' at line 1
mysql> select * from employee_payroll
    -> where start Between Cast('2020-7-1' As Date) and Date(now());
ERROR 1054 (42S22): Unknown column 'start' in 'where clause'
mysql> select * from employee_payroll
    -> where start Between Cast('2020-7-1' As Date) and Date(now());
ERROR 1054 (42S22): Unknown column 'start' in 'where clause'
mysql> select * from employee_payroll
    -> where start Between Cast('2010-06-16' As Date) and Date(now());
ERROR 1054 (42S22): Unknown column 'start' in 'where clause'
mysql> select * from employee_payroll
    -> where start Between Cast('2012-06-06' As Date) and Date(now());
ERROR 1054 (42S22): Unknown column 'start' in 'where clause'
mysql> select * from employee_payroll
    -> where start_date Between Cast('2010-06-16' As Date) and Date(now());
+------+---------+--------+------------+
| id   | name    | salary | start_date |
+------+---------+--------+------------+
| NULL | Harsha  | 340000 | 2012-06-17 |
| NULL | Naresh  | 240000 | 2012-06-18 |
| NULL | Saranya | 236000 | 2012-06-18 |
| NULL | Naresh  | 380000 | 2010-06-16 |
| NULL | Bill    | 310000 | 2010-06-16 |
+------+---------+--------+------------+
5 rows in set (0.02 sec)

mysql> Alter table employee_payroll Add gender Char(1) after name;
Query OK, 0 rows affected (4.51 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee_payroll;
+------+---------+--------+--------+------------+
| id   | name    | gender | salary | start_date |
+------+---------+--------+--------+------------+
| NULL | Harsha  | NULL   | 340000 | 2012-06-17 |
| NULL | Naresh  | NULL   | 240000 | 2012-06-18 |
| NULL | Saranya | NULL   | 236000 | 2012-06-18 |
| NULL | Naresh  | NULL   | 380000 | 2010-06-16 |
| NULL | Bill    | NULL   | 310000 | 2010-06-16 |
+------+---------+--------+--------+------------+
5 rows in set (0.00 sec)

mysql> Alter table employee_payroll Add phoneNo int(20) after gender;
Query OK, 0 rows affected, 1 warning (2.09 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> select * from employee_payroll;
+------+---------+--------+---------+--------+------------+
| id   | name    | gender | phoneNo | salary | start_date |
+------+---------+--------+---------+--------+------------+
| NULL | Harsha  | NULL   |    NULL | 340000 | 2012-06-17 |
| NULL | Naresh  | NULL   |    NULL | 240000 | 2012-06-18 |
| NULL | Saranya | NULL   |    NULL | 236000 | 2012-06-18 |
| NULL | Naresh  | NULL   |    NULL | 380000 | 2010-06-16 |
| NULL | Bill    | NULL   |    NULL | 310000 | 2010-06-16 |
+------+---------+--------+---------+--------+------------+
5 rows in set (0.00 sec)

mysql> update employee_payroll set gender = 'M' where name = 'Bill';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set gender = 'M' where name = 'Harsha';
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set gender = 'M' where name = 'Naresh';
Query OK, 2 rows affected (0.17 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> update employee_payroll set gender = 'F' where name = 'Saranya';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set name = 'Rajshekar' where salary = '380000';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set id = '232' where name = 'Naresh';
Query OK, 1 row affected (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set id = '230' where name = 'Harsha';
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set id = '237' where name = 'Saranya';
Query OK, 1 row affected (0.14 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set id = '157' where name = 'Rajshekar';
Query OK, 1 row affected (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set id = '152' where name = 'Bill';
Query OK, 1 row affected (0.12 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+------+-----------+--------+---------+--------+------------+
| id   | name      | gender | phoneNo | salary | start_date |
+------+-----------+--------+---------+--------+------------+
|  230 | Harsha    | M      |    NULL | 340000 | 2012-06-17 |
|  232 | Naresh    | M      |    NULL | 240000 | 2012-06-18 |
|  237 | Saranya   | F      |    NULL | 236000 | 2012-06-18 |
|  157 | Rajshekar | M      |    NULL | 380000 | 2010-06-16 |
|  152 | Bill      | M      |    NULL | 310000 | 2010-06-16 |
+------+-----------+--------+---------+--------+------------+
5 rows in set (0.00 sec)

mysql> update employee_payroll set phoneNo = '9554673164' where name = 'Bill';
ERROR 1264 (22003): Out of range value for column 'phoneNo' at row 5
mysql> update employee_payroll set phoneNo = '95546734' where name = 'Bill';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set phoneNo = '82546734' where name = 'Harsha';
Query OK, 1 row affected (3.69 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set phoneNo = '9834342734' where name = 'Naresh';
ERROR 1264 (22003): Out of range value for column 'phoneNo' at row 2
mysql> update employee_payroll set phoneNo = '98343424' where name = 'Naresh';
Query OK, 1 row affected (0.98 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set phoneNo = '79356434' where name = 'Rajshekar';
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee_payroll set phoneNo = '94353566' where name = 'Saranya';
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_payroll;
+------+-----------+--------+----------+--------+------------+
| id   | name      | gender | phoneNo  | salary | start_date |
+------+-----------+--------+----------+--------+------------+
|  230 | Harsha    | M      | 82546734 | 340000 | 2012-06-17 |
|  232 | Naresh    | M      | 98343424 | 240000 | 2012-06-18 |
|  237 | Saranya   | F      | 94353566 | 236000 | 2012-06-18 |
|  157 | Rajshekar | M      | 79356434 | 380000 | 2010-06-16 |
|  152 | Bill      | M      | 95546734 | 310000 | 2010-06-16 |
+------+-----------+--------+----------+--------+------------+
5 rows in set (0.04 sec)

mysql> select Avg(salary) from employee_payroll where gender = 'M' Group By gender;
+-------------+
| Avg(salary) |
+-------------+
|      317500 |
+-------------+
1 row in set (0.02 sec)

mysql> select Avg(salary) from employee_payroll where Gender = 'F' Group By gender;
+-------------+
| Avg(salary) |
+-------------+
|      236000 |
+-------------+
1 row in set (0.00 sec)

mysql> select gender, Avg(salary) from employee_payroll Group By gender;
+--------+-------------+
| gender | Avg(salary) |
+--------+-------------+
| M      |      317500 |
| F      |      236000 |
+--------+-------------+
2 rows in set (0.03 sec)

mysql> select Gender, Sum(salary) from employee_payroll Group By gender;
+--------+-------------+
| Gender | Sum(salary) |
+--------+-------------+
| M      |     1270000 |
| F      |      236000 |
+--------+-------------+
2 rows in set (0.00 sec)

mysql> select Gender, Min(salary) from employee_payroll Group By gender;
+--------+-------------+
| Gender | Min(salary) |
+--------+-------------+
| M      |      240000 |
| F      |      236000 |
+--------+-------------+
2 rows in set (0.03 sec)

mysql> select Gender, Max(salary) from employee_payroll Group By gender;
+--------+-------------+
| Gender | Max(salary) |
+--------+-------------+
| M      |      380000 |
| F      |      236000 |
+--------+-------------+
2 rows in set (0.00 sec)

mysql> select Gender, Count(salary) from employee_payroll Group By gender;
+--------+---------------+
| Gender | Count(salary) |
+--------+---------------+
| M      |             4 |
| F      |             1 |
+--------+---------------+
2 rows in set (0.07 sec)

mysql>
