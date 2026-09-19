# SQL Data Cleaning Project

This project demonstrates how to clean messy data using SQL.

## Dataset

The dataset contains customer order records with several data quality issues such as:

- Duplicate records
- Missing emails
- Invalid email formats
- Extra spaces in text columns
- Incorrect city names
- Multiple date formats
- Missing dates
- Negative order amounts

## Tools Used

- SQL
- PostgreSQL (pgAdmin)
- CSV Dataset

## Data Cleaning Steps

1. Detect and remove duplicate records
2. Handle NULL email values
3. Fix invalid email formats
4. Remove extra spaces from text fields
5. Correct city spelling mistakes
6. Standardize multiple date formats
7. Replace missing dates
8. Fix negative and NULL amounts
9. Convert columns to proper datatypes

## SQL Concepts Used

- GROUP BY
- HAVING
- DELETE
- UPDATE
- TRIM
- Regular expressions (email validation)
- TO_DATE
- ALTER TABLE

## Final Result

The dataset is cleaned and standardized, making it ready for analysis.

## Project Structure

- [`data_cleaninig_project_raw_dataset.csv`](data_cleaninig_project_raw_dataset.csv) - raw CSV dataset
- [`sql_queries.sql`](sql_queries.sql) - SQL cleaning queries
- [`documentation.md`](documentation.md) - detailed cleaning steps
- `README.md` - project overview

## Author

**Om Kshirsagar**
Aspiring Data Analyst | MIS Executive | Power BI | SQL | Excel

- GitHub: [kshirsagar-droid](https://github.com/kshirsagar-droid)
- LinkedIn: [om-kshirsagar-data](https://www.linkedin.com/in/om-kshirsagar-data)
