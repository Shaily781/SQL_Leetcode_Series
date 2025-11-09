/* Write your T-SQL query statement below */
Select isnull(
    (Select Distinct Top 1 salary
    From Employee
    where salary < (Select max(salary) from Employee)
    Order by salary Desc),NULL
) SecondHighestSalary 
