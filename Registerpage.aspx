<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registerpage.aspx.cs" Inherits="Registerpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 406px;
            height: 109px;
        }
        .auto-style2 {
            width: 806px;
            height: 109px;
        }
        .auto-style3 {
            width: 235px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table class="auto-style2" style="padding:25px;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="label3" Text ="Register" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
    </tr>
        <tr>
    <td class="auto-style1">
        <asp:Label ID="label2" Text ="Username" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="270px"></asp:TextBox>
</td>

</tr>
                <tr>
    <td class="auto-style1">
        <asp:Label ID="label1" Text ="Password" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="270px" TextMode="Password"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label4" Text ="Confirm Password" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="270px" TextMode="Password"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label5" Text ="EmailId" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="270px"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label6" Text ="Phone No" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="271px"></asp:TextBox>
</td>

</tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Submit" style="font-size:30px;background-color:black;color:white;" OnClick="Button1_Click"/>
            </td>
        </tr>
</table>
</asp:Content>

