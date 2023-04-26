set transaction name 'T2';

select *
from book
where bookid=1;

update book
set price=price+100
where bookid=1;

select *
from book
where bookid=1;

commit;

select sys_context('userenv', 'sessionid') from dual;

--�����
set transaction name 'T2';

update book
set price=price*1.1
where bookid=2;

update book
set price=price*1.1
where bookid=1;

commit;

--�����б�
create table users
( id number,
name varchar2(20),
age number);
insert into users values (1, 'hong gildong', 30);
select *
from users;
commit;
--
set transaction isolation
level read committed;

update users
set age=21
where id=1;

select *
from users
where id=1;

rollback;

--�ݺ��Ұ��� �б�
set transaction isolation level
read committed;

update users
set age=21
where id=1;

commit;

select *
from users
where id=1;

--���ɵ����� �б�
set transaction isolation level
read committed;

insert into users values (3, 'Bob', 27);

commit;

select *
from users
where age between 10 and 30;

--Ʈ����� �� ���� �ǽ�
set transaction isolation level
read committed;

select sum(price) �Ѿ�
from book;

update book
set price=price+500
where bookid=1;

select sum(price) �Ѿ�
from book;

commit;

--���ɵ����� �б� ������ ������ ���� ��ɾ�
set transaction isolation level
read committed;

select sum(price) �Ѿ�
from book;

insert into book values (11, '�׽�Ʈ', '�׽�Ʈ���ǻ�',5500);
--��Ȯ��
select sum(price) �Ѿ�
from book;

commit;

--��������:serializable ���
set transaction isolation level
read committed;

select sum(price) �Ѿ�
from book;

--������� �����ϰ� ����
insert into book values (12, '�׽�Ʈ','�׽�Ʈ ���ǻ�', 5500);

select sum(price) �Ѿ�
from book;

commit;











