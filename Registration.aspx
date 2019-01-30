<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Online Management Library Syste/LibraryManagement.master" CodeFile="Registration.aspx.cs" Inherits="Online_Management_Library_Syste_Registration" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <asp:Image ID="Image1" runat="server" Height="200" Width="200" ImageUrl="~/Online Management Library Syste/20180214_081351_2a3d8454-12f3-4bbf-92cd-bf079b178eb2_large.jpg" />
        </div>
<fieldset>
    <legend><asp:Label ID="lblStatus1" runat="server" ForeColor="Maroon" Text="Register Yourself!" Font-Names="algerian" Font-Size="Larger"></asp:Label></legend>
    <table border="1">
        <tr>
        <td><asp:Label ID="lblName" runat="server" Text="Name" ForeColor="DarkBlue"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
         <td><asp:Label ID="lblMobileNo" runat="server" Text="Mobile_No" ForeColor="DarkBlue"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
         <td><asp:Label ID="lblEmailId" runat="server" Text="EmailId" ForeColor="DarkBlue"></asp:Label></td>
        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>            
        <tr>
         <td><asp:Label ID="lblPassword" runat="server" TextMode="Password" Text="Password" ForeColor="DarkBlue"></asp:Label></td>
        <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
         <td><asp:Label ID="lblDateOfBirth" runat="server" Text="DOB" ForeColor="DarkBlue"></asp:Label></td>
        <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
         <td><asp:Label ID="lblDateOfJoining" runat="server" Text="Date Of Joining" ForeColor="DarkBlue"></asp:Label></td>
        <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
        <tr> 
            <td colspan="2" align="Center"><asp:Button ID="lblSubmit" runat="server" ForeColor="Blue" Font-Bold="true" Text="Submit" BackColor="Wheat" Width="128px" OnClick="lblSubmit_Click" /></td>
        </tr>
    </table>
</fielset>
    <br />
    <asp:Label ID="lblStatusRegistration" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
    <br /><br />
    <fieldset>
        <legend><asp:Label ID="lblStatus3" runat="server" Text="LOGIN" ForeColor="Magenta" Font-Names="Algerian" Font-Bold="true" Font-Size="Larger"></asp:Label></legend>
    <table align="Center" border="1">
        <div align="Center">
            <asp:Label ID="lblStatusLogin" runat="server" Text="" Font-Bold="true" Font-Names="algerian" Font-Size="Large"></asp:Label>
        </div>
        <tr>
        <td><asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label></td>
        <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td><asp:Label ID="lblPassword8" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
            </tr>
        <tr>
            <td colspan="2" align="Center">
                <asp:Button ID="lblLogin" runat="server" ForeColor="Black" Text="LOGIN" Font-Names="algerian" OnClick="lblLogin_Click" />
            </td>
        </tr>
    </table>
    </fieldset>
    </fieldset></asp:Content>

