/* Write your T-SQL query statement below */
Select p.product_name,
sum(o.unit) as unit
From Products p
Left Join Orders o
on p.product_id = o.product_id
where o.order_date between '2020-02-01' and '2020-02-29'
Group by p.product_name
having sum(o.unit) >= 100