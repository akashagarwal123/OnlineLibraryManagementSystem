using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Online_Management_Library_Syste_LibraryManagement : System.Web.UI.MasterPage
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

       lblStatus6.Text = System.DateTime.Now.ToLongTimeString();
       if (!IsPostBack)
       {
           Image1.ImageUrl = "~\\Online Management Library Syste\\Images\\06.jpg";
           i++;
       }
       setPermanentCookie();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lblStatus6.Text = System.DateTime.Now.ToLongTimeString();
    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        if (i == 1)
        {
            Image1.ImageUrl = "~\\Online Management Library Syste\\Images//01.jpg";
            i++;
        }
        else if (i == 2)
        {
            Image1.ImageUrl = "~\\Online Management Library Syste\\Images//02.jpg";
            i++;
        }
        else if (i == 3)
        {
            Image1.ImageUrl = "~\\Online Management Library Syste\\Images//03.jpg";
            i++;
        }
        else if (i == 4)
        {
            Image1.ImageUrl = "~\\Online Management Library Syste\\Images//04.jpg";
            i++;
        }
        else if (i == 5)
        {
            Image1.ImageUrl = "~\\Online Management Library Syste\\Images//05.jpg";
            i++;
        }
        else
        {
            Image1.ImageUrl = "~\\Online Management Library Syste\\Images//06.jpg";
            i = 1;
        }

    }
    protected void CloseButton_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Welcome page/Welcome.aspx");
    }
    private void setPermanentCookie()
    {
        HttpCookie co1 = new HttpCookie("una", "need to refresh after 4 minutes");
        co1.Expires = System.DateTime.Now.AddMinutes(4);
        Response.Cookies.Add(co1);
        Label1.Text = "Cookies set by server";
    }
}
