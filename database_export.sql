-- ASH Cafe Database Export
-- Generated on 2025-08-22

-- Create database
CREATE DATABASE "ash-cafe";

-- Use the database
\c ash-cafe;

-- Create tables
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    address VARCHAR(250),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE menuitems (
    item_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    price NUMERIC(5,2) NOT NULL,
    availability BOOLEAN DEFAULT true,
    image_url TEXT
);

CREATE TABLE chefs (
    chef_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    bio TEXT,
    image_url TEXT
);

CREATE TABLE gallery (
    gallery_id SERIAL PRIMARY KEY,
    image_url TEXT NOT NULL,
    description TEXT,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE features (
    feature_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    image_url TEXT
);

CREATE TABLE offers (
    offer_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    discount_percent INTEGER,
    image_url TEXT,
    valid_until DATE
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(250),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orderitems (
    orderitem_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
    item_id INTEGER NOT NULL REFERENCES menuitems(item_id) ON DELETE CASCADE,
    quantity INTEGER NOT NULL,
    price NUMERIC(5,2) NOT NULL
);

-- Insert sample data
-- Menu Items
INSERT INTO menuitems (name, description, price, availability, image_url) VALUES
('Cappuccino', 'A perfect blend of espresso, steamed milk, and frothy foam for a creamy delight.', 4.00, true, '/uploads/image-1732388548846.jpg'),
('Latte', 'Smooth and creamy, our latte combines espresso with steamed milk and a touch of foam.', 4.50, true, '/uploads/image-1732388568460.jpg'),
('Americano', 'A strong and bold coffee made by diluting espresso with hot water.', 3.50, true, '/uploads/image-1732388582808.jpg'),
('Mocha', 'A delicious mix of espresso, steamed milk, and rich chocolate syrup.', 5.00, true, '/uploads/image-1732388600547.jpg'),
('Flat White', 'A balanced blend of espresso and velvety steamed milk with a thin layer of microfoam.', 4.25, true, '/uploads/image-1732388616414.jpg'),
('Macchiato', 'A bold espresso with a dollop of steamed milk, creating a strong yet smooth flavor.', 3.75, true, '/uploads/image-1732388628265.jpg'),
('Cold Brew', 'Smooth and refreshing, our cold brew is steeped for hours to extract the best flavors!', 4.00, true, '/uploads/image-1732730061573.jpg');

-- Chefs
INSERT INTO chefs (name, specialty, bio, image_url) VALUES
('Sophie Bennett', 'Latte Art Expert & Trainer', 'Specializes in latte art and trains others in the craft.', '/uploads/photo-1732397923604.jpg'),
('Jason Keller', 'Executive Pastry Chef', 'Expert in creating exquisite pastries with a flair for innovation.', '/uploads/photo-1732397935385.jpg'),
('Marco Ricci', 'Head Barista & Coffee Specialist', 'Renowned for his expertise in coffee brewing and barista techniques.', '/uploads/photo-1732397943768.jpg'),
('Emily Thompson', 'Dessert Chef & Coffee Connoisseur', 'Combines her love for desserts with her passion for coffee.', '/uploads/photo-1732397951370.jpg');

-- Features
INSERT INTO features (title, description, image_url) VALUES
('Premium Coffee Beans', 'We source the finest coffee beans from around the world.', '/uploads/image-1732382617549.svg'),
('Expert Baristas', 'Our skilled baristas craft each cup with precision and care.', '/uploads/image-1732382642061.svg'),
('Cozy Atmosphere', 'Relax in our warm and inviting cafe environment.', '/uploads/image-1732382786016.svg'),
('Fresh Pastries', 'Daily-baked pastries and treats made with love.', '/uploads/image-1732382813450.svg');

-- Gallery
INSERT INTO gallery (image_url, description) VALUES
('/uploads/image-1733715644869.jpg', 'Beautiful cafe interior'),
('/uploads/image-1733715743491.jpg', 'Fresh coffee preparation'),
('/uploads/image-1733715763308.jpg', 'Cozy seating area'),
('/uploads/image-1733715800515.jpg', 'Delicious pastries display'),
('/uploads/image-1733716575006.jpg', 'Coffee brewing process');

-- Offers
INSERT INTO offers (title, description, discount_percent, image_url) VALUES
('Happy Hour Special', 'Get 20% off all beverages from 2-4 PM daily!', 20, '/uploads/image-1733717022561.jpg'),
('Weekend Combo Deal', 'Buy any coffee and pastry for a special price!', 15, '/uploads/image-1733717030286.jpg');

-- Sample Users (Note: In production, passwords should be hashed)
INSERT INTO users (username, email, password, phone, address) VALUES
('john_doe', 'john@example.com', '$2b$10$hashedpassword1', '1234567890', '123 Main St, City'),
('jane_smith', 'jane@example.com', '$2b$10$hashedpassword2', '0987654321', '456 Oak Ave, Town'),
('coffee_lover', 'coffee@example.com', '$2b$10$hashedpassword3', '5555551234', '789 Pine Rd, Village');
