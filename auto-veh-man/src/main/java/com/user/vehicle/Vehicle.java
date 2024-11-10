package com.vehicle.model;

public class Vehicle {
    private int vehicleId;
    private String model;
    private String status; // Active, Inactive, InMaintenance
    private String healthStatus;
    private String location;
    private String lastMaintenanceDate;

    public Vehicle(int vehicleId, String model, String status, String healthStatus, String location, String lastMaintenanceDate) {
        this.vehicleId = vehicleId;
        this.model = model;
        this.status = status;
        this.healthStatus = healthStatus;
        this.location = location;
        this.lastMaintenanceDate = lastMaintenanceDate;
    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getHealthStatus() {
        return healthStatus;
    }

    public void setHealthStatus(String healthStatus) {
        this.healthStatus = healthStatus;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLastMaintenanceDate() {
        return lastMaintenanceDate;
    }

    public void setLastMaintenanceDate(String lastMaintenanceDate) {
        this.lastMaintenanceDate = lastMaintenanceDate;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "vehicleId=" + vehicleId +
                ", model='" + model + '\'' +
                ", status='" + status + '\'' +
                ", healthStatus='" + healthStatus + '\'' +
                ", location='" + location + '\'' +
                ", lastMaintenanceDate='" + lastMaintenanceDate + '\'' +
                '}';
    }
}
