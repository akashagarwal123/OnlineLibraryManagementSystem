<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wallpapers.aspx.cs" Inherits="Details_Gallery_Images_Wallpapers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery_Photos</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="Center" style="font-family: Algerian; color: #660033; font-size: xx-large">
        GALLERY<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Image ID="Image2" runat="server" Height="295px" ImageUrl="~/Details/Gallery_Images/05.jpg" Width="456px" />
                <asp:Image ID="Image1" runat="server" Height="300" Width="400" />
                <asp:Image ID="Image3" runat="server" Height="299px" ImageUrl="~/Details/Gallery_Images/06.jpg" Width="402px" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="Timer1" Interval="2000" OnTick="Timer1_Tick" runat="server"></asp:Timer>
    
    </div>
   
     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:Image ID="Image4" runat="server" Height="295px" ImageUrl="~/Details/Gallery_Images/01.jpg" Width="456px" />
                 <asp:Image ID="Image5" runat="server" Height="300" Width="434px" />
                <asp:Image ID="Image6" runat="server" Height="296px" ImageUrl="~/Details/Gallery_Images/03.jpg" Width="375px" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="Timer2" Interval="2000" OnTick="Timer2_Tick" runat="server"></asp:Timer>
        <p style="height: 39px; background-color: #800000;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Online Management Library Syste/Registration.aspx">GO_BACK</asp:HyperLink>
        </p>
    </form> 
</body>
</html>
