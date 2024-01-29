<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Loginpage.aspx.cs" Inherits="Loginpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 303px;
        }
        .auto-style2 {
            width: 881px;
            height: 368px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" style="padding:25px;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="label3" Text ="Login" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
    </tr>
        <tr>
    <td class="auto-style1">
        <asp:Label ID="label2" Text ="Username" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="235px"></asp:TextBox>
</td>

</tr>
                <tr>
    <td class="auto-style1">
        <asp:Label ID="label1" Text ="Password" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="235px" TextMode="Password"></asp:TextBox>
</td>

</tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Login" style="font-size:30px;background-color:black;color:white;" OnClick="Button1_Click"/>
            </td>
             <td>
     <asp:Button ID="Button2" runat="server" Text="Cancel" style="font-size:30px;background-color:black;color:white;" PostBackUrl="~/Homepage.aspx"/>
 </td>
             <td>
     <asp:Button ID="Button3" runat="server" Text="Register here" style="font-size:30px;background-color:black;color:white;" PostBackUrl="~/Registerpage.aspx"/>
 </td>
        </tr>
</table>
    
</asp:Content>

