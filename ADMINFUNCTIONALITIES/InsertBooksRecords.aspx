<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertBooksRecords.aspx.cs" Inherits="USER_ADMIN_page_ADMINFUNCTIONALITIES_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Records</title>
</head>
<body style="background-color:lavenderblush">
    <form id="form1" runat="server">
    <div align="Center">
    <asp:Label ID="lblStatus" runat="server" ForeColor="Magenta" Text="ONLINE LIBRARY MANAGEMENT SYSTEM" Font-Names="algerian" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
        <br />
        \\_______________________________________________________________________________________//</div>
        <br /><br />
        <asp:Image ID="Image1" Height="300" Width="1320" runat="server" ImageUrl="~/USER_ADMIN page/ADMINFUNCTIONALITIES/FUNCTIONALITIESIMAGES/Welcome-Image-1.png" BorderColor="DarkRed" BorderStyle="Outset" BorderWidth="6" />
        <br /><br />
        <div align ="center">
            <asp:Label ID="lblDisplay" runat="server" ForeColor="Maroon" Font-Names="algerian" Font-Size="X-Large"></asp:Label>
            <br />
            <asp:Label ID="lblUpdate" runat="server" ForeColor="ForestGreen" Font-Names="algerian" Font-Size="X-Large"></asp:Label>
            <br /><br />
            <fieldset>
                <legend><asp:Label ID="lblmain" runat="server" Text="Enter the records of the boooks" ForeColor="Magenta"></asp:Label></legend>
            <table border="1" style="background-color:lightcoral">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblregister" runat="server" Text="ENTER DETAILS"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblid" runat="server" Text="ID" ForeColor="DarkBlue"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" ForeColor="DarkBlue" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblauthor" runat="server" ForeColor="DarkBlue" Text="Author"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpublisher" runat="server" ForeColor="DarkBlue" Text="publisher"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcost" runat="server" ForeColor="DarkBlue" Text="Cost"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpnrno" runat="server" ForeColor="DarkBlue" Text="PNRNO"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color:beige"></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="btnregister" runat="server" Text="REGISTER" Font-Names="algerian" ForeColor="Turquoise" OnClick="btnregister_Click" />
                    </td>
                    <td>
                 <asp:Button ID="btnIpdate" runat="server" Text="UPDATE" Font-Names="algerian" ForeColor="Turquoise" OnClick="btnIpdate_Click" />
                    </td>
                </tr>
                </table>
                </fieldset>
        <br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" Height="30" Width="1320" ForeColor="RoyalBlue" BackColor="Wheat" NavigateUrl="~/USER_ADMIN page/ADMINFUNCTIONALITIES/AdminFunctionalities.aspx" Text="GO_BACK"></asp:HyperLink>
        </div>
    </form>
</body>
</html>

