Create database Kudimka20
use Kudimka20
Create table [Курси](
[Id] varchar(10) NOT NULL,
[Назва курсу ] nvarchar(50) NOT NULL,
[Форма навчання] nvarchar(50) NOT NULL,
[Опис] [nvarchar](150)  null,
)
alter table [Курси]
add constraint [id kyrcu] Primary Key (Id)


Create table [Форма навчання](
[Id] varchar(10) NOT NULL,
[Назва форми ] nvarchar(50) NOT NULL,
[Опис] [nvarchar](150)  null,
[Година початку занять] int null,
[Година закінчення занять] int null,
constraint [Тип клієнти первинний ключ] Primary Key  (Id)
)
go
CREATE TABLE Студенти  (
 Id varchar(10) not null,
 Прізвище nvarchar(50) not null,
 Імя nvarchar(50) not null,
 [По-батькові] nvarchar(50) not null,
 [Номер тел] char(13) not null,
 [Код форми навчання] varchar(10) not null,
 [Email] varchar(50) not null,
 Constraint [унікальний емейл] Unique (Email),
 Constraint [унікальний тел.] Unique ([Номер тел]),
 constraint [Студенти  первинний ключ] Primary Key  (Id),
 constraint [Студенти - Форма навчання] Foreign key( [Код форми навчання])
 References [Форма навчання] (Id)
 On update cascade 
 On Delete cascade) 
 Go
CREATE TABLE Аудиторії (
[Id] varchar(10) NOT NULL,
[Корпус] nvarchar(50) NOT NULL,
[Поверх] nvarchar(50) NOT NULL,
[Адреса] nvarchar(50) NOT NULL,
[Номер тел] char(13) not null,
constraint[удиторії первинний ключ] Primary Key (Id))
Go 

CREATE TABLE [Викладачі](
[Id]  varchar(10) NOT NULL,
[Прізвище] nvarchar(50) NOT NULL,
[Імя] nvarchar(50) NOT NULL,
[По-батькові] nvarchar(50) NOT NULL,
[Номер тел] char(13) not null,
Constraint [унікальний тел] Unique ([Номер тел]),
Constraint[Викладачі первинний ключ] Primary Key (Id))
GO

Create table [Предмети](
[Id] varchar(10) NOT NULL,
[назва предмета] nvarchar(50) NOT NULL,
[кількість годин] int not null,
[Id викладча] varchar(10) not null,
[Id курсу] varchar(10) NOT NULL,
constraint [предмети первинний ключ] Primary Key (Id),
constraint "предмет - викладач" Foreign key([Id викладча])
References [Викладачі] (Id)
On update cascade 
On Delete cascade,
constraint "предмет - курс" Foreign key([Id курсу])
References [Курси] (Id)
On update no action
On Delete no action)
go

Create table Розклад(
Id int identity (1,1),
[Id курсу] varchar(10) NOT NULL,
[Id аудиторії] varchar(10) NOT NULL,
[Id викладча] varchar(10) NOT NULL,
[Година початку занять] int null,
[тривалість занять] int null,
constraint [Розклад первинний ключ] Primary Key  (id),

constraint "розклад - курс" Foreign key([Id курсу])
References [Курси] (Id)
On update cascade 
On Delete cascade,

constraint "Розклад - викладач" Foreign key([Id викладча])
References [Викладачі] (Id)
On update cascade 
On Delete cascade,

constraint "Розклад - аудиторії" Foreign key([Id аудиторії])
References [Аудиторії] (Id)
On update cascade 
On Delete cascade,
)

alter table  Студенти
add [id курсу]  varchar(10) NOT NULL
go 
alter table  Студенти 
add constraint [Студенти - курсу] Foreign key( [id курсу])
 References  [Курси](Id)
 On update cascade 
 On Delete cascade
 go

 insert into [Форма навчання]([Id],[Назва форми ],[Опис],[Година початку занять],[Година закінчення занять]) Values
 ('1','денна','діти','9','16'),
 ('2','вечірня','дорослі','17','21'),
 
 insert into [Курси]([Id],[Назва курсу], [Форма навчання],[Опис]) Values
 ('1','Web-дизайн','денна','Photoshop')
  insert into [Курси]([Id],[Назва курсу], [Форма навчання],[Опис]) Values
 ('2','Кібербезпека','вечірня','мови'),
 ('3','Програмування','денна','мови')

 insert into  Студенти ([Id],[Прізвище],[Імя],[По-батькові],[Номер тел],[Код форми навчання],[Email],[id курсу]) Values
 ('1','Сурка','Іван','Михайлович','0960969813','1','zivancenko@gmail.com','1')
 INSERT INTO Студенти([Id],[Прізвище],[Імя],[По-батькові],[Номер тел],[Email],[Код форми навчання],[id курсу]) VALUES
('2','Сергієнко','Василь','Петрович','+380935060396','lubov.mirosnice@ukr.net','2','1'),
('3','Крамаренко','Дмитро','Федорович','+380969514350','vvasilcuk@mail.ru','1','1'),
('4','Дмитренко','Галина','Васильовна','+380638809392','valentina61@mail.ru','1','1'),
('5','Кравчук','Василь','Володимирович','+380996246724','fzaharcuk@gmail.com','2','1'),
('6','Боднаренко','Геннадій','Євгенійович','+380960394904','svitlana.bodnar@gmail.com','1','1'),
('7','Пономарчук','Алла','Романівна','+380962429187','stanislav79@mail.ru','1','1'),
('8','Кравчук','Руслан','Тарасович','+380504102316','amelnicenko@ukr.net','2','1'),
('9','Павлюк','Георгій','Євгенійович','+380634041663','katerina.panasu@ukr.net','1','1'),
('10','Романченко','Болеслав','Романович','+380635973786','olena26@ukr.net','1','1'),
('11','Боднаренко','Людмила','Борисовна','+380638792885','boris.kramarenk@ukr.net','2','1'),
('12','Шинкаренко','Катерина','Іванівна','+380638992885','kativ@gmail.com','1','1'),
('13','Пономарчук','Болеслав','Іванович','+380938992885','ponamarak@ukr.net','1','1'),
('14','Таращук','Ольга','Петрівна','+380738992885','olgapetro@gmail.com','2','1'),
('15','Шевчук','Юля','Ігорівна','+380638992887','shev@gmail.com','2','1'),
('16','Івашків','Максим','Володимирович','+380638992999','jarvis_stark@gmail.com','2','1')

insert into [Викладачі]([Id],[Прізвище],[Імя],[По-батькові],[Номер тел]) Values
('1','Боднаренко','Людмила','Борисівна','+380638782885'),
 ('2','Кравчук','Василь','Ігорович','+380996240724'),
 ('3','Шевчук','Юля','Соргіївна','+380638992897'),
 ('4','Романченко','Болеслав','Тарасович','+380636973786'),
 ('5','Боднаренко','Геннадій','Зіновійович','+380960395494'),
 ('6','Крамаренко','Дмитро','Сергійович','+380969514320')

 insert into  Аудиторії ([Id],[Корпус],[Поверх],[Адреса],[Номер тел]) Values
 ('1','1','2','вул.Замарстинівська(83А)','+380675578706'),
 ('2','2','4','вул.Замарстинівська(94А)','+380931229338')

 insert into Розклад([Id курсу],[Id аудиторії],[Id викладча],[Година початку занять],[тривалість занять]) Values
 ('1','1','1','9','7'),
 ('2','2','2','9','7'),
 ('2','2','6','9','7'),
 ('2','2','4','9','7'),
 ('3','1','5','9','7')


 Select* from [Курси]
  Select* from [Форма навчання]

  Select Прізвище from Студенти join Курси on [id курсу]= [Курси].Id
  where [Курси].[Назва курсу ]='Web-дизайн'

  Select Прізвище from Студенти join Курси on [id курсу]= [Курси].Id
  where [Курси].[Назва курсу ]=(Select [Назва курсу ] from Курси where Id=1)

  Select count(Прізвище) from Студенти join Курси on [id курсу]= [Курси].Id
  where [Курси].[Назва курсу ]='Web-дизайн'

  Select count([назва предмета]) from Курси join Предмети on [id курсу]= [Курси].Id
  where [Курси].[Назва курсу ]='Web-дизайн'

  Select Адреса from Розклад  join Аудиторії on [Id аудиторії]= Аудиторії.Id

  join Курси on [id курсу] =[Курси].Id
  where [Курси].[Назва курсу ]='Web-дизайн'

