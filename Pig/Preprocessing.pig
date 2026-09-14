nano clean_data.pig

raw_data = LOAD '/ecommerce/input/ecommerce_transactions.csv'
USING PigStorage(',')
AS (
    transaction_id:chararray,
    customer_id:chararray,
    transaction_date:chararray,
    product_id:chararray,
    product_name:chararray,
    category:chararray,
    quantity:int,
    unit_price:double,
    total_amount:double,
    payment_method:chararray,
    city:chararray,
    device_type:chararray,
    customer_rating:int
);

no_header = FILTER raw_data BY transaction_id != 'Transaction_ID';

clean_data = FILTER no_header BY
    transaction_id IS NOT NULL
    AND customer_id IS NOT NULL
    AND product_id IS NOT NULL
    AND quantity IS NOT NULL
    AND total_amount IS NOT NULL;

unique_data = DISTINCT clean_data;

STORE unique_data
INTO '/ecommerce/cleaned'
USING PigStorage(',');
