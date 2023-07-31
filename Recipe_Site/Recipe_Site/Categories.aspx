<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="auto-style13" Height="30px" OnClick="Button1_Click" Width="30px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>CATEGORY LIST</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                        <a href ="Categories.aspx?CategoryId=<%#Eval("CategoryId") %>&process=delete"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—delete icon_4420857.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                        <a href ="CategoryEditing.aspx?CategoryId=<%#Eval("CategoryId")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/—Pngtree—refresh icon_4420314.png" Width="30px" /></a>
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
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" />
                    </td>
                    <td>CATEGORY ADD</td>
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
            <td>CATEGORY NAME :</td>
            <td>
                <asp:TextBox ID="CategoryName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CATEGORY ICON :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="ADD" OnClick="Button5_Click" />
            </td>
        </tr>
    </table> 
        </asp:Panel>
   
</asp:Content>

