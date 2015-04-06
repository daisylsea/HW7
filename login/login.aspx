<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Login</title>
     
     <link rel="stylesheet" type="text/css"href="../css/style.css" />
     <link rel="stylesheet" type="text/css"href="../css/admin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Login ID="Login1" runat="server">
        </asp:Login>
    
</asp:Content>

