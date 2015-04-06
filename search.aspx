<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Search</title>
     <link rel="stylesheet" type="text/css"href="./css/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_jewelry %>" SelectCommand="SELECT * FROM [xliang1_jewelry]"></asp:SqlDataSource>
    <% If Not IsPostBack Then%>Search for a Jewelry by name
    <asp:TextBox ID="tb_search" runat="server" AutoPostBack="True"></asp:TextBox>
   
    <br />
    <% Else%> Search for a jewelry by color&nbsp;
    <asp:TextBox ID="tb_search1" runat="server" AutoPostBack="True"></asp:TextBox>
   
    <br />
    <br />
    <% End If %>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="j_ID" DataSourceID="SqlDataSource1"
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="j_ID" HeaderText="Jewelry ID" InsertVisible="False" ReadOnly="True" SortExpression="j_ID" />
            <asp:BoundField DataField="j_name" HeaderText="Name" SortExpression="j_name" />
            <asp:BoundField DataField="j_color" HeaderText="Color" SortExpression="j_color" />
            <asp:BoundField DataField="j_size" HeaderText="Size" SortExpression="j_size" />
            <asp:BoundField DataField="j_weight" HeaderText="Weight" SortExpression="j_weight" />
            <asp:BoundField DataField="j_number" HeaderText="Quantity" SortExpression="j_number" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
</asp:Content>

