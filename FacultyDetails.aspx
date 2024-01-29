<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="FacultyDetails.aspx.cs" Inherits="FacultyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
        .auto-style4 {
            height: 81px;
        }
        .auto-style5 {
            height: 85px;
        }
        .auto-style6 {
            height: 87px;
        }
        .auto-style7 {
            height: 96px;
        }
        .auto-style8 {
            height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <table class="auto-style1" style="padding:25px;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="label3" Text ="Faculty Details" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
        <td>

            &nbsp;</td>
    </tr>
        <tr>
    <td class="auto-style1">
        <asp:Label ID="label2" Text ="Faculty ID" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style1">
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="X-Large" Text="Add New Faculty" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" Font-Size="X-Large" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Select Existing Faculty" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="fid" DataValueField="fname" Font-Size="X-Large" Height="52px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="277px" Visible="False">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentformConnectionString %>" SelectCommand="SELECT DISTINCT [fid], [fname] FROM [faculty]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
</td>

</tr>
                <tr>
    <td class="auto-style4">
        <asp:Label ID="label1" Text ="Faculty Name" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style4">
        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="270px" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style5">
        <asp:Label ID="label4" Text ="Student ID" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style5">
        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="270px" OnTextChanged="TextBox3_TextChanged" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style6">
        <asp:Label ID="label5" Text ="Student Name" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style6">
        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="270px"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style7">
        <asp:Label ID="label6" Text ="Course" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style7">
        <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="271px"></asp:TextBox>
</td>

</tr>
                                            <tr>
    <td class="auto-style8">
                                                </td>
    <td class="auto-style8">
                                                </td>

</tr>
                                                            <tr>
    <td>
                                                                </td>
    <td>
                                                                </td>

</tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Add Faculty" style="font-size:30px;background-color:black;color:white;" OnClick="Button1_Click" Visible="False" />
            &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Assign Course" style="font-size:30px;background-color:black;color:white;" OnClick="Button2_Click" Visible="False"/>
            </td>
        </tr>
</table>
</asp:Content>

