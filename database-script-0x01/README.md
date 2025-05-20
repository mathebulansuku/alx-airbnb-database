# 🗃️ Airbnb Database Schema

## 📄 Overview

This SQL script (`schema.sql`) defines the relational schema for the Airbnb-like application. It includes five core entities, complete with proper data types, constraints, and performance-optimized indexes.

---

## 🧱 Tables Defined

### 1. `Users`

Stores registered user information.

- `id` (PK)
- `name`, `email`, `phone_number`
- Timestamps
- Unique constraint on `email`

### 2. `Properties`

Represents listings owned by users.

- Linked to `Users` via `owner_id` (FK)
- Includes title, description, address, price, timestamps

### 3. `Bookings`

Captures booking details for properties.

- Linked to `Users` and `Properties`
- Includes dates, price, and status (`ENUM`)

### 4. `Payments`

Tracks payments made for bookings.

- Linked to `Bookings`
- Contains amount, date, method, and status

### 5. `Reviews`

User-generated feedback for properties.

- Linked to `Users` and `Properties`
- Stores rating (1–5) and comments

---

## 🛠 Constraints and Indexes

- All foreign keys use `ON DELETE CASCADE` for integrity
- Indexes on frequently queried fields:
  - `email`, `city`, `user_id`, `property_id`, `booking_id`
- ENUMs used for controlled values like status and payment methods

---

## ▶️ How to Run

```bash
mysql -u your_user -p your_database < schema.sql
```
