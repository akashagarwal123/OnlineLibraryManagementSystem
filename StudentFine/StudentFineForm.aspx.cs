using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class USER_ADMIN_page_StudentFine_StudentFineForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fineregister_Click(object sender, EventArgs e)
    {
            issue();
           lblStatus1.Text = "Your details have been successfully registered!!!";
        }
    private int issue()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_StudentFine", con))
                {
                    cmd.Parameters.AddWithValue("@fine", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@enrollmentno", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@dateofissue", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@dateofreturn", TextBox4.Text);
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
