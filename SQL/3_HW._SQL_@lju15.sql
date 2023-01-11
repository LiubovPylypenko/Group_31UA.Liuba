-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select Employees.employee_name, Salary.monthly_salary
from Employees left join Employee_salary
on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id ;

select * from employees;

select * from employee_salary ;


-- 2. Вывести всех работников у которых ЗП меньше 2000.
select *
from Employees join Employee_salary
on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000 ;


-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select Salary.monthly_salary 
from Employees right join Employee_salary
on Employees.id = employee_salary.employee_id
right join salary on salary.id = employee_salary.salary_id
where Employees.id is null;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select Salary.monthly_salary 
from Employees right join Employee_salary
on Employees.id = employee_salary.employee_id
right join salary on salary.id = employee_salary.salary_id
where Employees.id is null and monthly_salary < 2000 ;

-- 5. Найти всех работников кому не начислена ЗП.
select Employees.id, Employees.employee_name 
from Employees left join Employee_salary
on Employees.id = employee_salary.employee_id
where employee_salary.employee_id is null ;

 --6. Вывести всех работников с названиями их должности.
select Employees.employee_name, Roles.role_name 
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id ;

select * from roles ;
select * from roles_employee ;

 --7. Вывести имена и должность только Java разработчиков.
select Employees.employee_name, roles.role_name 
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Java %';

--8. Вывести имена и должность только Python разработчиков.
select Employees.employee_name, roles.role_name 
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';
 
 --9. Вывести имена и должность всех QA инженеров.
select Employees.employee_name, roles.role_name 
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select Employees.employee_name, roles.role_name 
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';

 --11. Вывести имена и должность автоматизаторов QA
select Employees.employee_name, roles.role_name 
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
left join Employee_salary on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

 --14. Вывести имена и зарплаты Senior специалистов
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Java %';

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
left join Employee_salary on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Java %';

 --16. Вывести зарплаты Python разработчиков
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Python%';

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
left join Employee_salary on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python%';

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
left join Employee_salary on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python%';

 --18. Вывести имена и зарплаты Middle JS разработчиков
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior JavaScript%';

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
left join Employee_salary on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior JavaScript%';

 --20. Вывести зарплаты Junior QA инженеров
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%QA%';

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
left join Employee_salary on Employees.id = employee_salary.employee_id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%QA%';

 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary) as avg_QA_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%QA%';

 --22. Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary) as sum_JS_dev_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript%developer%';

 --23. Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) as min_QA_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';
 
 --24. Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) as max_QA_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';

 --25. Вывести количество QA инженеров
select count(employees.id) as count_QA
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';
 
 --26. Вывести количество Middle специалистов.
select count(employees.id) as count_Middle
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

 --27. Вывести количество разработчиков
 select count(employees.id) as count_dev
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
 select sum(salary.monthly_salary) as sum_dev_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
order by salary.monthly_salary;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300
order by salary.monthly_salary;

select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary >= 1700 and monthly_salary <= 2300
order by salary.monthly_salary;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary <= 2300
order by salary.monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select Employees.employee_name, roles.role_name, salary.monthly_salary
from Employees join Roles_employee on Employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join Employee_salary on Employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by salary.monthly_salary;

