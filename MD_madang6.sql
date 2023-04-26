--SummerPrice table ����
create table SummerPrice (
class varchar(20),
price integer
);

insert into summerprice values ('FORTRAN', 20000);
insert into summerprice values ('PASCAL', 15000);
insert into summerprice values ('C', 10000);

select * from summerprice;

--SummerEnroll table ����
create table SummerEnroll(
sid INTEGER,
class varchar(20)
);

insert into summerenroll values (100, 'FORTRAN');
insert into summerenroll values (150, 'PASCAL');
insert into summerenroll values (200, 'C');
insert into summerenroll values (250, 'FORTRAN');

select * from summerenroll;

--�����б⸦ ��� �л��� �й��� �����ϴ� ������?
select sid,class
from summerenroll;

--C������ �������?
select price
from summerprice
where class='C';

--�����ᰡ ���� ��� ������?
select distinct class
from summerprice
where price=(select max(price)
                from summerprice);
                
--�����б⸦ ��� �л����� ������ �Ѿ���?
select count(*), sum(price)
from summerprice, summerenroll
where summerprice.class=summerenroll.class;

--�����̻� ����
delete from summerenroll
where sid=200;

select * from summerenroll;

--C������ �����ᰡ �����ϴ��� Ȯ��
select price "C������"
from summerprice
where class='C';

--sid 200 ���߰�
insert into summerenroll values (200, 'C');

