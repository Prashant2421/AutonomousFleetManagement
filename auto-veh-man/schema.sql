CREATE database vehautoman;

use vehautoman;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    role ENUM('FleetManager', 'VehicleOperator', 'MaintenanceTechnician') NOT NULL
);

-- Create Vehicle Table
CREATE TABLE Vehicle (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(255) NOT NULL,
    status ENUM('Active', 'Inactive', 'InMaintenance') DEFAULT 'Active',
    health_status VARCHAR(255),
    last_maintenance_date DATE
);

-- Create Route Table
CREATE TABLE Route (
    route_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    start_location VARCHAR(255),
    end_location VARCHAR(255),
    estimated_duration INT,  -- Duration in minutes
    status ENUM('Scheduled', 'InProgress', 'Completed') DEFAULT 'Scheduled',
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);

-- Create Maintenance Table
CREATE TABLE Maintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    maintenance_type VARCHAR(255),
    scheduled_date DATE,
    status ENUM('Scheduled', 'Completed', 'Pending') DEFAULT 'Scheduled',
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);

-- Create Logistics Table
CREATE TABLE Logistics (
    logistics_id INT AUTO_INCREMENT PRIMARY KEY,
    route_id INT NOT NULL,
    resources_allocated VARCHAR(255),  -- Resources for the route (e.g., drivers, vehicles)
    operational_schedule DATE,
    FOREIGN KEY (route_id) REFERENCES Route(route_id)
);

-- Create Fleet Monitoring Table
CREATE TABLE FleetMonitoring (
    fleet_monitoring_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    vehicle_status VARCHAR(255),
    operational_metrics VARCHAR(255),
    alert_status ENUM('Active', 'Inactive', 'Resolved') DEFAULT 'Active',
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);

-- Create Repair Management Table
CREATE TABLE RepairManagement (
    repair_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    repair_request VARCHAR(255),
    repair_status ENUM('Requested', 'InProgress', 'Completed') DEFAULT 'Requested',
    repair_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);
