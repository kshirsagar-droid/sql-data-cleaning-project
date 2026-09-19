# SQL Data Cleaning Project

A hands-on SQL project where I clean a messy orders dataset using **PostgreSQL**, turning raw, inconsistent data into a clean table that is ready for analysis and reporting.

## Objective

Clean a messy orders dataset using SQL so the data is accurate, consistent and usable for analysis.

## Tools Used

- PostgreSQL
- pgAdmin (Query Tool)

## Dataset

The dataset is an orders table with these columns:

| Column | Description |
|---|---|
| `order_id` | Unique order number |
| `customer_name` | Name of the customer |
| `email` | Customer email address |
| `city` | Customer city |
| `order_date` | Date the order was placed |
| `amount` | Order amount |

## Data Issues Identified

- Duplicate records
- NULL emails
- Invalid email formats
- Extra spaces in customer names
- City spelling mistakes
- Multiple date formats
- Missing dates
- Negative order amounts

## Cleaning Steps

| Query | Task |
|---|---|
| 1 | Detect duplicates |
| 2 | Remove duplicates |
| 3 | Detect NULL emails |
| 4 | Replace missing emails |
| 5 | Detect invalid emails |
| 6 | Fix invalid emails |
| 7 | Trim customer name spaces |
| 8 | Fix city spelling |
| 9 | Trim city spaces |
| 10-12 | Standardize date formats |
| 13-14 | Handle missing dates |
| 15 | Fix negative amounts |
| 16 | Replace NULL amounts |

## Final Step

Converted column datatypes to the correct SQL datatypes (for example, text to `INTEGER`, `DATE` and `NUMERIC`).

## Skills Demonstrated

- Data cleaning and data quality checks in SQL
- Finding and removing duplicate records
- Handling NULL and missing values
- Standardizing text and date formats
- Fixing invalid and inconsistent data
- Changing column data types with `ALTER TABLE`

## Project Files

- [documentation.md](documentation.md) - detailed cleaning report
- [sql_queries.sql](sql_queries.sql) - all SQL cleaning queries
- [data_cleaninig_project_raw_dataset.csv](data_cleaninig_project_raw_dataset.csv) - raw dataset before cleaning

## Author

**Om Kshirsagar**
Aspiring Data Analyst | MIS Executive | Power BI | SQL | Excel

- GitHub: [kshirsagar-droid](https://github.com/kshirsagar-droid)
- LinkedIn: [om-kshirsagar-data](https://www.linkedin.com/in/om-kshirsagar-data)
