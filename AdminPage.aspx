<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/USER_ADMIN page/AdminMasterPage.master" CodeFile="AdminPage.aspx.cs" Inherits="USER_ADMIN_page_AdminPage" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="priviouspageStatus" runat="server" ForeColor="Wheat" Font-Names="algerian" Font-Size="Larger"></asp:Label>
    <br />
    <fieldset>
    <legend>
        <asp:Label ID="lblStatus" runat="server" Text="EMPLOYEE DETAILS"></asp:Label>

    </legend>
    <table border="1" style="background-color:burlywood" align="Center">
        <tr>
            <td colspan="2" align="Center">
                <asp:Label ID="lblStatus1" runat="server" ForeColor="Black" Font-Names="algerian" Text="REGISTER YOUESELF!!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblname" runat="server" Text="NAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPhoneNumber" runat="server" Text="MobileNo" ForeColor="Black"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemailid" runat="server" Text="EmailID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="Center">
                <asp:Button ID="btnRegister" runat="server" Text="REGISTER" ForeColor="Blue" OnClick="btnRegister_Click" style="height: 26px" />
            </td>
        </tr>
    </table>
        <div align="Center">
        <asp:Label ID="lblNotify" runat="server" Text="" ForeColor="SeaGreen"></asp:Label>
        </div>
    
</fieldset>
    <div align="Right">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/USER_ADMIN page/EMPLOYEELOGIN/Login.aspx">SKIP</asp:HyperLink>
    </div>
</asp:Content>