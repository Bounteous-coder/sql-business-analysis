# SQL Business Analysis Portfolio Project

This project demonstrates Data Analyst readiness through SQL problem-solving and insight communication.

## Objectives

- Answer real business questions with SQL
- Show competence in joins, CTEs, and window functions
- Present concise, stakeholder-ready insights

## Suggested Dataset

Use one of:

- PostgreSQL sample: dvdrental
- Northwind dataset
- Kaggle retail sales dataset imported into PostgreSQL

## Project Structure

- sql/: ordered query scripts
- analysis/: insight summaries and assumptions
- jira/: analyst stories and acceptance criteria

### SQL Script Order

1. 00_schema.sql
2. 00_seed_data.sql
3. 01_business_kpis.sql
4. 02_revenue_by_segment.sql
5. 03_monthly_trend.sql
6. 04_top_products.sql
7. 05_customer_retention.sql

## How to Use

1. Create a PostgreSQL database (example: `portfolio_analytics`).
2. Run setup scripts first:

```bash
psql -d portfolio_analytics -f sql/00_schema.sql
psql -d portfolio_analytics -f sql/00_seed_data.sql
```

3. Run analysis scripts in numeric order (`01` to `05`).
4. Capture output screenshots or exported CSV files.
5. Write findings in analysis/EXECUTIVE_SUMMARY_TEMPLATE.md.

## Windows Setup (If psql Is Not Recognized)

1. Install PostgreSQL (Windows):

```powershell
winget install -e --id PostgreSQL.PostgreSQL
```

2. Close and reopen PowerShell.
3. Verify installation:

```powershell
psql --version
```

4. If still not recognized, run with full path (adjust version if needed):

```powershell
& "C:\Program Files\PostgreSQL\17\bin\psql.exe" -d portfolio_analytics -f sql/00_schema.sql
& "C:\Program Files\PostgreSQL\17\bin\psql.exe" -d portfolio_analytics -f sql/00_seed_data.sql
```

## Quick Verify Queries

```sql
SELECT COUNT(*) AS customers FROM customers;
SELECT COUNT(*) AS orders FROM orders;
SELECT COUNT(*) AS order_items FROM order_items;
```

## Recruiter Evidence Checklist

- SQL scripts with increasing complexity
- Business question to query mapping
- Short executive summary with recommendations
- Jira workflow screenshots
