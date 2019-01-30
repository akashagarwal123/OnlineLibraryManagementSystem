using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MEMBERS_member_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                int visitor = Convert.ToInt32(Application["OnlineVisitor"]);
                int online = Convert.ToInt32(Application["OnlineUser"]);
                lblStatus1.Text = "Number of online visitor: " + visitor + "<br/><br/>";
                lblStatus1.Text += "Number of online user: " + online;
            }
        }
    protected void Buton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}