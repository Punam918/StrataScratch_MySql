-- Find the date when Apple's opening stock price reached its maximum

-- Table: aapl_historical_stock_price

select date from aapl_historical_stock_price
where open = (select max(open) from aapl_historical_stock_price);