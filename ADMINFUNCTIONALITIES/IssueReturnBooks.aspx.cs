using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class USER_ADMIN_page_ADMINFUNCTIONALITIES_IssueReturnBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnIssue_Click(object sender, EventArgs e)
    {
        issue();
        lblissuebooks.Text = "Your records have have been successfully registered";
    }
    private int issue()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_tableIssue", con))
                {
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@enrollmentno", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@dateofissue", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@dateofreturn", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@id", TextBox5.Text);
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
    private int returnBooks()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_tblreturn", con))
                {
                    cmd.Parameters.AddWithValue("@enrollment", TextBox6.Text);
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
    protected void btnreturn_Click1(object sender, EventArgs e)
    {
        returnBooks();
        lblreturnbook1.Text = "Your records have been successfully returned";
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        showBooks();
    }
    public void showBooks()
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("usp_ShowRecords", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        GridView1.DataSource = sdr;
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry!!!Your records cannot be displayed')</script>");
                    }
                }
            }
        }

        catch (Exception)
        {
            Response.Write("<script>alert('ERREO 404<b>Records cannot be displayed<b>')</script>");
        }
    }

}