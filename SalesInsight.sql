/*To show date table*/
SELECT * FROM sales.date;

/*To show transaction table*/
SELECT * FROM sales.transactions;

/*ALL transactions in 2020 join by date table*/
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2020;

/*ALL transactions in 2019 join by date table*/
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year=2019;

/*Total revenue in  2020*/
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 ;

/*Total revenue in  2019*/
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2019 ;

/*Average sales amount in 2020*/
SELECT AVG(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 ;

/*Average sales amount in 2019*/
SELECT AVG(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2019;

/*Maximum sales amount in 2019,*/
SELECT MAX(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2019 ;

/*Total revenue in year January,2020,*/
SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name='January' ;

/*Total revenue in year February,2020,*/
SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name='February' ;

/*Total revenue in 2020 in Chennai*/
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.market_code="Mark001";

/*Total revenue in 2020 in Mumbai*/
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.market_code="Mark002";

/*Products in Chennai*/
SELECT distinct product_code from sales.transactions where market_code='Mark001';

/*Products in Mumabi*/
SELECT distinct product_code from sales.transactions where market_code='Mark002';

/*Total revenue in January,2020 in Chennai*/
SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name='January' 
 and sales.transactions.market_code="Mark001";
 
 /*Total revenue in February,2020 in Chennai*/
 SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name='February' 
 and sales.transactions.market_code="Mark001";
 
 /*Total revenue in January,2020 in Mumbai*/
 SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name='January' 
 and sales.transactions.market_code="Mark002";
 
  /*Total revenue in February,2020 in Mumbai*/
 SELECT SUM(transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.date.month_name='February' and sales.transactions.market_code="Mark002";



