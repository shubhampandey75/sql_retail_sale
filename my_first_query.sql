use my_db;
select *  from retail_sales limit 10;
select count(*) from retail_sales;
select *  from retail_sales 
where 
sale_date is null
or
sale_time is null
or
customer_id is null
or
gender is null
or
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
cogs is null
or
total_sale is null;

select distinct category from retail_sales;

# sales made on 2022-11-05
select * from retail_sales where sale_date = '11/5/2022';

#sales in each category
select category, sum(quantiy) from retail_sales where category in ("Clothing", "Beauty", "Electronics") group by category;

# sales in each category wirth 4 or more sales
select category, sum(quantiy) from retail_sales where category in ("Clothing", "Beauty", "Electronics") and quantiy>=4 group by category;

#sales in each category
select category, sum(total_sale) from retail_sales where category in ("Clothing", "Beauty", "Electronics") group by category;

# average age of the customer in each category
select category, avg(age) from retail_sales where category in ("Clothing", "Beauty", "Electronics") group by category;

#transaction where total sales is more than 1000
select * from retail_sales where total_sale>=1000;

#total no of sales made by each gender in each category
select category, gender, sum(total_sale) from retail_sales where category in ("Clothing", "Beauty", "Electronics") group by category, gender;

