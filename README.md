# postgresql-supply-chain-database

A PostgreSQL project analyzing supply chain data using SQL queries and aggregations.

## Tools Used
- PostgreSQL
- pgAdmin 4

## Files
- `supply_chain_table.sql`: CREATE TABLE script for the supply_chain table
- `supply_chain_queries.sql`: 10 business questions, split into Basic and Intermediate levels

## What's Inside

### Basic Queries (Q1-Q5)
- Total revenue per product type
- SKU with the highest number of products sold
- Products with a defect rate above 4%
- Total SKU count per supplier
- Average shipping cost per transportation mode

### Intermediate Queries (Q6-Q10)
- Average lead time per supplier
- Product types with an average price above 50
- Categorizing products by defect rate (High, Medium, Low)
- Total production volume per location
- Count and average defect rate per inspection result

## SQL Concepts Used
- Aggregate functions: SUM, AVG, COUNT
- GROUP BY and HAVING
- ORDER BY and LIMIT
- WHERE filtering
- CASE WHEN for categorization

## Dataset
 Supply chain dataset 
