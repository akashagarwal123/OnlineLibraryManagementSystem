using System;
using System.Collections.Generic;

public class StudentRegistrationBLL
{
    DALStudentRegistrationForm dsrf = null;
	public StudentRegistrationBLL()
	{
        dsrf = new DALStudentRegistrationForm();
	}
    public int InsertStudentDetails(StudentRegistration strobj)
    {
        return dsrf.StudentRegistration(strobj);
    }
    public int loginBll(string username , string Password)
    {
        StudentRegistration strobj = dsrf.Studentlogin(username, Password);
        if (strobj != null)
        {
            if (strobj.Name.Equals(username) && strobj.Password.Equals(Password))
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
        return 0;
    }
}