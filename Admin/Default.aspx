<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Admin's Home</title>
     <link rel="stylesheet" type="text/css"href="../css/style.css" />
     <link rel="stylesheet" type="text/css"href="../css/admin.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="menu">
            <ul id="nav">
                <li><asp:HyperLink ID="link_mng_home" runat="server" NavigateUrl="~/Admin/siteManger/default.aspx">User Manege Home</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_mng_role" runat="server" NavigateUrl="~/Admin/siteManger/roles.aspx">Role Manager</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_user_edit" runat="server" NavigateUrl="~/Admin/siteManger/edit_user.aspx">View & Edit User</asp:HyperLink></li>
               <li><asp:HyperLink ID="link_user_add" runat="server" NavigateUrl="~/Admin/siteManger/add_user.aspx">Add New User</asp:HyperLink></li>
                <li><asp:HyperLink ID="link_view_byrole" runat="server" NavigateUrl="~/Admin/siteManger/users_by_role.aspx">View User by Role</asp:HyperLink></li>
            </ul>
        </div>
     <center><asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
    <asp:Image ID="center_img" runat="server" ImageUrl="~/css/jewelry.jpg" /></center>
    
    
</asp:Content>

