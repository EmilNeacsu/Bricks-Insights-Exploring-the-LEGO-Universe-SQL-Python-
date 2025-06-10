# 🧱 Bricks & Insights: Exploring the LEGO Universe

This project explores the world of LEGO sets using a relational database that I designed and built from scratch. By combining SQL and Python, I performed exploratory data analysis (EDA) to extract insights from a structured LEGO dataset, including themes, sets, parts, colors, and minifigures.

---

## 📊 Project Overview

Main objectives:
- Track the evolution of LEGO sets over time
- Analyze the most used colors and part types
- Discover the most popular LEGO themes and subthemes
- Examine relationships between sets, parts, and minifigures
- Practice SQL-based querying on a normalized schema

---

## 🧱 Database Schema and SQL Setup

The SQL schema was manually created using PostgreSQL (or compatible SQL dialect), based on the structure of Rebrickable datasets.

Key tables:
- `sets`, `themes`, `colors`, `parts`, `minifigs`
- Join tables like `inventory_parts`, `inventory_sets`, `inventory_minifigs`
- Relational mappings: themes hierarchy, part relationships, inventory structure

To create the schema:
```sql
-- Run this SQL script
sql_create_base.sql
