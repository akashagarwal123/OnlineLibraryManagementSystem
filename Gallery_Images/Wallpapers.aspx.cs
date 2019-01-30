using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details_Gallery_Images_Wallpapers : System.Web.UI.Page
{
    static int i = 0;
    static int j = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images\\08.jpg";
            i++;
         }
        if (!IsPostBack)
        {
            Image5.ImageUrl = "~\\Details\\Gallery_Images\\10.jpg";
            j++;
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if(i == 1)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//05.jpg"; 
            i++;
        }
        else if(i == 2)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//06.jpg"; 
            i++;
        }
        else if (i == 3)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//07.jpg"; 
            i++;
        }
        else if (i == 4)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//08.jpg";
            i++;
        }
        else if (i == 5)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//09.jpg";
            i++;
        }
        else
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//10.jpg"; 
            i = 1;

        }

    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        if (j == 1)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//01.jpg";
            j++;
        }
        else if (j == 2)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//02.jpg";
            j++;
        }
        else if (j == 3)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//03.jpg";
            j++;
        }
        else if(j == 4)
        {
            Image1.ImageUrl = "~\\Details\\Gallery_Images//04.jpg";
            j++;
        }
        else if (j == 5)
        {
             Image1.ImageUrl = "~\\Details\\Gallery_Images//05.jpg";
            j++;
        }
          else
        {
             Image1.ImageUrl = "~\\Details\\Gallery_Images//10.jpg";
             j = 1;
        }

    }
}