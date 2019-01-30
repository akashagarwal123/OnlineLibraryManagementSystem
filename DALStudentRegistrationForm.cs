using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public class DALStudentRegistrationForm
{
    public DALStudentRegistrationForm()
    {
    }
    public int StudentRegistration(StudentRegistration strobj)
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("StudentRegistration", con))
                {
                    cmd.Parameters.AddWithValue("Name", strobj.Name);
                    cmd.Parameters.AddWithValue("MobileNo", strobj.MobileNo);
                    cmd.Parameters.AddWithValue("EmailId", strobj.EmailId);
                    cmd.Parameters.AddWithValue("Password", strobj.Password);
                    cmd.Parameters.AddWithValue("DOB", strobj.DOB);
                    cmd.Parameters.AddWithValue("Doj", strobj.Doj);
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
    public StudentRegistration Studentlogin(string username, string Password)
    {
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetStudentAuthentication", con))
                {
                    cmd.Parameters.AddWithValue("Username", username);
                    cmd.Parameters.AddWithValue("Password", Password);
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                   // con.Close();
                    if (sdr.HasRows)
                    {
                        while (sdr.Read())
                        {
                            StudentRegistration strobj = new StudentRegistration();
                               strobj.Name = sdr[1].ToString();
                               strobj.MobileNo = Convert.ToInt64(sdr[2]);
                               strobj.EmailId = sdr[3].ToString();
                               strobj.Password = sdr[4].ToString();
                               strobj.DOB = sdr[5].ToString();
                               strobj.Doj = sdr[6].ToString();
                            return strobj;
                           }
                        return null;
                        }
                        return null;
                      }
                  }
               }
        catch (Exception)
        {
            return null;
        }

    }
}
