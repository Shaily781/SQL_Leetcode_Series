/* Write your T-SQL query statement below */
Select 
    event_day day,
    emp_id,
    sum(out_time) - sum(in_time) total_time
From Employees
group by event_day, emp_id
