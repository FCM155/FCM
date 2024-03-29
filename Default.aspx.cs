﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Auth"] == null || (bool)Session["Auth"] == false)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        Request req = new Request();

        gvRequestList.DataSource = req.viewRequestList(Session["User"].ToString());
        gvRequestList.DataBind();
    }
}