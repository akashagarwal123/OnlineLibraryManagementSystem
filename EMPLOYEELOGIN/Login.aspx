<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="USER_ADMIN_page_EMPLOYEELOGIN_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
</head>
<body style="background-color:yellowgreen">
    <form id="form1" runat="server">
        <div align="center">
        <asp:Label ID="lblhead" runat="server" Text="ONLINE LIBRARY MANAGEMENT SYSTEM" Font-Bold="true" Font-Names="algerian" Font-Size="XX-Large" ForeColor="DarkRed"></asp:Label>
       </div>
       <br /><br /><br /><br /><br /><br /><br />
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/USER_ADMIN page/EMPLOYEELOGIN/NF4016-130116.jpg" BorderColor="Black" BorderStyle="Groove" BorderWidth="6" Height="200" Width="200" />
        </div>
        <br /><br />
         <div align="Center">
        <table border="1" style="background-color:blanchedalmond">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblStatus" Font-Names="algerian" runat="server" Text="EMPLOYEE LOGIN" ForeColor="DarkBlue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="NAME" ForeColor="Blue"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="Blue"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button runat="server" ID="btnlogin" ForeColor="Black" Text="LOGIN" BorderColor="GhostWhite" BorderStyle="Inset" BorderWidth="4" OnClick="btnlogin_Click" />
                </td>
            </tr>
        </table>
             <br />
             <asp:Hyperlink ID="hyperlink1" runat="server" Text="NEW USER" NavigateUrl="~/USER_ADMIN page/AdminPage.aspx"></asp:Hyperlink>
             <br /><br />
             <asp:Button ID="btngo_back" runat="server" Height="30" Width="1250" Text="GO_BACK" PostBackUrl="~/Welcome page/Welcome.aspx" BackColor="GhostWhite" ForeColor="#800000" Font-Names="algerian" />
    
    </div>
    </form>
</body>
</html>
