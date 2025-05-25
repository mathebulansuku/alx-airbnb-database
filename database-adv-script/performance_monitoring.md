# Database Performance Monitoring and Optimization

## Objective

Monitor query execution using tools like `EXPLAIN ANALYZE` and refine schema or indexing to reduce execution time and resource use.

## Monitored Queries

### Query 1: User Booking Lookup

```sql
SELECT * FROM bookings WHERE user_id = 10 ORDER BY start_date DESC;
```
