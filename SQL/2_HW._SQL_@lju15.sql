/*Таблица employees
Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками. 
*/

create table employess(
	id serial primary key,
	employee_name varchar (50) not null
) 

insert into employess(employee_name)
values ('Pavlo'),
		('Liubov'),
		('Ann'),
		('Aleksandr'),
		('Volodymyr'),
		('Criss'),
		('Klara'),
		('Sara'),
		('Mateus'),
		('Piter'),
		('Oksana'),
		('Nataliya'),
		('Ostapr'),
		('Samon'),
		('Pablo'),
		('Ostap'),
		('Clara'),
		('Sunny'),
		('Sem'),
		('Samanta'),
		('Samson'),
		('Yulia'),
		('Tanya'),
		('Fox'),
		('Shark'),
		('Mouse'),
		('Elen'),
		('Elon'),
		('Mukola'),
		('Sarah'),
		('Muroslava'),
		('Oleksandr'),
		('Volodya'),
		('Person'),
		('People'),
		('Iryna'),
		('Olena'),
		('Ivan'),
		('Iven'),
		('Paul'),
		('North'),
		('Table'),
		('Vadum'),
		('Sashko'),
		('Laura'),
		('Sophiya'),
		('Nadiya'),
		('Vira'),
		('Yura'),
		('Oleg'),
		('Mykhajlo'),
		('Taras'),
		('Karina'),
		('Kateryna'),
		('Svitlana'),
		('Oleksiy'),
		('Matviy'),
		('Nata'),
		('Lyu'),
		('Dmytro'),
		('Lesya'),
		('Zahar'),
		('Katya'),
		('Marichka'),
		('Hanna'),
		('Lenna'),
		('Oscar'),
		('Cisko'),
		('Galyna'),
		('Rostyslav');

select * from employess ;

/* Таблица salary
Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
*/

create table salary(
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);
	
	select *from salary ;

	
/* Таблица roles
Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/
	
create table roles(
	id serial primary key,
	role_name varchar(30) unique not null
	)
	
insert into roles(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
	select * from roles ;

/*
 Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
 */

create table employee_salary (
	id serial primary key,
	id_employee_name int unique not null,
	id_monthly_salary int not null 
);

insert into employee_salary (id_employee_name, id_monthly_salary)
values (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(69, 13),
		(19, 3),
		(7, 5),
		(366, 8),
		(46, 15),
		(29, 13),
		(8, 14),
		(17, 7),
		(71, 10),
		(35, 11),
		(75, 12),
		(22, 1),
		(30, 5),
		(205, 4),
		(37, 8),
		(101, 9),
		(47, 9),
		(110, 10),
		(50, 4),
		(115, 1),
		(55, 7),
		(57, 6),
		(60, 15),
		(77, 11),
		(222, 3),
		(61, 8),
		(65, 9),
		(87, 10),
		(70, 2);
	
select * from employee_salary ;

/*
Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

*/

create table roles_employee (
	id serial primary key,
	id_employee_name int not null unique,
	id_role_name int not null,
	foreign key (id_employee_name) references employess (id),
	foreign key (id_role_name) references roles (id)
); 

insert into roles_employee (id_employee_name, id_role_name)
values (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(1, 2),
		(2, 14),
		(8, 3),
		(13, 5),
		(15, 15),
		(17, 8),
		(27, 1),
		(28, 4),
		(29, 3),
		(30, 16),
		(33, 12),
		(38, 6),
		(40, 13),
		(44, 10),
		(47, 12),
		(49, 9),
		(50, 19),
		(51, 17),
		(54, 1),
		(57, 18),
		(59, 11),
		(61, 8),
		(63, 17),
		(64, 5),
		(66, 3),
		(67, 18),
		(68, 6),
		(69, 7),
		(70, 20);
	
	select * from roles_employee ;

select * from roles;