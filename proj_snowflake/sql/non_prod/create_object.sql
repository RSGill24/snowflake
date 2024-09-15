CREATE DATABASE &object_name;

USE DATABASE &object_name; 

CREATE SCHEMA &schema_name;

CREATE TABLE employees (id INT, name STRING, department STRING, salary NUMBER);
CREATE TABLE departments (dept_id INT, dept_name STRING, manager STRING);
CREATE TABLE projects (proj_id INT, proj_name STRING, budget NUMBER);

INSERT INTO employees (id, name, department, salary) VALUES 
(1, 'Alice', 'Engineering', 100000),
(2, 'Bob', 'Marketing', 95000),
(3, 'Charlie', 'Sales', 88000);

INSERT INTO departments (dept_id, dept_name, manager) VALUES 
(101, 'Engineering', 'Alice'),
(102, 'Marketing', 'Bob'),
(103, 'Sales', 'Charlie');

INSERT INTO projects (proj_id, proj_name, budget) VALUES 
(1001, 'Project A', 50000),
(1002, 'Project B', 75000);

CREATE VIEW senior_employee AS SELECT name, department FROM employees WHERE salary > 90000

CREATE STAGE my_s3_stage URL = 's3://my_bucket/data' CREDENTIALS = (AWS_KEY_ID = 'YOUR_AWS_KEY' AWS_SECRET_KEY = 'YOUR_SECRET_KEY');
