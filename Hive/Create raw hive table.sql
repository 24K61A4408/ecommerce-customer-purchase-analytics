CREATE TABLE ecommerce_raw (
    transaction_id STRING,
    customer_id STRING,
    transaction_date STRING,
    product_id STRING,
    product_name STRING,
    category STRING,
    quantity INT,
    unit_price DOUBLE,
    total_amount DOUBLE,
    payment_method STRING,
    city STRING,
    device_type STRING,
    customer_rating INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';
