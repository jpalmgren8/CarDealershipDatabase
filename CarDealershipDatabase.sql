DROP DATABASE IF EXISTS cardealership;

CREATE DATABASE IF NOT EXISTS cardealership;

USE cardealership;

CREATE TABLE `dealerships` (
    `dealership_id` int AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50),
    `address` VARCHAR(50),
    `phone` VARCHAR(12)
);

INSERT INTO dealerships (name, address, phone) VALUES
('City Auto Mall', '123 Main St', '555-201-1001'),
('Sunrise Auto Sales', '315 Sunrise Dr', '555-201-1002'),
('Steel City Motors', '412 Liberty Ave', '555-201-1412'),
('Evergreen Motors', '221 Pine St', '555-201-1003'),
('Westgate Automotive', '880 Westgate Ln', '555-201-1004');

CREATE TABLE `vehicles` (
`vin` int PRIMARY KEY,
`vehicle_make` VARCHAR(50),
`vehicle_model` VARCHAR(50),
`year` int,
`odometer` int,
`color` VARCHAR(50),
`sold` BOOLEAN
);

INSERT INTO vehicles (vin, vehicle_make, vehicle_model, year, odometer, color, sold) VALUES
(200001, 'Toyota', 'Camry', 2018, 45200, 'Silver', FALSE),
(200002, 'Honda', 'Civic', 2020, 23100, 'Blue', TRUE),
(200003, 'Ford', 'F-150', 2017, 67800, 'Red', FALSE),
(200004, 'Chevrolet', 'Malibu', 2019, 38900, 'White', TRUE),
(200005, 'Nissan', 'Altima', 2021, 12000, 'Black', FALSE),
(200006, 'Jeep', 'Wrangler', 2016, 89300, 'Green', FALSE),
(200007, 'BMW', 'X5', 2022, 5400, 'Gray', TRUE),
(200008, 'Hyundai', 'Elantra', 2015, 101300, 'Blue', FALSE),
(200009, 'Kia', 'Sorento', 2018, 50200, 'White', TRUE),
(200010, 'Volkswagen', 'Jetta', 2014, 112000, 'Black', FALSE),
(200011, 'Subaru', 'Outback', 2019, 38000, 'Silver', FALSE),
(200012, 'Mazda', 'CX-5', 2020, 21000, 'Red', TRUE),
(200013, 'Audi', 'A4', 2017, 64000, 'Blue', FALSE),
(200014, 'Mercedes-Benz', 'C300', 2021, 9000, 'White', TRUE),
(200015, 'Lexus', 'RX 350', 2018, 47000, 'Black', FALSE),
(200016, 'Toyota', 'RAV4', 2022, 7800, 'Gray', TRUE),
(200017, 'Honda', 'Accord', 2016, 86000, 'Silver', FALSE),
(200018, 'Ford', 'Escape', 2019, 35500, 'Blue', TRUE),
(200019, 'Chevrolet', 'Impala', 2015, 99800, 'Red', FALSE),
(200020, 'Nissan', 'Rogue', 2020, 25000, 'White', FALSE),
(200021, 'Jeep', 'Grand Cherokee', 2018, 51200, 'Black', TRUE),
(200022, 'BMW', '3 Series', 2017, 70200, 'Gray', FALSE),
(200023, 'Hyundai', 'Tucson', 2021, 13000, 'Silver', TRUE),
(200024, 'Kia', 'Optima', 2016, 78000, 'Blue', FALSE),
(200025, 'Volkswagen', 'Passat', 2019, 32000, 'White', TRUE),
(200026, 'Subaru', 'Forester', 2020, 22000, 'Green', FALSE),
(200027, 'Mazda', 'Mazda3', 2018, 45000, 'Red', TRUE),
(200028, 'Audi', 'Q5', 2021, 15000, 'Black', FALSE),
(200029, 'Mercedes-Benz', 'GLE 350', 2019, 39000, 'Silver', TRUE),
(200030, 'Lexus', 'ES 350', 2017, 68000, 'White', FALSE),
(200031, 'Toyota', 'Highlander', 2020, 24000, 'Blue', TRUE),
(200032, 'Honda', 'Pilot', 2018, 53000, 'Gray', FALSE),
(200033, 'Ford', 'Edge', 2022, 6000, 'Black', TRUE),
(200034, 'Chevrolet', 'Equinox', 2017, 74000, 'Red', FALSE),
(200035, 'Nissan', 'Sentra', 2016, 88000, 'White', FALSE),
(200036, 'Jeep', 'Compass', 2019, 36500, 'Blue', TRUE),
(200037, 'BMW', 'X3', 2020, 18000, 'Gray', FALSE),
(200038, 'Hyundai', 'Sonata', 2015, 105000, 'Silver', FALSE),
(200039, 'Kia', 'Sportage', 2021, 9000, 'Black', TRUE),
(200040, 'Volkswagen', 'Tiguan', 2018, 51000, 'White', FALSE),
(200041, 'Subaru', 'Crosstrek', 2019, 40500, 'Orange', TRUE),
(200042, 'Mazda', 'CX-3', 2017, 70000, 'Red', FALSE),
(200043, 'Audi', 'A6', 2020, 23000, 'Blue', TRUE),
(200044, 'Mercedes-Benz', 'GLA 250', 2018, 56000, 'Silver', FALSE),
(200045, 'Lexus', 'GX 460', 2021, 14000, 'Black', TRUE),
(200046, 'Toyota', 'Tacoma', 2017, 69000, 'Gray', FALSE),
(200047, 'Honda', 'Fit', 2015, 99000, 'Blue', FALSE),
(200048, 'Ford', 'Explorer', 2019, 35000, 'White', TRUE),
(200049, 'Chevrolet', 'Traverse', 2020, 26000, 'Black', FALSE),
(200050, 'Nissan', 'Frontier', 2022, 4000, 'Red', TRUE);

CREATE TABLE `inventory` (
`dealership_id` int,
`vin` int,

FOREIGN KEY (vin)
        REFERENCES vehicles(vin),
        
FOREIGN KEY (dealership_id)
    REFERENCES dealerships(dealership_id)

);

INSERT INTO inventory (dealership_id, vin) VALUES
(1, 200001), (1, 200002), (1, 200003), (1, 200004), (1, 200005),
(1, 200006), (1, 200007), (1, 200008), (1, 200009), (1, 200010),

(2, 200011), (2, 200012), (2, 200013), (2, 200014), (2, 200015),
(2, 200016), (2, 200017), (2, 200018), (2, 200019), (2, 200020),

(3, 200021), (3, 200022), (3, 200023), (3, 200024), (3, 200025),
(3, 200026), (3, 200027), (3, 200028), (3, 200029), (3, 200030),

(4, 200031), (4, 200032), (4, 200033), (4, 200034), (4, 200035),
(4, 200036), (4, 200037), (4, 200038), (4, 200039), (4, 200040),

(5, 200041), (5, 200042), (5, 200043), (5, 200044), (5, 200045),
(5, 200046), (5, 200047), (5, 200048), (5, 200049), (5, 200050);

CREATE TABLE `sales_contracts` (
`sale_id` int AUTO_INCREMENT PRIMARY KEY,
`vin` int,

FOREIGN KEY (vin)
        REFERENCES vehicle(vin)

);

CREATE TABLE `lease_contracts` (
`lease_id` int AUTO_INCREMENT PRIMARY KEY,
`vin` int,

FOREIGN KEY (vin)
        REFERENCES vehicle(vin)

);
