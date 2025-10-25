/* Write your T-SQL query statement below */
Select Distinct num ConsecutiveNums
From (
    Select 
        lag(id) over(order by id) prev_id,
        id,
        lead(id) over (order by id) next_id,
        lag(num) over (order by id) prev_num,
        num,
        lead(num) over (order by id) next_num
    from Logs
) subqr
where id - prev_id = 1 and next_id - id = 1
and num = prev_num and next_num = num
