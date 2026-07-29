-- DATE Functions Excercise
SELECT COUNT(DISTINCT `Customer ID`) AS unique_customers, --Counting different customers in the table
        Date,
        YEAR(Date) AS trans_year,           --Extracts the year from the date column
        MONTH(Date) AS trans_month,         --Extracts the month from the day column
        MONTHNAME(Date) AS trans_name,      --Extracts the month name from the date column
        DAY(Date) AS trans_day,             --Extract the day from the date column
        DAYNAME(Date) AS trans_day_name,    --Extracts the name of the day from the date column
       
        SUM(`Total Amount`) AS revenue,      --Calculate the total revenue
        `Product Category`
FROM workspace.default.retail_sales_dataset
GROUP BY ALL;   --Grouping data based on all the columns that are nit aggregated in my select statements
