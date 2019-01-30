using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class USER_ADMIN_page_ADMINFUNCTIONALITIES_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        if (true)
        {
            insertDetails();
            lblDisplay.Text = "Your details are successfully recorded";
        }
    }
    private int insertDetails()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_InsertBookDetail", con))
                {
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@author", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@publisher", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@cost", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@pnrno", TextBox5.Text);
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
    protected void btnIpdate_Click(object sender, EventArgs e)
    {
        if (true)
        {
            update();
            lblUpdate.Text = "Record Updated Successfully";
        }
    }
    public int update()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_UpdateBookDetails", con))
                {
                    cmd.Parameters.AddWithValue("@id", TextBox.Text);
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@author", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@publisher", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@cost", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@pnrno", TextBox5.Text);
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
