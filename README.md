# 🛒 Retail Sales Analytics – SQL Data Warehouse Project

This project simulates an end-to-end data analytics pipeline for a fictional retail company. It covers everything from raw data import and dimensional modeling to custom reporting via stored procedures. Built entirely in SQL Server, it demonstrates how structured data and well-defined models can be used to uncover powerful business insights.

---

## 🎯 Project Goal

To build a scalable retail data warehouse that supports flexible, meaningful analysis of:
- Sales trends across time
- Regional performance by product category
- Customer retention rates
- Payment behavior in high-revenue areas

---

## 🧱 What I Built

### 🔹 1. **Relational Data Model (OLTP)**
Created normalized base tables for `Customers`, `Products`, `Stores`, `Orders`, and `OrderItems` to simulate a transactional retail system.

### 🔹 2. **Star Schema (Dimensional Model)**
Modeled a warehouse using a **fact table** and **four dimensions**:
- `FactSales`
- `DimCustomers`, `DimProducts`, `DimStores`, `DimDates`

### 🔹 3. **ETL Scripts**
- Loaded raw data using `BULK INSERT`
- Transformed and populated dimension and fact tables using `INSERT INTO ... SELECT`

### 🔹 4. **Stored Procedures for Analysis**
Wrote analytical procedures to answer key business questions:

#### ✅ `GETSALESSUMMARY`
- Total and average sales by **day**, **month**, and **year**
  
#### ✅ `GET_SALES_BY_CATEGORY_REGION`
- Total and average sales grouped by **product category and store region**

#### ✅ `GET_RETAINED_CUSTOMERS`
- Percentage of customers who made **at least X orders**  
- Highlights **customer retention trends**

#### ✅ `GET_PAYMENT_DISTRIBUTION`
- Shows **payment method distribution** in the **top revenue-generating region**

---

## 📂 Project Structure
```
retail-sales-sql/
│
├── create query.sql # OLTP tables (Customers, Products, Orders, etc.)
├── import data.sql # Import raw data using BULK INSERT
├── Creating the model.sql # Star schema: Dimensions and Fact table
├── populating dimension model.sql # ETL: Load data into dimensional model
│
├── GET_SALES_SUMMARY.sql # Sales trends by day, month, year
├── GET_SALES_BY_CATEGORY_REGION.sql # Sales by product category and region
├── GET_RETAINED_CUSTOMERS.sql # Customer retention based on order count
├── GET_PAYMENT_DISTRIBUTION.sql # Payment method breakdown in top region
```

---

## 📌 Key Takeaways

- Implemented both **OLTP** and **OLAP** schemas from scratch
- Designed an efficient star schema and **dimensionally modeled** the retail domain
- Automated insightful reports using **stored procedures**
- Reinforced concepts like **foreign key constraints**, **aggregate functions**, and **data transformation**

---

## ⚠️ Usage Notice

This project is for **educational and portfolio purposes only**.  
Please do not reuse or distribute without permission.

---

## 📫 About Me

Hi! I’m **Devanshi Sharma**, a data enthusiast who enjoys solving business problems with structured thinking and clean SQL.  
You can reach out to me or connect on [LinkedIn](https://www.linkedin.com/in/sharmadevanshi2000).

