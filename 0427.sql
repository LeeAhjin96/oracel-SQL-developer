select employee_id, first_name || last_name as "Name"
    ,salary, job_id, hire_date, manager_id
from employees;

insert into charts values ( 'd_130628100', 130628100, '020403', 3545, '040089', '�Ǻ� ���� ���� �ֻ�');

insert into charts values ( 'd_130628100', 130628100, 020403, 3545, 040089, '�Ǻ� ���� ���� �ֻ�');

select * from charts;

--���� 1
select first_name || last_name as "Name"
    ,job_id "Job", salary "Salary", salary*12+100 "Increased Ann_Salary", (salary+100)*12 "Increased Salary"
from employees;

--���� 2
select last_name || ':1 Year Salary = $' || salary*12 "1 Year Salary"
from employees;

--���� 3
select distinct employees.department_id
    , employees.job_id
from employees;

-- where, order by ���� ����
select first_name || last_name "Name", salary
from employees
where salary not between 7000 and 10000
order by salary;

--���� 1
select last_name "e and o Name"
from employees
where last_name like '%e%' and last_name like '%o%';

--���� 2
select first_name || last_name "Name", job_id, hire_date
from employees
where hire_date between '060523' and '070520'
order by hire_date;

--���� 3
select first_name || last_name "Name", salary, job_id, commission_pct
from employees
where commission_pct is not null
order by salary desc;

--���� �� �Լ� �� ��ȯ �Լ� ���� ����
select employee_id, last_name || ' ' || first_name as "Name", salary,
    round(salary * 1.123, 0) "Increased Salary"
from employees
where department_id = 60;

--���� 1
select initcap(first_name)||' '||initcap(last_name)||' '||'is a'||' '||initcap(job_id)
        as "Employee JOBs" 
from employees
where last_name like '%s';

--���� 2
select first_name||' '||last_name as "Name", salary, salary*12 "Annual Salary", 'Salary only' "Commission"
from employees;

--���� 3






