<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CourseAllotment.aspx.cs" Inherits="CourseAllotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style2 {
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <table class="auto-style1" style="padding:25px;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="label3" Text ="Course Allotment" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
    </tr>
        <tr>
    <td class="auto-style1">
        &nbsp;</td>
    <td class="auto-style1">
        &nbsp;</td>

</tr>
                <tr>
    <td class="auto-style1">
        <asp:Label ID="label1" Text ="Student Name" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="270px" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style2">
        <asp:Label ID="label4" Text ="Course" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style2">
        <asp:TextBox ID="TextBox8" runat="server" Height="32px" Width="270px" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:Button ID="Button5" runat="server"  Text="Calculate Fee" OnClick="Button5_Click" />
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label5" Text ="Fee" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="270px" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label6" Text ="Fee Type" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="277px" AutoPostBack="True">
            <asp:ListItem Value=" ">Select Fee Type</asp:ListItem>
            <asp:ListItem Value="Single">Single Pay</asp:ListItem>
            <asp:ListItem Value="Installment">Three Months</asp:ListItem>
        </asp:DropDownList>
</td>

</tr>
                                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label7" Text ="Faculty Id" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="37px" Width="277px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="fid" DataValueField="fname" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem>Select Id</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:studentformConnectionString %>" SelectCommand="SELECT DISTINCT [fid], [fname] FROM [faculty]"></asp:SqlDataSource>
</td>

</tr>
                                                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label8" Text ="Faculty Name" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
                                                                                <tr>
    <td class="auto-style1">
        <asp:Label ID="label2" Text ="Joining Date(MM/DD/YYYY)" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Allot Course" style="font-size:30px;background-color:black;color:white;" OnClick="Button1_Click"/>
            </td>
            <td class="auto-style1">
             <asp:Button ID="Button4" runat="server" Height="47px" Text="Reset" style="font-size:30px;background-color:gray;color:black;" Width="143px" OnClick="Button4_Click" />
</td>
        </tr>
</table>
</asp:Content>

