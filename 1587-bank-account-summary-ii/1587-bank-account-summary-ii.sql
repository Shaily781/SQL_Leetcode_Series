/* Write your T-SQL query statement below */
Select 
    u.name NAME,
    sum(t.amount) BALANCE
From Transactions t
left join Users u
on u.account = t.account
group by u.name
having sum(t.amount) > 10000