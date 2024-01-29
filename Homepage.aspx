<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel3" runat="server" Width="1200px" Height="700px">
        <asp:Label ID="Label1" runat="server" Text="Welcome to Student Course Manager" style="font-size:150px;"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="70px" PostBackUrl="~/Loginpage.aspx" style="font-size:40px;background-color:black;color:white;" Text="Get Started" Width="338px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </asp:Panel>

</asp:Content>

