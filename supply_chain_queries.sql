-- ============================
-- BASIC QUERIES
-- ============================

-- Q1: Total Revenue per Product type
select product_type, sum(revenue_generated) as total_sales 
from supply_chain 
group by product_type 
order by total_sales desc;

-- Q2: SKU with the highest number of products sold
select sku, products_sold 
from supply_chain 
order by products_sold desc 
limit 1;

-- Q3: Products with defect rate > 4%
select product_type, sku, defect_rates 
from supply_chain 
where defect_rates > 4;

-- Q4: Total SKU count per Supplier
select supplier_name, count(sku) as total 
from supply_chain 
group by supplier_name 
order by total desc;

-- Q5: Average shipping cost per Transportation mode
select transportation_modes, avg(shipping_costs) as avg_cost 
from supply_chain 
group by transportation_modes;


-- ============================
-- INTERMEDIATE QUERIES
-- ============================

-- Q6: Average Lead time per Supplier (ascending order)
select supplier_name, avg(lead_time) as total_time 
from supply_chain 
group by supplier_name 
order by total_time asc;

-- Q7: HAVING - Product types with average Price > 50
select product_type, avg(price) as price 
from supply_chain 
group by product_type 
having avg(price) > 50;

-- Q8: CASE WHEN - Categorize products by defect rate
select product_type, defect_rates,
case 
    when defect_rates >= 3 then 'High Defect'
    when defect_rates >= 1 and defect_rates < 3 then 'Medium Defect'
    else 'Low Defect'
end as categorize
from supply_chain;

-- Q9: Total Production volumes per Location
select location, sum(production_volumes) as total 
from supply_chain 
group by location;

-- Q10: Count and average defect rate per Inspection result
select inspection_results, 
       avg(defect_rates) as avg_defect_rate, 
       count(defect_rates) as count_defect_rate 
from supply_chain 
group by inspection_results;
 