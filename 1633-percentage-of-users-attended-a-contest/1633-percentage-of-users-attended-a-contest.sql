/* Write your T-SQL query statement below */
Select 
    contest_id, 
    round(count(user_id) * 100.0 / (select count(user_id) from Users),2) as percentage 
From Register
group by contest_id
order by percentage desc, contest_id