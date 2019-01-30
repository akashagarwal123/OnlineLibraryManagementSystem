<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MEMBERS/Formatting2.master" CodeFile="member_account.aspx.cs" Inherits="MEMBERS_member_account" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="lblStatus1" runat="server" ForeColor="DarkRed"></asp:Label>

            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="Buton1" runat="server" ForeColor="Red" Text="LogOut" OnClick="Buton1_Click" />
    <p>
        Why are we different : 
        <ul>
            <li>We provide you with the best facilities around the world .</li>
            <li>we are a team of 9000 members and try to resolve all your queries at the instant.</li>
            <li>We put your desires and needs at the apex</li>
            <li>We try to provide you with the latest technologies around the globe</li>
            <li>Smart Education facilities</li>
        </ul>
    </p>
</asp:Content>
