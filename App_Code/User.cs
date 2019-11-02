using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
/// 
public class User
{
    public int ID;
    public String Name;
    public String Email;
    public String TeleNo;
    public String Mobile;

    public User()
    {

    }

    public User(int id, String name, String email, String teleNo, String mobile)
    {
        this.ID = id;
        this.Name = name;
        this.Email = email;
        this.TeleNo = teleNo;
        this.Mobile = mobile;
    }

    public bool Login(String username, String password)
    {
        DB db = new DB();
        bool auth = false;

        String i = db.getValue("SELECT COUNT(*) FROM [User] WHERE [Username] = '" + username + "' AND [Password] = '" + password + "'");

        if (i == "1")
            auth = true;
        else
            auth = false;

        return auth;
    }
}