<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
     <link rel="stylesheet" type="text/css"href="./css/style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center><asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
    <asp:Image ID="center_img" runat="server" ImageUrl="~/css/jewelry.jpg" /></center>
    
    
</asp:Content>

