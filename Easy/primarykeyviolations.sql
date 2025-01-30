-- Write a query to return all Customers (cust_id) who are violating primary key constraints in the Customer Dimension (dim_customer) i.e. those Customers who are present more than once in the Customer Dimension.
-- For example if cust_id 'C123' is present thrice then the query should return two columns, value in first should be 'C123', while value in second should be 3

-- Table: dim_customer

select cust_id,count(*) from dim_customer
group by cust_id
having count(*)>1;