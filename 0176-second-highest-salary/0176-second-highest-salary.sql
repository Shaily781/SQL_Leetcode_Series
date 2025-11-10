/* Write your T-SQL query statement below */

With SalaryRank As (
    Select salary,
    dense_rank() over (order by salary desc) as rnk
    from Employee
)
Select isnull((Select salary from SalaryRank where rnk = 2), NULL) SecondHighestSalary 











/*
Select isnull(
    (Select Distinct salary
    From Employee
    Order by salary Desc
    Offset 1 rows fetch next 1 rows only),NULL
) SecondHighestSalary 
*/





/*
Select isnull(
    (Select Distinct Top 1 salary
    From Employee
    where salary < (Select max(salary) from Employee)
    Order by salary Desc),NULL
) SecondHighestSalary 
*/