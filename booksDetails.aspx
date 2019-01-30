<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booksDetails.aspx.cs" Inherits="BOOKSDETAILS_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
    </style>
</head>
<body style="background-color:aquamarine">
    <form id="form1" runat="server">
        <div align="Center">
        <asp:Label ID="lblMainHeading" runat="server" Text="ONLINE LIBRARY MANAGEMENT SYSTEM" ForeColor="DarkRed" Font-Names="algerian" Font-Size="XX-Large"></asp:Label>
        </div> 
        <br /><br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/BOOKSDETAILS/DISPLY IMAGE/Ganesha_Digital_Art.jpg" Height="300px" Width="1350px" BorderColor="ForestGreen" BorderStyle="Groove" BorderWidth="7" />
    <br /><br />
        <div align="Center">
        <table border="1">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
            <td colspan="2" style="background-color:yellow">
                <asp:Label ID="lblStatus" runat="server" BackColor="PapayaWhip" Text="B O O K S D E TA I L S" Font-Names="algerian" ForeColor="OliveDrab"></asp:Label>
            </td>
            <tr>
                <td><span ID="spanID">ID</span></td>
                <td class="auto-style1"><span id="span1ID"><%#Eval("ID")%></span></td>
            </tr>
            <tr>
                <td><span ID="span1">NAME</span></td>
                <td class="auto-style1"><span id="span2"><%#Eval("Name")%></span></td>
            </tr>
             <tr>
                <td><span ID="span3">Author</span></td>
                <td class="auto-style1"><span id="span4"><%#Eval("Author")%></span></td>
            </tr>
             <tr>
                <td><span ID="span5">Publisher</span></td>
                <td class="auto-style1"><span id="span6"><%#Eval("Publisher")%></span></td>
            </tr>
             <tr>
                <td><span ID="span7">Cost</span></td>
                <td class="auto-style1"><span id="span8"><%#Eval("Cost")%></span></td>
            </tr>
             <tr>
                <td><span ID="span9">PNRNO</span></td>
                <td class="auto-style1"><span id="span10"><%#Eval("PNRNO")%></span></td>
            </tr>
               <tr>
                <td colspan="2" style="background-color:aquamarine"></td>
            </tr>
                    </ItemTemplate>
                 </asp:Repeater> 
         </table>
        <br />
            <br />
            <br />
    </div>
        <div align="Right" style="background-color: #FFFF99">
            <asp:Button ID="btnback" runat="server" Text="GO_BACK" ForeColor="DarkRed" BackColor="Wheat" PostBackUrl="~/Online Management Library Syste/Registration.aspx" />
        </div>
    </form>
</body>
</html>
