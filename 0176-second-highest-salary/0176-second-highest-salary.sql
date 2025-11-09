/* Write your T-SQL query statement below */

select max(salary) as secondHighestSalary from Employee
where salary < (select max(salary) from Employee)

