<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="RecommendRecipe.aspx.cs" Inherits="RecommendRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
        .auto-style5 {
            width: 167px;
        }
        .auto-style6 {
            width: 167px;
            text-align: right;
        }
        .auto-style7 {
            margin-left: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Recipe Name :&nbsp; </td>
        <td>
            <asp:TextBox ID="TxtRecommendName" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Ingredients : </td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TxtRecommendIngredients" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Medhod :</td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TxtRecommendMethod" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Image :</td>
        <td style="margin-left: 120px">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Owner :</td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TxtRecommendOwner" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Owner Mail :</td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TxtRecommendOwnerMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td style="margin-left: 120px">
            <asp:Button ID="BtnRecommendRecipe" runat="server" BackColor="#99CCFF" CssClass="auto-style7" Text="Recommend Recipe" OnClick="BtnRecommendRecipe_Click" />
        </td>
    </tr>
</table>
</asp:Content>

