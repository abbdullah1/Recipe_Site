<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong>ABOUT US</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="446px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Text") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Images/anatomy-of-a-blog-post-deconstructed-header.jpg" Width="448px" />
</asp:Content>

