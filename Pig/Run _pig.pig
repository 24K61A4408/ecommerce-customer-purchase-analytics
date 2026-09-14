pig clean_data.pig

hadoop fs -ls /ecommerce/cleaned

hadoop fs -cat /ecommerce/cleaned/part-00000 | wc -l
