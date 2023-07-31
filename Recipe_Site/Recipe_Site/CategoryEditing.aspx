<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="CategoryEditing.aspx.cs" Inherits="CategoryAdminDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
            width: 568px;
        }
        .auto-style7 {
            width: 568px;
        }
        .auto-style8 {
            width: 568px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style6">CATEGORY NAME :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;NUMBER :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;IMAGE :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="244px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" Width="170px" />
            </td>
        </tr>
    </table>
</asp:Content>

