using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class USER_ADMIN_page_AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
     }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        show();
        lblNotify.Text = "You are successfully registered";
    }

         public int show()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_RegisterEmployeeDetails ", con))
                {
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@mobileno", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@emailid", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    int temp = cmd.ExecuteNonQuery();
                    con.Close();
                        if (temp > 0)
                        {
                            return 1;
                        }
                        return 0;
                    }
                }
            }
        catch (Exception)
        {
            return 0; 
        }
    }
}