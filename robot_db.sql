CREATE DATABASE robot_db;
USE robot_db;

CREATE TABLE robots (
                        id INT PRIMARY KEY,
                        name VARCHAR(50),
                        model VARCHAR(50),
                        category VARCHAR(50),
                        price DECIMAL(10, 2),
                        weight DECIMAL(6, 2),
                        battery_capacity INT
);

CREATE TABLE components (
                            id INT PRIMARY KEY,
                            robot_id INT,
                            component_name VARCHAR(50),
                            component_type VARCHAR(50),
                            FOREIGN KEY (robot_id) REFERENCES robots(id)
);

CREATE TABLE maintenance_logs (
                                  id INT PRIMARY KEY,
                                  robot_id INT,
                                  maintenance_date DATE,
                                  description VARCHAR(200),
                                  FOREIGN KEY (robot_id) REFERENCES robots(id)
);

INSERT INTO robots (id, name, model, category, price, weight, battery_capacity)
VALUES
    (1, 'RoboMaid', 'RM-100', 'Household', 999.99, 5.5, 5000),
    (2, 'RoboChef', 'RC-200', 'Culinary', 1499.99, 8.2, 7500),
    (3, 'RoboGuard', 'RG-300', 'Security', 2999.99, 12.8, 10000),
    (4, 'RoboMedic', 'RM-400', 'Medical', 4999.99, 6.3, 6000),
    (5, 'RoboBuilder', 'RB-500', 'Construction', 3499.99, 15.6, 12000);

INSERT INTO components (id, robot_id, component_name, component_type)
VALUES
    (1, 1, 'Vacuum Pump', 'Cleaning'),
    (2, 1, 'Brushes', 'Cleaning'),
    (3, 2, 'Knife Attachment', 'Culinary'),
    (4, 2, 'Induction Cooktop', 'Culinary'),
    (5, 3, 'Surveillance Camera', 'Security'),
    (6, 3, 'Motion Sensors', 'Security'),
    (7, 4, 'Surgical Laser', 'Medical'),
    (8, 4, 'Vital Signs Monitor', 'Medical'),
    (9, 5, 'Welding Torch', 'Construction'),
    (10, 5, 'Hydraulic Arm', 'Construction');

INSERT INTO maintenance_logs (id, robot_id, maintenance_date, description)
VALUES
    (1, 1, '2023-01-15', 'Replaced vacuum pump'),
    (2, 2, '2023-02-10', 'Recalibrated knife attachment'),
    (3, 3, '2023-03-05', 'Upgraded motion sensors'),
    (4, 4, '2023-04-20', 'Performed laser alignment'),
    (5, 5, '2023-05-12', 'Replaced welding torch nozzle'),
    (6, 1, '2023-06-01', 'Cleaned brush assembly'),
    (7, 2, '2023-07-18', 'Replaced induction cooktop'),
    (8, 3, '2023-08-22', 'Updated surveillance camera firmware'),
    (9, 4, '2023-09-08', 'Recalibrated vital signs monitor'),
    (10, 5, '2023-10-30', 'Serviced hydraulic arm');