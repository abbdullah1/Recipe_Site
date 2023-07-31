<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AboutUsAdmin.aspx.cs" Inherits="AboutUsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style6 {
            background-color: #99CCFF;
        }
        .auto-style12 {
            width: 60px;
            text-align: center;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 2px;
        }
        .auto-style14 {
        margin-left: 80px;
    }
    .auto-style15 {
        text-align: center;
        margin-left: 80px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px"  Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ABOUT US&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button3" runat="server" Text="UPDATE" Width="163px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

