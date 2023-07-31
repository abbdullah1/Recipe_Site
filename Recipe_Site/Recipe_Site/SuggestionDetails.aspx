<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="SuggestionDetails.aspx.cs" Inherits="SuggestionDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style5">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </strong>
                <tr>
                    <td class="auto-style6">Recipe Name :</td>
                    <strong>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    </strong>
                </tr>
                <tr>
                    <td class="auto-style6">Ingredients :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Method : </td>
                    <td><strong>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Image :</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Owner :</td>
                    <td><strong>
                        <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Owner Mail :</td>
                    <td><strong>
                        <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Category :</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="APPROVE" Width="250px" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>

