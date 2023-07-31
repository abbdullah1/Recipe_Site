<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
        text-align: right;
        width: 147px;
    }
    .auto-style7 {
        text-align: right;
        width: 147px;
    }
    .auto-style8 {
        width: 147px;
    }
    .auto-style9 {
        height: 26px;
        width: 147px;
    }
    .auto-style10 {
        text-align: center;
        color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style10" colspan="2">COMMUNICATION PANEL</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Name Surname :</td>
        <td>
            <asp:TextBox ID="TxtNameSurname" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail :</td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Subject :</td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtSubject" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Body : </td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtBody" runat="server" TextMode="MultiLine" Width="250px" CssClass="tb5" Height="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" Text="Send" Width="139px" CssClass="fb8" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

