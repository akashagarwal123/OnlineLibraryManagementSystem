using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Online_Management_Library_Syste_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lblSubmit_Click(object sender, EventArgs e)
    {
        StudentRegistration strobj = new StudentRegistration();
        strobj.Name = TextBox1.Text;
        strobj.MobileNo = Convert.ToInt64(TextBox2.Text);
        strobj.EmailId = TextBox3.Text;
        strobj.Password = TextBox4.Text;
        strobj.DOB=TextBox5.Text;
        strobj.Doj = TextBox6.Text;
        StudentRegistrationBLL strbll = new StudentRegistrationBLL();
        int temp = strbll.InsertStudentDetails(strobj);
        if (temp > 0)
        {
            lblStatusRegistration.Text= "Registration successful";
           lblStatusRegistration.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            lblStatusRegistration.Text="Sorry!Registration Unsuccessful";
            lblStatusRegistration.ForeColor = System.Drawing.Color.DarkRed;
        }
    }
    protected void lblLogin_Click(object sender, EventArgs e)
    {
        StudentRegistrationBLL strobj = new StudentRegistrationBLL();
        int temp = strobj.loginBll(TextBox7.Text, TextBox8.Text);
        if (temp > 0)
        {
            Session["userName"] = TextBox7.Text;
            lblStatusLogin.Text = "Welcome " + Session["username"];
            lblStatusLogin.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            lblStatusLogin.Text = "Sorry!! LOGIN FAILED";
            lblStatusLogin.ForeColor = System.Drawing.Color.Red;
        }

    }
}