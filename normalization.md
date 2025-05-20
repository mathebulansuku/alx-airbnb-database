# 🧮 Normalization Process

## 🎯 Objective

Ensure that the Airbnb-like database design adheres to **Third Normal Form (3NF)** to eliminate data redundancy, enhance data integrity, and support efficient query performance.

---

## ✅ Instructions Followed

1. Reviewed the initial unnormalized schema based on the ERD.
2. Identified partial and transitive dependencies.
3. Applied normalization rules step by step up to 3NF.
4. Adjusted entities and relationships to comply with normalization standards.
5. Documented each stage of the process below.

---

## 🔄 Step-by-Step Normalization

### 🔹 Unnormalized Form (UNF)

An unnormalized version might have a flat structure like:

| user_id | name | email | property_id | title | address | booking_id | start_date | payment_id | amount |
|---------|------|-------|-------------|-------|---------|------------|------------|------------|--------|

This table contains multiple entity types (users, properties, bookings, payments), violating normalization principles.

---

### 🔹 First Normal Form (1NF)

**1NF Rule:** Eliminate repeating groups and ensure each column has atomic values.

✅ Fixes:
- Separated data into distinct tables: `Users`, `Properties`, `Bookings`, `Payments`
- Ensured all fields are atomic (e.g., split address into one line, no multi-value fields)

---

### 🔹 Second Normal Form (2NF)

**2NF Rule:** Remove partial dependencies (non-key attributes must depend on the full primary key).

✅ Fixes:
- In the `Bookings` table, moved user and property details to their respective `Users` and `Properties` tables
- Ensured `Bookings` only contains data dependent on its own primary key (`booking_id`)

---

### 🔹 Third Normal Form (3NF)

**3NF Rule:** Eliminate transitive dependencies (non-key attributes must not depend on other non-key attributes).

✅ Fixes:
- In `Properties`, moved owner information to `Users` (using `owner_id` as a foreign key)
- In `Payments`, ensured payment method and amount only depend on `payment_id`, and not on `Booking` attributes
- Introduced `Reviews` as a separate table to store feedback, linked to both `Users` and `Properties`

---

## 🏗️ Final Tables Overview (Post-Normalization)

### `Users`
- `id` (PK)
- `name`
- `email`
- `phone_number`
- `created_at`

### `Properties`
- `id` (PK)
- `owner_id` (FK → Users)
- `title`
- `description`
- `address`
- `city`
- `price_per_night`
- `created_at`

### `Bookings`
- `id` (PK)
- `user_id` (FK → Users)
- `property_id` (FK → Properties)
- `start_date`
- `end_date`
- `total_price`
- `status`

### `Payments`
- `id` (PK)
- `booking_id` (FK → Bookings)
- `amount`
- `payment_date`
- `payment_method`
- `status`

### `Reviews`
- `id` (PK)
- `user_id` (FK → Users)
- `property_id` (FK → Properties)
- `rating`
- `comment`
- `created_at`

---

## 🧾 Summary

- All tables are in **3NF**, with no partial or transitive dependencies.
- Redundancy is minimized across entities.
- Referential integrity is maintained via foreign key relationships.
- The schema is now optimized for scalability and maintainability.

