<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="RecipeEdit.aspx.cs" Inherits="RecipeEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
            width: 172px;
        }
        .auto-style7 {
            width: 172px;
        }
        .auto-style8 {
            text-align: left;
        }
    .auto-style9 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 230px;
        background-color: #FFFF99;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Recipe Name :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Recipe Ingredients :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Recipe Method : </strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Category Id :</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Recipe Image :</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="249px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="UPDATE" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="39px" OnClick="Button2_Click" Text="Choose The MOTD" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>

