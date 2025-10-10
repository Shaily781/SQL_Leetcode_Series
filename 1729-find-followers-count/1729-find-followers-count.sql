/* Write your T-SQL query statement below */
Select 
    user_id,
    count(*) followers_count
From Followers
group by user_id
order by user_id