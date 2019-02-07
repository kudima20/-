Create database Kudimka20
use Kudimka20
Create table [�����](
[Id] varchar(10) NOT NULL,
[����� ����� ] nvarchar(50) NOT NULL,
[����� ��������] nvarchar(50) NOT NULL,
[����] [nvarchar](150)  null,
)
alter table [�����]
add constraint [id kyrcu] Primary Key (Id)


Create table [����� ��������](
[Id] varchar(10) NOT NULL,
[����� ����� ] nvarchar(50) NOT NULL,
[����] [nvarchar](150)  null,
[������ ������� ������] int null,
[������ ��������� ������] int null,
constraint [��� �볺��� ��������� ����] Primary Key  (Id)
)
go
CREATE TABLE ��������  (
 Id varchar(10) not null,
 ������� nvarchar(50) not null,
 ��� nvarchar(50) not null,
 [��-�������] nvarchar(50) not null,
 [����� ���] char(13) not null,
 [��� ����� ��������] varchar(10) not null,
 [Email] varchar(50) not null,
 Constraint [��������� �����] Unique (Email),
 Constraint [��������� ���.] Unique ([����� ���]),
 constraint [��������  ��������� ����] Primary Key  (Id),
 constraint [�������� - ����� ��������] Foreign key( [��� ����� ��������])
 References [����� ��������] (Id)
 On update cascade 
 On Delete cascade) 
 Go
CREATE TABLE ������� (
[Id] varchar(10) NOT NULL,
[������] nvarchar(50) NOT NULL,
[������] nvarchar(50) NOT NULL,
[������] nvarchar(50) NOT NULL,
[����� ���] char(13) not null,
constraint[������ ��������� ����] Primary Key (Id))
Go 

CREATE TABLE [���������](
[Id]  varchar(10) NOT NULL,
[�������] nvarchar(50) NOT NULL,
[���] nvarchar(50) NOT NULL,
[��-�������] nvarchar(50) NOT NULL,
[����� ���] char(13) not null,
Constraint [��������� ���] Unique ([����� ���]),
Constraint[��������� ��������� ����] Primary Key (Id))
GO

Create table [��������](
[Id] varchar(10) NOT NULL,
[����� ��������] nvarchar(50) NOT NULL,
[������� �����] int not null,
[Id ��������] varchar(10) not null,
[Id �����] varchar(10) NOT NULL,
constraint [�������� ��������� ����] Primary Key (Id),
constraint "������� - ��������" Foreign key([Id ��������])
References [���������] (Id)
On update cascade 
On Delete cascade,
constraint "������� - ����" Foreign key([Id �����])
References [�����] (Id)
On update no action
On Delete no action)
go

Create table �������(
Id int identity (1,1),
[Id �����] varchar(10) NOT NULL,
[Id �������] varchar(10) NOT NULL,
[Id ��������] varchar(10) NOT NULL,
[������ ������� ������] int null,
[��������� ������] int null,
constraint [������� ��������� ����] Primary Key  (id),

constraint "������� - ����" Foreign key([Id �����])
References [�����] (Id)
On update cascade 
On Delete cascade,

constraint "������� - ��������" Foreign key([Id ��������])
References [���������] (Id)
On update cascade 
On Delete cascade,

constraint "������� - �������" Foreign key([Id �������])
References [�������] (Id)
On update cascade 
On Delete cascade,
)

alter table  ��������
add [id �����]  varchar(10) NOT NULL
go 
alter table  �������� 
add constraint [�������� - �����] Foreign key( [id �����])
 References  [�����](Id)
 On update cascade 
 On Delete cascade
 go

 insert into [����� ��������]([Id],[����� ����� ],[����],[������ ������� ������],[������ ��������� ������]) Values
 ('1','�����','���','9','16'),
 ('2','�������','������','17','21'),
 
 insert into [�����]([Id],[����� �����], [����� ��������],[����]) Values
 ('1','Web-������','�����','Photoshop')
  insert into [�����]([Id],[����� �����], [����� ��������],[����]) Values
 ('2','ʳ����������','�������','����'),
 ('3','�������������','�����','����')

 insert into  �������� ([Id],[�������],[���],[��-�������],[����� ���],[��� ����� ��������],[Email],[id �����]) Values
 ('1','�����','����','����������','0960969813','1','zivancenko@gmail.com','1')
 INSERT INTO ��������([Id],[�������],[���],[��-�������],[����� ���],[Email],[��� ����� ��������],[id �����]) VALUES
('2','���㳺���','������','��������','+380935060396','lubov.mirosnice@ukr.net','2','1'),
('3','����������','������','���������','+380969514350','vvasilcuk@mail.ru','1','1'),
('4','���������','������','����������','+380638809392','valentina61@mail.ru','1','1'),
('5','�������','������','�������������','+380996246724','fzaharcuk@gmail.com','2','1'),
('6','����������','�������','����������','+380960394904','svitlana.bodnar@gmail.com','1','1'),
('7','����������','����','��������','+380962429187','stanislav79@mail.ru','1','1'),
('8','�������','������','���������','+380504102316','amelnicenko@ukr.net','2','1'),
('9','������','������','����������','+380634041663','katerina.panasu@ukr.net','1','1'),
('10','����������','��������','���������','+380635973786','olena26@ukr.net','1','1'),
('11','����������','�������','���������','+380638792885','boris.kramarenk@ukr.net','2','1'),
('12','����������','��������','�������','+380638992885','kativ@gmail.com','1','1'),
('13','����������','��������','��������','+380938992885','ponamarak@ukr.net','1','1'),
('14','�������','�����','�������','+380738992885','olgapetro@gmail.com','2','1'),
('15','������','���','�������','+380638992887','shev@gmail.com','2','1'),
('16','������','������','�������������','+380638992999','jarvis_stark@gmail.com','2','1')

insert into [���������]([Id],[�������],[���],[��-�������],[����� ���]) Values
('1','����������','�������','��������','+380638782885'),
 ('2','�������','������','��������','+380996240724'),
 ('3','������','���','���㳿���','+380638992897'),
 ('4','����������','��������','���������','+380636973786'),
 ('5','����������','�������','ǳ��������','+380960395494'),
 ('6','����������','������','���������','+380969514320')

 insert into  ������� ([Id],[������],[������],[������],[����� ���]) Values
 ('1','1','2','���.��������������(83�)','+380675578706'),
 ('2','2','4','���.��������������(94�)','+380931229338')

 insert into �������([Id �����],[Id �������],[Id ��������],[������ ������� ������],[��������� ������]) Values
 ('1','1','1','9','7'),
 ('2','2','2','9','7'),
 ('2','2','6','9','7'),
 ('2','2','4','9','7'),
 ('3','1','5','9','7')


 Select* from [�����]
  Select* from [����� ��������]

  Select ������� from �������� join ����� on [id �����]= [�����].Id
  where [�����].[����� ����� ]='Web-������'

  Select ������� from �������� join ����� on [id �����]= [�����].Id
  where [�����].[����� ����� ]=(Select [����� ����� ] from ����� where Id=1)

  Select count(�������) from �������� join ����� on [id �����]= [�����].Id
  where [�����].[����� ����� ]='Web-������'

  Select count([����� ��������]) from ����� join �������� on [id �����]= [�����].Id
  where [�����].[����� ����� ]='Web-������'

  Select ������ from �������  join ������� on [Id �������]= �������.Id

  join ����� on [id �����] =[�����].Id
  where [�����].[����� ����� ]='Web-������'

