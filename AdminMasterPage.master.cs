using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USER_ADMIN_page_AdminMasterPage : System.Web.UI.MasterPage
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                Image1.ImageUrl = "~\\USER_ADMIN page\\AminImages\\04.jpg";
                i++;
            }
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lblStatus2.Text = System.DateTime.Now.ToLongTimeString();
    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        if (i == 1)
        {
            Image1.ImageUrl = "~\\USER_ADMIN page\\AminImages//01.jpg";
            i++;
        }
        else if (i == 1)
        {
            Image1.ImageUrl = "~\\USER_ADMIN page\\AminImages//02.jpg";
            i++;
        }
        else if (i == 3)
        {
            Image1.ImageUrl = "~\\USER_ADMIN page\\AminImages//03.jpg";
            i ++;
        }
        else
        {
            Image1.ImageUrl = "~\\USER_ADMIN page\\AminImages//04.jpg";
            i = 1;
        }
    }
}
