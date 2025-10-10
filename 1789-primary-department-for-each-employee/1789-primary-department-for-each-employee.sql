/* Write your T-SQL query statement below */
Select 
    employee_id,
    department_id
From (Select *, count(*) over(partition by employee_id) empid from Employee) t
Where (empid = 1) or (empid !=1 and primary_flag = 'Y')