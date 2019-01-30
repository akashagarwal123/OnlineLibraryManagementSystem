using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class BOOKSDETAILS_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            show();
            }
        }
    protected void BtnDisplay_Click(object sender, EventArgs e)
    {
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
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.HasRows)
                        {
                            Repeater1.DataSource = sdr;
                            Repeater1.DataBind();
                        }
                        else
                        {
                            Response.Write("<script>alert('Sorry! NO records to display')</script>");
                        }
                    }
                }
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Sorry! Internal Issue')</script>");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
  }