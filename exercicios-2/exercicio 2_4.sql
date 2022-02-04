
#4. Crie a consulta solicitada abaixo:
#a. Primeiro insira esta nova linha na tabela de departamentos: insert into departments values ('d99','Compras internas');
#b. É desejado obter todos os departamentos e seus gerentes. Apresente o nome do departamento, nome e sobrenome do empregado.
# De forma obrigatório a tabela de departamentos tem que estar localizada do lado direito da consulta. 
#Crie a consulta execute e comente o resultado encontrado (right join).
use psdb;

select * from departments;
select* from dept_emp;
select* from dept_manager;
select* from employees;
select* from salaries;
select* from titles;


insert into departments 
 values ('d29', 'Compras Internas');
 
 select 
 employees.first_name,
 employees.last_name,
 departments.dept_name,
 dept_manager.dept_no
 from employees
 inner join dept_manager
 on employees.emp_no= dept_manager.emp_no
 inner join departments
 on departments.dept_no= dept_manager.dept_no;
 

  select * from dept_manager
  inner join employees
  on employees.emp_no= dept_manager.emp_no;
  
  select 
  employees.first_name,
  employees.last_name,
  departments.dept_name,
  dept_manager.emp_no
  from employees
  inner join dept_manager
  on employees.emp_no= dept_manager.emp_no
  inner join departments
  on dept_manager.dept_no= departments.dept_no;
  
  select * from dept_manager
  inner join employees
  on dept_manager.emp_no= employees.emp_no;
  
  select *from employees
  right join dept_manager
  on employees.emp_no= dept_manager.emp_no;
  
 select 
 employees.first_name,
 employees.last_name,
 dept_manager.dept_no,
 departments.dept_name
 from employees
 right join dept_manager
 on employees.emp_no=dept_manager.emp_no,departments;

