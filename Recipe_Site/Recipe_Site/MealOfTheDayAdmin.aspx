<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MealOfTheDayAdmin.aspx.cs" Inherits="MealOfTheDayAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 267px;
        }
        .auto-style7 {
            width: 264px;
        }
        .auto-style8 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td>RECIPE&nbsp; LIST</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RecipeName") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                        <a href ="RecipeEdit.aspx?RecipeId=<%#Eval("RecipeId") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—check mark icon_4139559.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

