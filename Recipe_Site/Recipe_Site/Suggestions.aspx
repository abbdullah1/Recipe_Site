<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Suggestions.aspx.cs" Inherits="Suggestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
            background-color: #99CCFF;
        }
        .auto-style9 {
            background-color: #99CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px"  Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>APPROVED SUGGESTIONS LIST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
    
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RecommendName") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                         <a href="SuggestionDetails.aspx?RecommendId=<%#Eval("RecommendId") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/idea.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;" CssClass="auto-style8">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Text="+" CssClass="auto-style13" Height="30px"  Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style9">UNAPPROVED SUGGESTIONS LIST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
    
    
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RecommendName") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                         <a href="SuggestionDetails.aspx?RecommendId=<%#Eval("RecommendId") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/idea.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

