# 🏠 ALX Airbnb Database Project

This project is part of the ALX Airbnb Database Module. It focuses on designing and building a robust, scalable relational database system for an Airbnb-like application. The tasks encompass end-to-end development of the database, including design, normalization, schema creation, and data population.

---

## 📘 Table of Contents

- [About the Project](#about-the-project)
- [Learning Objectives](#learning-objectives)
- [Requirements](#requirements)
- [Key Tasks](#key-tasks)
  - [Task 1: ER Diagram](#task-1-er-diagram)
  - [Task 2: Normalization](#task-2-normalization)
  - [Task 3: SQL Schema](#task-3-sql-schema)
  - [Task 4: Data Seeding](#task-4-data-seeding)
- [Best Practices](#best-practices)
- [How to Run](#how-to-run)
- [Contributing](#contributing)

---

## 📖 About the Project

This project simulates a production-level database system for a property rental platform, inspired by Airbnb. By completing the tasks, you'll demonstrate your ability to:

- Design a complex relational database from scratch
- Optimize structure through normalization
- Implement robust SQL schema with constraints and indexing
- Populate the database with realistic, testable data

---

## 🎯 Learning Objectives

- Apply advanced database design principles to model real-world systems
- Normalize data up to the Third Normal Form (3NF) to ensure efficiency and integrity
- Use SQL DDL to define robust database schemas
- Write SQL DML scripts to seed databases with realistic sample data
- Follow professional standards for documentation, collaboration, and submission

---

## ✅ Requirements

To complete the project successfully, you should:

- Understand relational databases and SQL fundamentals
- Be able to use Draw.io or similar tools for ERD design
- Know normalization principles (1NF, 2NF, 3NF)
- Be comfortable using Git and GitHub
- Follow industry best practices for database schema design and scripting

---

## 📌 Key Tasks

### Task 1: ER Diagram

- Identify and define core entities such as:
  - Users
  - Properties
  - Bookings
  - Payments
  - Reviews
- Model relationships with proper cardinality
- Create an ERD using [Draw.io](https://draw.io) or similar tools
- Ensure clarity in foreign key associations and entity attributes

### Task 2: Normalization

- Start from unnormalized data
- Apply:
  - **1NF**: Eliminate repeating groups
  - **2NF**: Remove partial dependencies
  - **3NF**: Remove transitive dependencies
- Result in a fully normalized schema with non-redundant, atomic data

### Task 3: SQL Schema

- Write SQL DDL scripts to create tables with:
  - `PRIMARY KEY` and `FOREIGN KEY` constraints
  - Additional constraints like `NOT NULL`, `UNIQUE`, `CHECK`
  - Indexes for performance (e.g., on user emails, property locations)
- Use consistent and meaningful naming conventions

### Task 4: Data Seeding

- Write SQL DML scripts to populate the database with:
  - Realistic sample users
  - Properties with location, descriptions, prices
  - Bookings with valid date ranges and user-property associations
  - Payment records tied to bookings
- Respect referential integrity in insertion order

---

## 🛠 Best Practices

- Comment your SQL code for clarity
- Use transactions during data inserts for consistency
- Validate schema using a DBMS like MySQL/PostgreSQL
- Commit work incrementally with meaningful messages
- Include screenshots of ERD in your documentation

---

## ▶ How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/airbnb-database-project.git
   cd airbnb-database-project
