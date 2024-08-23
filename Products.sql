create database powerbi;
use powerbi;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    email VARCHAR(100) NOT NULL
);
INSERT INTO users (Name, address, email) VALUES
('John', '123 Main St, Anytown, USA', 'john.doe@example.com'),
('Smith', '456 Oak Ave, Springfield, USA', 'jane.smith@example.com'),
('Michael', '789 Pine Rd, Somewhere, USA', 'michael.johnson@example.com'),
('Brown', '321 Elm Blvd, Anywhere, USA', 'emily.brown@example.com'),
('David', '654 Birch Lane, Nowhere, USA', 'david.wilson@example.com'),
('Sarah Lee', '987 Cedar St, Anyplace, USA', 'sarah.lee@example.com'),
('Kevin', '135 Maple Dr, Elsewhere, USA', 'kevin.davis@example.com'),
('Amanda', '246 Walnut Ave, Noplace, USA', 'amanda.clark@example.com'),
('Jason', '579 Oakwood Rd, Here, USA', 'jason.martinez@example.com'),
('Michelle White', '864 Pinecrest Ave, There, USA', 'michelle.white@example.com');

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_ordered VARCHAR(255) NOT NULL,
    total_paid DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders (user_id, product_ordered, total_paid) VALUES
(1, 'Widget A', 50.00),
(2, 'Gadget B', 75.50),
(3, 'Thingamajig C', 100.25),
(1, 'Doodad X', 45.75),
(4, 'Gizmo Y', 60.00),
(2, 'Widget Z', 85.20),
(5, 'Thingy Q', 120.50),
(3, 'Gadget R', 95.75),
(1, 'Doohickey S', 55.00),
(4, 'Widget T', 70.25);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO products (product_name, description, price) VALUES
('Widget A', 'A small and handy widget for everyday use.', 19.99),
('Gadget B', 'An advanced gadget with multiple functions.', 49.99),
('Thingamajig C', 'The latest thingamajig model with enhanced features.', 79.99),
('Doodad X', 'A versatile doodad that fits various applications.', 29.99),
('Gizmo Y', 'Compact gizmo ideal for tech enthusiasts.', 39.99),
('Widget Z', 'A larger version of Widget A with extended capabilities.', 29.99),
('Thingy Q', 'A premium quality thingy designed for durability.', 99.99),
('Gadget R', 'Gadget R offers cutting-edge technology and sleek design.', 149.99),
('Doohickey S', 'Doohickey S is known for its simplicity and efficiency.', 24.99),
('Widget T', 'Widget T is a specialized widget for specific tasks.', 59.99);
