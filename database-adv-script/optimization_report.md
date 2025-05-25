# Query Optimization Report

## Objective

Improve the performance of a query fetching booking, user, property, and payment information.

## Initial Query Overview

- Full join across 4 tables: `bookings`, `users`, `properties`, and `payments`
- Retrieved wide set of columns
- Detected performance bottlenecks through `EXPLAIN ANALYZE`

## Observed Issues

- Full table scans on large datasets
- Excessive data retrieved (unused columns)
- Non-indexed join fields impacted execution time

## Optimization Steps

- Reduced selected columns to essentials
- Used `LEFT JOIN` for `payments` to handle optional data
- Verified indexes exist on: `bookings.user_id`, `bookings.property_id`, `payments.booking_id`

## Performance Gains

- Execution time reduced significantly (based on EXPLAIN ANALYZE)
- Number of scanned rows decreased
- Improved join efficiency

## Files Updated

- `perfomance.sql`: contains both the initial and optimized queries
- `database_index.sql`: includes supporting indexes
