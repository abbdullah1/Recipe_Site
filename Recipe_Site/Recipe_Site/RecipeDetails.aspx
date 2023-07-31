<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="RecipeDetails.aspx.cs" Inherits="RecipeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
            background-color: #BD7272;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            background-color: #CCCCCC;
        }
        .auto-style8 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" ForeColor="White" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("CommentNameSurname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #808080">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("CommentContents") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("CommentDate") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
        <div class="auto-style7">COMMENT PANEL</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style5">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </strong>
                <tr>
                    <td class="auto-style8">Name SurName :</td>
                    <strong>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    </strong>
                </tr>
                <tr>
                    <td class="auto-style8">Mail :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Comment : </td>
                    <td><strong>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="WriteComment" Width="254px" OnClick="Button1_Click" CssClass="fb8" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </asp:Panel>
    </asp:Content>

