-- Question 1
select 
	emp.emp_no,emp.last_name,emp.first_name,emp.gender,sal.salary
from employees emp
	left join salaries sal
	on (emp.emp_no = sal.emp_no)
order by emp_no

-- Question 2
select * from employees
where hire_date between '1986-01-01' and '1986-12-31'

-- Question 3
select 
	d.dept_no, d.dept_name, dm.emp_no, emp.last_name, emp.first_name, dm.from_date, dm.to_date	
from dept_manager dm 
	inner join departments d  
	on (dm.dept_no = d.dept_no)
	inner join employees emp
	on (emp.emp_no = dm.emp_no)

-- Question 4
select 
	d.dept_name, emp.emp_no, emp.last_name, emp.first_name
	from employees emp
	inner join dept_emp de
	on (emp.emp_no = de.emp_no)
	inner join departments d
	on (de.dept_no = d.dept_no)
order by emp_no
	
--  Question 5
select * from employees emp
	where emp.first_name = 'Hercules' 
	and emp.last_name like 'B%'
	
-- Question 6
select 
	d.dept_name, emp.emp_no, emp.last_name, emp.first_name
	from employees emp
	inner join dept_emp de
	on (emp.emp_no = de.emp_no)
	inner join departments d
	on (de.dept_no = d.dept_no)
	where d.dept_name = 'Sales'
order by emp_no

-- Question 7
select 
	d.dept_name, emp.emp_no, emp.last_name, emp.first_name
	from employees emp
	inner join dept_emp de
	on (emp.emp_no = de.emp_no)
	inner join departments d
	on (de.dept_no = d.dept_no)
	where d.dept_name = 'Sales' and d.dept_name = 'Development'
order by emp_no
	
-- Question 8
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc

