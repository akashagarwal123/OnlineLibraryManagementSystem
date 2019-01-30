<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ENCRYPTPASSWORD.aspx.cs" Inherits="USER_ADMIN_page_EMPLOYEELOGIN_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="Center">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="ENCRYPT" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
