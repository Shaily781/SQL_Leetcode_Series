/* Write your T-SQL query statement below */
Select 
    u.name, 
    coalesce(sum(r.distance), 0) as travelled_distance 
From Users u
left join Rides r
on u.id = r.user_id
group by u.id, u.name
order by sum(r.distance) desc