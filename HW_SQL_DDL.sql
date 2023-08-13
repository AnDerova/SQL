
'''1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null'''

create table employees(
id serial primary key,
employee_name varchar(50) not null
);

'''2. Наполнить таблицу employee 70 строками.'''

insert into employees (employee_name)
values 
('Quinlan'),
('Glenda'),
('Caryn'),
('Rudd'),
('Fran'),
('Gratiana'),
('Ellie'),
('Orin'),
('Paquito'),
('Erik'),
('Gay'),
('Jilly'),
('Malorie'),
('Domenico'),
('Jill'),
('Bryna'),
('Haze'),
('Maxi'),
('Gillian'),
('Galen'),
('Grantley'),
('Arnoldo'),
('Emmaline'),
('Ethyl'),
('Aleksandr'),
('Efren'),
('Flory'),
('Ignacio'),
('Lionel'),
('Riobard'),
('Basilio'),
('Tarrance'),
('Virgilio'),
('Dallon'),
('Merwin'),
('Damita'),
('Andreana'),
('Marrissa'),
('Fanechka'),
('Bambi'),
('Ted'),
('Hannie'),
('Florenza'),
('Bartholemy'),
('Coleman'),
('Rozelle'),
('Mina'),
('Carce'),
('Trevar'),
('Gabie'),
('Olimpia'),
('Lucais'),
('Jerry'),
('Alf'),
('Randi'),
('Brunhilde'),
('Kingston'),
('Cherlyn'),
('Gilbertine'),
('Amble'),
('Kellie'),
('Seana'),
('Liam'),
('Robbin'),
('Charles'),
('Kassie'),
('Lauri'),
('Sheff'),
('Adrea'),
('Adelaida');

select * from employees;

'''3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null'''

create table salary (
id serial primary key,
monthly_salary int not null
);

'''4. Наполнить таблицу salary 15 строками'''

insert into salary(monthly_salary)
values
(1000),
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
(2400),
(2500);

select * from salary;

'''5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null'''

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

'''6. Наполнить таблицу employee_salary 40 строками. В 10 строк из 40 вставить несуществующие employee_id'''

insert into employee_salary(employee_id, salary_id)
values 
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(2,1),
(4,2),
(6,3),
(21,4),
(22,5),
(51,6),
(50,7),
(14,8),
(13,9),
(24,10),
(41,11),
(42,12),
(43,13),
(44,14),
(45,15),
(46,16),
(47,1),
(61,2),
(63,3),
(80,4),
(79,5),
(78,6),
(77,7),
(76,7),
(75,8),
(74,9),
(73,10),
(72,11),
(71,12);

select * from employee_salary;

'''7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique'''

create table roles(
id serial primary key,
role_name int unique not null
);

select * from roles;

'''8. Поменять тип столба role_name с int на varchar(30)'''

alter table roles
alter column role_name type varchar(30);

'''9. Наполнить таблицу roles 20 строками'''

insert into roles(role_name)
values
('Junior Python developer'),
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
('Senior Automation QA engineer')
select * from roles;

'''10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
'''
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id));

'''11. Наполнить таблицу roles_employee 40 строками'''

insert into roles_employee(employee_id, role_id)
values 
(7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(56,3),
(34,4),
(6,7),
(21,1),
(24,2),
(25,3),
(26,4),
(27,5),
(28,6),
(29,7),
(30,8),
(31,9),
(32,10),
(36,11),
(37,12),
(38,13),
(41,14),
(42,15),
(44,16),
(45,17),
(46,18),
(51,19),
(52,20),
(53,19),
(54,18),
(63,17),
(65,16),
(66,15),
(67,14),
(68,13),
(69,12),
(70,11);
select * from roles_employee;