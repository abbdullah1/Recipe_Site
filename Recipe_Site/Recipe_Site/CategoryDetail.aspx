<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="CategoryDetail.aspx.cs" Inherits="CategoryDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 27px;
            background-color: #DB4424;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5"><strong><a href="RecipeDetails.aspx?RecipeId=<%# Eval("RecipeId")%>">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RecipeName") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Ingredients :</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("RecipeIngredients") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Method :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("RecipeMethod") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<span class="auto-style6">Updated on : </span>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("RecipeDate") %>'></asp:Label>
                        &nbsp;- <em><strong>Recipe Rate :
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("RecipeRate") %>'></asp:Label>
                    </strong></em></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

