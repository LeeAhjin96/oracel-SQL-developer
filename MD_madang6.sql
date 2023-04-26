set transaction name 'T1';

select *
from book
where bookid=1;

update book
set price=7100
where bookid=1;

select *
from book
where bookid=1;

commit;

select sys_context('userenv', 'sessionid') from dual;

--����� 
set transaction name 'T1';

update book
set price=price+100
where bookid=1;

update book
set price=price+100
where bookid=2;

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
level read UNCOMMITTED;

select *
from users
where id=1;

select *
from users
where id=1;

commit;

--�ݺ��Ұ��� �б�
set transaction isolation level
read committed;

select *
from users
where id=1;

--���ɵ����� �б�
set transaction isolation level
repeatable read;

--���� repeatable, uncommitted ����� ������ �Ұ����� �����̴�. �����ϰ� ������

select *
from users
where age between 10 and 30;

commit;

--Ʈ����� �� ���� �ǽ�
set transaction isolation level
read committed;

select sum(price) �Ѿ�
from book;

select sum(price) �Ѿ�
from book;
--���� ����� �ٸ��� Ȯ���ϱ�

commit;


--���ɵ����� �б� ������ ������ ���� ��ɾ�
set transaction isolation level
repeatable read;

select sum(price) �Ѿ�
from book;
--��Ȯ��
select sum(price) �Ѿ�
from book;

commit;


--��������:serializable ���
set transaction isolation level
serializable;

select sum(price) �Ѿ�
from book;

--Ȯ�� ���� ����� ������ Ȯ��!
select sum(price) �Ѿ�
from book;

commit;













