using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USER_ADMIN_page_ADMINFUNCTIONALITIES_AdminFunctionalities : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Server.Transfer("~/Welcome page/Welcome.aspx");

    }
}
