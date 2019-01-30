<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayBooksDetails.aspx.cs" Inherits="USER_ADMIN_page_ADMINFUNCTIONALITIES_FUNCTIONALITIESIMAGES_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BOOKS DETAILS</title>
</head>
<body style="background-color:lavenderblush">
    <form id="form1" runat="server">

    <div align="Center">
        <asp:Label ID="Label1" runat="server" Text="ONLINE LIbRARY SYSTEM" Font-Bold="true" Font-Size="XX-Large" Font-Names="algerian" ForeColor="PaleVioletRed"></asp:Label>    
    </div>
        <br /><br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/USER_ADMIN page/ADMINFUNCTIONALITIES/FUNCTIONALITIESIMAGES/04.jpg" Height="400" Width="1320" BorderColor="Black" BorderStyle="Ridge" BorderWidth="6" />
        <br /><br />
        <div align="Center">
            <asp:Label ID="lblStatus" runat="server" Text="BOOKS DETAILS!!!" Font-Size="Larger" Font-Names="algerian" ForeColor="DarkBlue"></asp:Label>
            <br />
       <asp:GridView ID="GridView1" runat="server" Font-Bold="true" ForeColor="Red" BorderColor="ForestGreen" BorderStyle="Groove" BorderWidth="8"></asp:GridView>
    </div>
        <br /><br /><br /><br />
        <div align="RIGHT">
            <asp:Button runat="server" ID="BtnGoBack" Text="GOBACK" PostBackUrl="~/USER_ADMIN page/ADMINFUNCTIONALITIES/AdminFunctionalities.aspx" Height="30" Width="1340" BackColor="LawnGreen" />
        </div>
        
    </form>
</body>
</html>
