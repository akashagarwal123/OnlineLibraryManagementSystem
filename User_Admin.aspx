<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Admin.aspx.cs" Inherits="USER_ADMIN_page_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN/USER</title>
</head>
<body style="background-color:lightsalmon">
    <form id="form1" runat="server">
    <div align ="Center">
        <asp:Label ID="lblStatus1" runat="server" Text="ONLINE LIBRARY MANAGEMENT SYSTEM" Font-Names="ALGERIAN" ForeColor="Maroon" Font-Size="XX-Large" BackColor="SeaShell"></asp:Label>
   </div>
        <br /><br />
        <fieldset>
            <legend><asp:Label ID="lblStatus2" runat="server" Text="Please Choose the option to proceed!" ForeColor="Magenta" Font-Italic="true" Font-Size="Large"></asp:Label></legend>
        <br />
            <table border="1">
            <td>
                <asp:HyperLink ID="hyperlink1" runat="server" text-align="Center" BorderColor="DarkRed" BorderWidth="5" BorderStyle="Groove" ForeColor="DarkViolet" NavigateUrl="~/USER_ADMIN page/EMPLOYEELOGIN/Login.aspx" BackColor="Wheat" Height="37px" Width="111px" style="margin-left: 35px">ADMIN</asp:HyperLink>

            </td>
            <td><asp:HyperLink ID="hyperlink2" runat="server" text-align="Center" BorderColor="DarkRed" BorderWidth="5px" BorderStyle="Groove" ForeColor="Black" NavigateUrl="~/Online Management Library Syste/Registration.aspx" BackColor="Wheat" Height="39px" Width="118px" style="margin-left: 659px; margin-top: 6px;">USER</asp:HyperLink>

            </td>
                </table>
        </fieldset>
        <br /><br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/USER_ADMIN page/flowers-pictures-5ad02239466fd.jpg" Height="809px" Width="1446px" BorderColor="SaddleBrown" BorderStyle="Ridge" BorderWidth="5" />
    <br /><br />
        <div align="center">
            <asp:Button ID="btngoback" runat="server" Text="GOBACK" PostBackUrl="~/Welcome page/Welcome.aspx" Height="30" Width="1399" ForeColor="Yellow" BackColor="Maroon" Font-Names="algerian" />
        </div>
    </form>
</body>
</html>
