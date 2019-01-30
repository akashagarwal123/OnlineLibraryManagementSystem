<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentFineForm.aspx.cs" Inherits="USER_ADMIN_page_StudentFine_StudentFineForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:aqua">
    <form id="form1" runat="server">
    <div align="center">
<asp:Label ID="lblstatus" runat="server" Text="ONLINE LIBRARY MANAGEMENT SYSTEM" ForeColor="DarkKhaki" Font-Bold="true" Font-Names="al
    gerian" Font-Size="XX-Large" >
    </asp:Label>    
        <br /><br /> 
        <fieldset>
            <legend style="width: 155px">  
                <asp:Label ID="lblfine" runat="server"  Text="STUDENT FINE" ForeColor="Magenta" Font-Size="Larger"></asp:Label>
            </legend>
            <br /><br />
            <table border="1" style="background-color:aliceblue">
                <tr>
                    <td>
                      <asp:Label ID="Fine" runat="server" ForeColor="DarkBlue" Text="FINE"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                      <asp:Label ID="Enrollment" runat="server" ForeColor="DarkBlue" Text="EnrollmentNo"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                      <asp:Label ID="dateofissue" runat="server" ForeColor="DarkBlue" Text="DateOfIssue"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                      <asp:Label ID="dateofreturn" runat="server" ForeColor="DarkBlue" Text="DateOfReturn"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="fineregister" runat="server" Text="ENTER" ForeColor="DarkBlue" OnClick="fineregister_Click" />
                    </td>
                </tr>
            </table>
            <br /><br />
            <asp:Label ID="lblStatus1" runat="server" Font-Size="Larger" ForeColor="DarkRed" Font-Bold="true" Font-Names="algerian"></asp:Label>
        </fieldset>
    </div>
        <br /><br /><br /><br />
        <asp:Button ID="btnback" runat="server" ForeColor="Black" Height="30" Text="GO_BACK" Width="1320" BackColor="WhiteSmoke" PostBackUrl="~/USER_ADMIN page/AdminPage.aspx" Font-Names="algerian" style="margin-top: 249px" />
    </form>
</body>
</html>
