<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MessageDetail.aspx.cs" Inherits="MessageDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        text-align: right;
    }
    .auto-style7 {
        text-align: right;
        height: 110px;
    }
    .auto-style8 {
        height: 110px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Message Owner :</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail :</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Subject :</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Message :</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox4" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

