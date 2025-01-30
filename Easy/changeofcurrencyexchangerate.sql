
-- You are given a list of exchange rates from various currencies to US Dollars (USD) in different months. Show how the exchange rate of all the currencies changed in the first half of 2020. Output the currency code and the difference between values of the exchange rate between July 1, 2020 and January 1, 2020.

-- Table: sf_exchange_rate

SELECT 
    source_currency, 
    MAX(CASE WHEN date = '2020-07-01' THEN exchange_rate END) -
    MAX(CASE WHEN date = '2020-01-01' THEN exchange_rate END) AS rate_difference
FROM sf_exchange_rate
WHERE target_currency = 'USD' 
AND date IN ('2020-01-01', '2020-07-01')
GROUP BY source_currency;