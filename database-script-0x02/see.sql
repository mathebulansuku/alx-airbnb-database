-- Disable foreign key checks for clean inserts
SET FOREIGN_KEY_CHECKS = 0;

-- Clear existing data
TRUNCATE TABLE Reviews;
TRUNCATE TABLE Payments;
TRUNCATE TABLE Bookings;
TRUNCATE TABLE Properties;
TRUNCATE TABLE Users;

-- USERS
INSERT INTO Users (name, email, phone_number)
VALUES 
  ('Alice Johnson', 'alice@example.com', '123-456-7890'),
  ('Bob Smith', 'bob@example.com', '987-654-3210'),
  ('Carla Green', 'carla@example.com', '555-555-5555');

-- PROPERTIES
INSERT INTO Properties (owner_id, title, description, address, city, price_per_night)
VALUES 
  (1, 'Modern Loft', 'A stylish modern loft in downtown.', '123 Main St', 'New York', 150.00),
  (2, 'Cozy Cabin', 'A warm cabin in the woods.', '456 Forest Dr', 'Denver', 90.00),
  (1, 'Beach Bungalow', 'A sunny bungalow near the ocean.', '789 Shoreline Blvd', 'Miami', 200.00);

-- BOOKINGS
INSERT INTO Bookings (user_id, property_id, start_date, end_date, total_price, status)
VALUES 
  (2, 1, '2025-06-01', '2025-06-05', 600.00, 'confirmed'),
  (3, 2, '2025-06-10', '2025-06-15', 450.00, 'pending'),
  (3, 3, '2025-07-01', '2025-07-03', 400.00, 'confirmed');

-- PAYMENTS
INSERT INTO Payments (booking_id, amount, payment_method, status)
VALUES 
  (1, 600.00, 'credit_card', 'completed'),
  (2, 450.00, 'paypal', 'pending'),
  (3, 400.00, 'bank_transfer', 'completed');

-- REVIEWS
INSERT INTO Reviews (user_id, property_id, rating, comment)
VALUES 
  (2, 1, 5, 'Excellent stay! Clean and comfy.'),
  (3, 3, 4, 'Nice view and great location.'),
  (3, 2, 3, 'Cozy but a bit remote.');

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;
