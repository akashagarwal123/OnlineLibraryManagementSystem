using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USER_ADMIN_page_ADMINFUNCTIONALITIES_AdminFunctionalities : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                lblStatus.Text = "Welcome: " + Session["username"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Sorry!!! Some error occurred.')</script>");
            }

        }
    }
}