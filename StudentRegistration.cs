using System;
using System.Collections.Generic;

public class StudentRegistration
{
    //Fields
    private string _name = string.Empty;
    private long _mobileno = 0;
    private string _emailid = string.Empty;
    private string _password = string.Empty;
    private string _dob = string.Empty;
    private string _doj = string.Empty;
	public StudentRegistration()
	{
	}
    //creating properties 
    public string Name
    {
        get
        {
            return _name;
        }
        set
        {
            _name = value;
        }
    }
    public long MobileNo
    {
        get
        {
            return _mobileno;
        }
        set
        {
            _mobileno = value;
        }
    }
    public string EmailId
    {
        get
        {
            return _emailid;
        }
        set
        {
            _emailid = value;
        }
    }
    public string Password
    {
        get
        {
            return _password;
        }
        set
        {
            _password = value;
        }
    }
    public string DOB
    {
        get
        {
            return _dob;
        }
        set
        {
            _dob = value;
        }
    }
    public string Doj
    {
        get
        {
            return _doj;
        }
        set
        {
            _doj = value;
        }
    }
}