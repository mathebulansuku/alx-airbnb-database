# Partitioning Performance Report

## Objective

To optimize query performance on the large `bookings` table by implementing range-based table partitioning using the `start_date` column.

## Implementation

- Created `bookings_partitioned` table partitioned by year using `start_date`.
- Created partitions: `bookings_2023`, `bookings_2024`, `bookings_2025`.
- Applied relevant indexes to individual partitions.

## Query Performance

### Test Query

```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
```
