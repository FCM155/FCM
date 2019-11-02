﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            if (Session["Auth"] == null || (bool)Session["Auth"] == false){
                Response.Redirect("~/Login.aspx");
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["Auth"] = false;
        Response.Redirect("~/Login.aspx");
    }
}
