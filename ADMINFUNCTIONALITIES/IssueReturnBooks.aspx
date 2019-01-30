<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IssueReturnBooks.aspx.cs" Inherits="USER_ADMIN_page_ADMINFUNCTIONALITIES_IssueReturnBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:cornsilk">
    <form id="form1" runat="server">
    <div align="Center">
        <asp:Label ID="lblStatus" runat="server" Text="ONLINE LIBRARY MANAGEMENT SYSTEM" Font-Bold="true" Font-Names="algerian" Font-Size="XX-Large"  ForeColor="IndianRed"></asp:Label>
    <br /><br />
       <asp:Image ID="Image1" runat="server" ImageUrl="~/USER_ADMIN page/ADMINFUNCTIONALITIES/FUNCTIONALITIESIMAGES/02.jpg" Height="400" Width="1320" BorderStyle="Solid" BorderColor="ForestGreen"  BorderWidth="7" />
    </div>
        <br /><br />
        <div align="Center">
        <fieldset>
            <legend>
    <asp:Label ID="lbllegend" Text="Authorization" runat="server" ForeColor="#000066"></asp:Label>
            </legend>
            <table border="1" style="background-color:mistyrose">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblsummary" runat="server" Text="Enter Details" ForeColor="DarkBlue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" ForeColor="DarkRed" Text="Name" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblenrollment" runat="server" ForeColor="DarkRed" Text="EnrollmentNo" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbldateofissue" runat="server" ForeColor="DarkRed" Text="DateOfIssue" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbldateofreturn" runat="server" ForeColor="DarkRed" Text="DateOfReturn" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblbookid" runat="server" ForeColor="DarkRed" Text="BOOKID" ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnIssue" runat="server" Text="ISSUE" ForeColor="DarkBlue" OnClick="btnIssue_Click" />
                        </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnshow" runat="server" Text="SHOW" ForeColor="DarkBlue" OnClick="btnshow_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        </div>
        <div align="center">
        <asp:Label ID="lblissuebooks" runat="server" ForeColor="SteelBlue"></asp:Label> 
        </div>
        <br /><br />
        <fieldset>
            <legend>
       <asp:Label ID="lblreturn" runat="server" ForeColor="Magenta" Text ="Return Books"></asp:Label>
            </legend>
            <table border="1">
                <tr>
                    <td>
                        <asp:Label ID="lblreturnbooks" runat="server" Text="EnrollmentNo" ForeColor="IndianRed"></asp:Label> 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnreturn" runat="server" Text="BUTTON" ForeColor="SteelBlue" OnClick="btnreturn_Click1" />
                    </td>
                </tr>
                <br />
                <tr>
                    <td>
                        <asp:Label ID="lblreturnbook1" runat="server" Font-Names="algerian"></asp:Label> 
                    </td>
                </tr>
            </table>
        </fieldset>
        <br /><br /><br />
        <asp:GridView ID="GridView1" Font-Size="Larger" ForeColor="PaleVioletRed" BackColor="LemonChiffon" BorderColor="DarkBlue" BorderStyle="Groove" BorderWidth="5" runat="server"></asp:GridView>
        <br /><br /><br /><br />
        <asp:HyperLink ID="HyperLink1" Text="GOBACk" text-align="center" NavigateUrl="~/USER_ADMIN page/ADMINFUNCTIONALITIES/AdminFunctionalities.aspx" Width="1320" Height="40" BackColor="DarkBlue" ForeColor="WhiteSmoke" runat="server"></asp:HyperLink>
    </form>
</body>
</html>
