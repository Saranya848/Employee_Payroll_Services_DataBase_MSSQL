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
mysql>