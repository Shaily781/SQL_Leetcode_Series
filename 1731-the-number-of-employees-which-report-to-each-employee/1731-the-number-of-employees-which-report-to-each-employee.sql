/* Write your T-SQL query statement below */
Select 
    m.employee_id, 
    m.name, 
    count(e.reports_to) reports_count,
    round(avg(e.age*1.00),0) average_age
From Employees e, Employees m
where e.reports_to = m.employee_id 
group by m.employee_id, m.name 
order by m.employee_id