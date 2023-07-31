<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="MealOfTheDay.aspx.cs" Inherits="MealOfTheDay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:DataList ID="DataList2" runat="server" Width="446px">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label8" runat="server" style="font-weight: 700" Text='<%# Eval("RecipeName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Ingredients </strong>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("RecipeIngredients") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Method</strong><br />
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("RecipeMethod") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="143px" ImageUrl='<%# Eval("RecipeImage") %>' style="text-align: center" Width="316px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style4">
                        <tr>
                            <td><strong>Rate </strong>:&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("RecipeRate") %>'></asp:Label>
                            </td>
                            <td style="text-align: right">Date:<asp:Label ID="Label12" runat="server" Text='<%# Eval("RecipeDate") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
&nbsp;
</asp:Content>

