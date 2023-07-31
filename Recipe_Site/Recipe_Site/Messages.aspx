<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: right;
            background-color: #99CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style7">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px"  Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                </td>
                <td class="auto-style7">COMMUNUCATION LIST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
    
    
    </div>
    
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MessageNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                          <a href ="MessageDetail.aspx?MessageId=<%#Eval("MessageId") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—vector book icon_4152406.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

