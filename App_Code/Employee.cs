using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

/// <summary>
/// Summary description for Employee
/// </summary>
public class Employee : User
{

    public String Site;
    public String Department;

    public Employee()
    {}

    public Employee(String username)
    {
        DB db = new DB();
        DataTable dt = new DataTable();

        dt = db.getData("SELECT * FROM [User] WHERE Username = '" + username + "'");
        if (dt.Rows.Count > 0){
            base.ID = Convert.ToInt32(dt.Rows[0]["ID"].ToString());
            base.Name = dt.Rows[0]["Name"].ToString();
            base.Email = dt.Rows[0]["Email"].ToString();
            base.TeleNo = dt.Rows[0]["TeleNo"].ToString();
            base.Mobile = dt.Rows[0]["Mobile"].ToString();
            this.Site = dt.Rows[0]["Site"].ToString();
            this.Department = dt.Rows[0]["Department"].ToString();
        }
    }

    public Employee(int id, String name, String email, String teleNo, String mobile, String site, String deparment)
        : base(id, name, email, teleNo, mobile)
    {
        this.Site = site;
        this.Department = deparment;
    }

    public Employee getInfo()
    {
        return this;
    }
}
