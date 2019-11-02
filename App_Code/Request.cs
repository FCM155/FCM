using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

/// <summary>
/// Summary description for Request
/// </summary>
public class Request
{
    public int RequestNo;
    public String DeviceType;
    public String OfficeNo;
    public String FloorNo;
    public String DeviceSN;
    public String OS;
    public String MacAddress;
    public String IP;
    public String ServiceType;
    public String DeviceDomain;
    public String DeviceModel;
    public String Description;
    public String CreatedBy;
    public String CreatedDate;
    public String ChangedBy;
    public String ChangedDate;

    public Request() { }

    public Request(int requestNo, String deviceType, String officeNo, String floorNo, String deviceSN, String os, String macAddress, String ip, String serviceType, String deviceDomain, String deviceModel, String description, String createdBy, String createdDate, String changedBy, String changedDate)
    {
        this.RequestNo = requestNo;
        this.DeviceType = deviceType;
        this.OfficeNo = officeNo;
        this.FloorNo = floorNo;
        this.DeviceSN = deviceSN;
        this.OS = os;
        this.MacAddress = macAddress;
        this.IP = ip;
        this.ServiceType = serviceType;
        this.DeviceDomain = deviceDomain;
        this.DeviceModel = deviceModel;
        this.Description = description;
        this.CreatedBy = createdBy;
        this.CreatedDate = createdDate;
        this.ChangedBy = changedBy;
        this.ChangedDate = changedDate;
    }

    public bool submitRequest(String deviceType, String officeNo, String floorNo, String deviceSN, String os, String macAddress, String ip, String serviceType, String deviceDomain, String deviceModel, String description, String createdBy) {
        DB db = new DB();
        bool b;

        int r = db.exCommand("INSERT [Request] (RequestStatus, DeviceType, OfficeNo, FloorNo, DeviceSN, OS, MacAddress, IPAddress, SeviceType, DeviceDomin, DeviceModel, Description, CreatedUser, CreatedDate) VALUES ('N', '" + deviceType + "', '" + officeNo + "', '" + floorNo + "', '" + deviceSN + "', '" + os + "', '" + macAddress + "', '" + ip + "', '" + serviceType + "', '" + deviceDomain + "', '" + deviceModel + "', '" + description + "', '" + createdBy + "', GETDATE())");

        if (r > 0) {
            b = true;
        } else {
            b = false;
        }
        return b;
    }

    public DataTable viewRequestList(String Username)
    {
        DB db = new DB();
        DataTable dt = new DataTable();

        String UserID = db.getValue("SELECT [ID] FROM [User] WHERE Username = '" + Username + "'");

        dt = db.getData("SELECT RequestNo, RequestStatus, CreatedDate, ChangedDate FROM [Request] WHERE CreatedUser = '" + UserID + "'");

        return dt;
    }

}