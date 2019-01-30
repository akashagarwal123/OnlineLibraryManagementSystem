using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MEMBERS_Formatting2 : System.Web.UI.MasterPage
{
    static int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Image1.ImageUrl = "~\\MEMBERS\\Images\\05.png";
            i++;
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (i == 1)
        {
            Image1.ImageUrl = "~\\MEMBERS\\Images//01.jpg";
            i++;
        }
        else if (i == 2)
        {
            Image1.ImageUrl = "~\\MEMBERS\\Images//02.jpg";
            i++;
        }
        else if (i == 3)
        {
            Image1.ImageUrl = "~\\MEMBERS\\Images//03.jpg";
            i++;
        }
        else
        {
            Image1.ImageUrl = "~\\MEMBERS\\Images//05.png";
            i = 1;
        }

    }
}
