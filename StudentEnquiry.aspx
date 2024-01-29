<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="StudentEnquiry.aspx.cs" Inherits="StudentEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 802px;
            height: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table class="auto-style1" style="padding:25px;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="label3" Text ="Student Enquiry Form" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
        <td>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </td>
    </tr>
        <tr>
    <td class="auto-style1">
        <asp:Label ID="label2" Text ="Student Name" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="270px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
</td>

</tr>
                <tr>
    <td class="auto-style1">
        <asp:Label ID="label1" Text ="Phone no" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="270px"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label4" Text ="Address" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="270px"></asp:TextBox>
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
        <asp:Label ID="label6" Text ="Courses" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" Height="52px" Width="280px" DataSourceID="SqlDataSource1" DataTextField="coursename" DataValueField="coursename">
            <asp:ListItem Selected="True">Select Course</asp:ListItem>
            <asp:ListItem>Dotnet</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>Web Design</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentformConnectionString %>" SelectCommand="SELECT [coursename], [price] FROM [course]"></asp:SqlDataSource>
</td>

</tr>
                                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label7" Text ="Reference" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="271px"></asp:TextBox>
</td>

</tr>
                                                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label8" Text ="Other" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="271px"></asp:TextBox>
</td>

</tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Submit" style="font-size:30px;background-color:black;color:white;" OnClick="Button1_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Reset" style="font-size:30px;background-color:black;color:white;" OnClick="Button3_Click"/>
            </td>
        </tr> 
</table>
</asp:Content>

