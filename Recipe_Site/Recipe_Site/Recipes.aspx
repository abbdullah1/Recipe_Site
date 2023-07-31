<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            background-color: #99CCFF;
        }
    .auto-style8 {
        text-align: right;
    }
        .auto-style9 {
            text-align: left;
            width: 243px;
        }
        .auto-style10 {
            text-align: right;
            width: 107px;
        }
        .auto-style11 {
            width: 2px;
        }
        .auto-style12 {
            width: 60px;
            text-align: center;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style15 {
            background-color: #4291C6;
        }
        .auto-style16 {
            margin-left: 40px;
        }
        .auto-style17 {
            text-align: center;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
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
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RecipeName") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                        <a href ="Recipes.aspx?RecipeId=<%#Eval("RecipeId") %>&process=delete"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—delete icon_4420857.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                        <a href ="RecipeEdit.aspx?RecipeId=<%#Eval("RecipeId") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—refresh icon_4420314.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;" CssClass="auto-style6">
      <table class="auto-style4">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Button3" runat="server" Text="+" CssClass="auto-style13" Height="30px" Width="30px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px"  />
                    </td>
                    <td>RECIPE ADD</td>
                </tr>
            </table>
    </asp:Panel>
      <asp:Panel ID="Panel4" runat="server" CssClass="auto-style15">
            <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>RECIPE NAME :</td>
            <td>
                <asp:TextBox ID="RecipeName" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>INGREDIENTS :</td>
            <td>
                <asp:TextBox ID="Ingredients" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>METHOD :</td>
            <td class="auto-style16">
                <asp:TextBox ID="Method" runat="server" Height="123px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
                <tr>
                    <td>CATEGORY :</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="ADD" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
    </table> 
        </asp:Panel>
   
</asp:Content>

