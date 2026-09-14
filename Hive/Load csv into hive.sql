LOAD DATA INPATH '/ecommerce/input/ecommerce_transactions.csv'
INTO TABLE ecommerce_raw;

SELECT COUNT(*) FROM ecommerce_raw;
