# 📐 ER Diagram Requirements

## 🎯 Objective

Design an **Entity-Relationship (ER) diagram** that models the relational structure of the Airbnb-like application database. This ERD serves as the foundation for database schema creation, normalization, and data seeding.

---

## ✅ Instructions

Follow the steps below to design and submit your ER diagram:

### 1. **Identify Entities and Attributes**

You should include, at minimum, the following **core entities**:

- **User**
  - id (PK)
  - name
  - email
  - phone_number
  - created_at

- **Property**
  - id (PK)
  - owner_id (FK → User)
  - title
  - description
  - address
  - city
  - price_per_night
  - created_at

- **Booking**
  - id (PK)
  - user_id (FK → User)
  - property_id (FK → Property)
  - start_date
  - end_date
  - total_price
  - status

- **Payment**
  - id (PK)
  - booking_id (FK → Booking)
  - amount
  - payment_date
  - payment_method
  - status

- **Review**
  - id (PK)
  - user_id (FK → User)
  - property_id (FK → Property)
  - rating
  - comment
  - created_at

Add other supporting entities if needed to ensure normalization and completeness.

---

### 2. **Define Relationships**

- A **User** can have multiple **Bookings**
- A **User** can own multiple **Properties**
- A **Property** can have multiple **Bookings**
- A **Booking** must belong to one **User** and one **Property**
- A **Booking** can have one **Payment**
- A **User** can write multiple **Reviews**
- A **Property** can receive multiple **Reviews**

Use crow's foot notation or UML-style cardinality as per your preference.

---

### 3. **Create the ER Diagram**

- Use **Draw.io** or another ERD tool (e.g., Lucidchart, dbdiagram.io)
- Include entity boxes with clearly labeled attributes
- Show **primary keys (PK)**, **foreign keys (FK)**, and relationships with proper lines and symbols
- Export your diagram as an image or PDF

---

## 🗂️ Repository Structure

Place your ER diagram files and related content as follows:

