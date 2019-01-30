using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class USER_ADMIN_page_ADMINFUNCTIONALITIES_FUNCTIONALITIESIMAGES_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        show();
    }

    }
    public void show()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from DisplayBooksDetails", con))
                {
                    cmd.CommandType = CommandType.Text;
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        GridView1.DataSource = sdr;
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry!!Please Retry.')</script>");
                    }
                }
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Sorry!!Internal issue.')</script>");
        }
    }
}
             