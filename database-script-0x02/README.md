# 🌱 Airbnb Sample Data Seeding

## 📄 Overview

This script (`seed.sql`) populates the Airbnb-like relational database with **realistic sample data**. It supports testing, development, and demo purposes by simulating common interactions across users, properties, bookings, payments, and reviews.

---

## 🧪 Sample Data Included

### ✅ Users

- 3 sample users with names, emails, and phone numbers

### ✅ Properties

- 3 unique listings associated with different users (owners)
- Varying price points and cities (New York, Denver, Miami)

### ✅ Bookings

- Multiple bookings across different users and properties
- Status variations: `confirmed`, `pending`

### ✅ Payments

- Associated with bookings
- Different payment methods and status states

### ✅ Reviews

- Feedback from users on properties
- Ratings between 3 and 5 with short comments

---

## ▶️ How to Run

Run the script from your SQL interface or command-line:

```bash
mysql -u your_user -p your_database < seed.sql
```
