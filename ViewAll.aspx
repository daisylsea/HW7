<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="ViewAll.aspx.vb" Inherits="ViewAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View All</title>
     <link rel="stylesheet" type="text/css"href="./css/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_jewelry %>" DeleteCommand="DELETE FROM [xliang1_jewelry] WHERE [j_ID] = @j_ID" InsertCommand="INSERT INTO [xliang1_jewelry] ([j_name], [j_color], [j_size], [j_weight], [j_number]) VALUES (@j_name, @j_color, @j_size, @j_weight, @j_number)" SelectCommand="SELECT * FROM [xliang1_jewelry]" UpdateCommand="UPDATE [xliang1_jewelry] SET [j_name] = @j_name, [j_color] = @j_color, [j_size] = @j_size, [j_weight] = @j_weight, [j_number] = @j_number WHERE [j_ID] = @j_ID">
            <DeleteParameters>
                <asp:Parameter Name="j_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="j_name" Type="String" />
                <asp:Parameter Name="j_color" Type="String" />
                <asp:Parameter Name="j_size" Type="String" />
                <asp:Parameter Name="j_weight" Type="String" />
                <asp:Parameter Name="j_number" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="j_name" Type="String" />
                <asp:Parameter Name="j_color" Type="String" />
                <asp:Parameter Name="j_size" Type="String" />
                <asp:Parameter Name="j_weight" Type="String" />
                <asp:Parameter Name="j_number" Type="Int32" />
                <asp:Parameter Name="j_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    
        <asp:GridView ID="GridView1" 
            runat="server" AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="j_ID" 
            DataSourceID="SqlDataSource1" 
            Width="454px"
            Gridlines="None"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr"
            >
            <Columns>
                <asp:BoundField DataField="j_name" HeaderText="Jewalry Name" SortExpression="j_name" />
                <asp:BoundField DataField="j_color" HeaderText="Color" SortExpression="j_color" />
                <asp:HyperLinkField DataNavigateUrlFields="j_ID" DataNavigateUrlFormatString="Details.aspx?j_ID={0}" Text="View" />
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>

