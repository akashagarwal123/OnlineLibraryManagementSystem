<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Online Management Library Syste/LibraryManagement.master" CodeFile="Registration.aspx.cs" Inherits="REGISTRATION_Registration" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="Center">
       <asp:Label ID="lblStatus8" runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="DarkBlue"></asp:Label>
        <br />
        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/REGISTRATION/BF116-11KM.jpg" />
    </div>
    <br />
    <br />
    <div align="Center">
        <asp:Label ID="lblStatus9" runat="server" ForeColor="#ff0000" Text="Register Yourself!" Font-Size="X-Large" Font-Name="Algerian"></asp:Label>
    </div>
    <br />
    <div align="Center">
        <table border="1" bordercolor="Red">
            <tr>
                <td>
                    <asp:Label ID="lblStatus1" runat="server" Text="Name" Font-Italic="True" ForeColor="Maroon"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="20"  CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="SandyBrown" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is mendatory"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <td>
                <asp:Label ID="lblStatus2" runat="server" Text="Father's_Name" Font-Italic="True" ForeColor="Maroon" ValidateRequestMode="Enabled"></asp:Label>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="SandyBrown" ControlToValidate="TextBox2" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </td>
            </td>
            <tr>
                <td>
                    <asp:Label ID="lblStatus3" runat="server" Font-Italic="true" ForeColor="#800000" Text="DOB"></asp:Label>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>(DD/MM/YYYY)
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="SandyBrown" ControlToValidate="TextBox3" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                    </td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus4" runat="server" Font-Italic="true" ForeColor="#800000" Text="Course"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>B.tech</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>M.TECH</asp:ListItem>
                        <asp:ListItem>B.Pharma</asp:ListItem>
                        <asp:ListItem>M.Pharma</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="SandyBrown" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus5" runat="server" Font-Italic="true" ForeColor="#800000" Text="Mobile_Number"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" ForeColor="SandyBrown" ControlToValidate="TextBox5" MinimumValue="0" Type="Integer" MaximumValue="58" runat="server" ErrorMessage="Range exceeded"></asp:RangeValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus6" runat="server" Font-Italic="true" ForeColor="Maroon" Text="Branch"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="SandyBrown" ControlToValidate="TextBox6" runat="server" ErrorMessage="Branch is mendatory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus10" runat="server" Font-Italic="true" ForeColor="Maroon" Text="Email_ID"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>

            </tr>
        </table>
        <br />
        <asp:Button ID="btnSubmit" Text="SUBMIT" ForeColor="DarkMagenta" runat="server" BorderStyle="Ridge" BorderColor="DarkBlue" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <asp:Label ID="lblStatus14" runat="server" ForeColor="DarkRed" BackColor="Wheat"></asp:Label>
         <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="true" ForeColor="CadetBlue" runat="server" />
    </div>
    <br />
    <asp:Label ID="lblStatus7" ForeColor="#009900" runat="server" Text=""></asp:Label>
</asp:Content>
