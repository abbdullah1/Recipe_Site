<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Comments.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style6 {
            background-color: #99CCFF;
        }
        .auto-style12 {
            width: 60px;
            text-align: center;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 2px;
        }
        .auto-style9 {
            text-align: left;
            width: 243px;
        }
        .auto-style10 {
            text-align: right;
            width: 107px;
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
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px"  Width="30px" OnClick="Button1_Click1" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>APPROVED COMMENT LIST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
    
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CommentNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—delete icon_4420857.png" Width="30px" />
                            </a></td>
                        <td class="auto-style8">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—refresh icon_4420314.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
   
    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Text="+" CssClass="auto-style13" Height="30px"  Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>UNAPPROVED COMMENT LIST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("CommentNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—delete icon_4420857.png" Width="30px" />
                            </td>
                        <td class="auto-style8">
                           <a href ="CommentDetails.aspx?CommentId=<%#Eval("CommentId")%>"> <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—refresh icon_4420314.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

