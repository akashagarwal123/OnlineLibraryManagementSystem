using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class REGISTRATION_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ReadCookie();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblStatus7.Text = "You are successfully registered";
        lblStatus8.Text = "Welcome " +
            "" + TextBox1.Text + "<br/>";
    }
    private void ReadCookie()
    {
        HttpCookie c1 = Request.Cookies["una"];
        if (c1 != null)
        {
            lblStatus14.Text = "Hi everyone, you " + c1.Value;
        }
        else
        {
            lblStatus14.Text = "New Client";
        }

    }
}