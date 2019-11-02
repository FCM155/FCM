using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class requestAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["User"] != null){
                Employee emp = new Employee(Session["User"].ToString());

                hfUserID.Value = emp.ID.ToString();
                txtFullname.Text = emp.Name;
                txtSite.Text = emp.Site;
                txtDepartment.Text = emp.Department;
                txtEmail.Text = emp.Email;
                txtMobile.Text = emp.Mobile;
                lblTeleNo.Text = emp.TeleNo;
                lblTimeDate.Text = String.Format("{0: yyyy-MM-dd}", DateTime.Today);
            }
            
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try {
            Request req = new Request();
            bool b = req.submitRequest(ddlDeviceType.SelectedValue, txtOfficeNo.Text, ddlFloorNo.SelectedValue, txtSN.Text, ddlOS.SelectedValue, txtMAcAddress.Text, txtIP.Text, ddlServiceType.SelectedValue, txtDomainName.Text, txtComputerModel.Text, txtDescription.Text, hfUserID.Value);
            if (b == true) {
                Response.Redirect("~/Default.aspx");
            }
        } catch{}
    }
}
