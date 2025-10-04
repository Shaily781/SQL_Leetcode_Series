/* Write your T-SQL query statement below */
Select 
    p.product_id,
    p.product_name
From Product p
left join Sales s on p.product_id = s.product_id
Group by p.product_id, p.product_name
having min(s.sale_date) >= '2019-01-01' and max(s.sale_date) <= '2019-03-31'
