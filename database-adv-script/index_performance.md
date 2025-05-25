# Index Performance Analysis

## Objective

To identify high-impact columns and create indexes that optimize the performance of frequent queries on the `users`, `bookings`, and `properties` tables.

## Identified Columns

| Table      | Column      | Usage                 |
| ---------- | ----------- | --------------------- |
| users      | email       | WHERE, JOIN           |
| bookings   | user_id     | JOIN, WHERE, ORDER BY |
| bookings   | property_id | JOIN, WHERE           |
| bookings   | created_at  | ORDER BY, WHERE       |
| properties | location    | WHERE                 |
| properties | host_id     | JOIN, WHERE           |

## Indexes Created

```sql
-- See database_index.sql for full list of indexes
```
