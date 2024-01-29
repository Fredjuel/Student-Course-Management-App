<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Paymentdetails.aspx.cs" Inherits="Paymentdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <table class="auto-style1" style="padding:25px;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="label3" Text ="Payment Details" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" Font-Bold="True" ForeColor="Black"></asp:Label>
        </td>
        <td>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </td>
    </tr>
        <tr>
    <td class="auto-style1">
        <asp:Label ID="label2" Text ="Student Id" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="270px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
</td>

</tr>
                <tr>
    <td class="auto-style1">
        <asp:Label ID="label1" Text ="Student Name" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="270px"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label4" Text ="Course" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="270px"></asp:TextBox>
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label5" Text ="Payment Type" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="270px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Payment Details" />
</td>

</tr>
                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label6" Text ="Installment 1" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#66FF33" Text="PAID" Visible="False"></asp:Label>
&nbsp;
</td>

</tr>
                                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label7" Text ="Installment 2" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#66FF33" Text="PAID" Visible="False"></asp:Label>
&nbsp;
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Record Payment" Visible="False" />
</td>

</tr>
                                                            <tr>
    <td class="auto-style1">
        <asp:Label ID="label8" Text ="Installment 3" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#66FF33" Text="PAID" Visible="False"></asp:Label>
&nbsp;
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Record Payment" Visible="False" />
</td>


</tr>
                                                                                <tr>
    <td class="auto-style1">
        <asp:Label ID="label9" Text ="Total Amount" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox8" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
                                                                                <tr>
    <td class="auto-style1">
        <asp:Label ID="label10" Text ="Payment Status" runat="server" Font-Names="Helvetica" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox9" runat="server" Height="32px" Width="271px" AutoPostBack="True"></asp:TextBox>
</td>

</tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="Submit" style="font-size:30px;background-color:black;color:white;" OnClick="Button1_Click"/>
            </td>
            <td>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update Payment Info" Visible="False" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            </td>
        </tr>
</table>
</asp:Content>

