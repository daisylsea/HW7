<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Admin_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_jewelry %>" DeleteCommand="DELETE FROM [xliang1_jewelry] WHERE [j_ID] = @j_ID" InsertCommand="INSERT INTO [xliang1_jewelry] ([j_name], [j_color], [j_size], [j_weight], [j_number]) VALUES (@j_name, @j_color, @j_size, @j_weight, @j_number)" SelectCommand="SELECT * FROM [xliang1_jewelry] WHERE ([j_ID] = @j_ID)" UpdateCommand="UPDATE [xliang1_jewelry] SET [j_name] = @j_name, [j_color] = @j_color, [j_size] = @j_size, [j_weight] = @j_weight, [j_number] = @j_number WHERE [j_ID] = @j_ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="j_ID" QueryStringField="j_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="j_name" Type="String" />
                <asp:Parameter Name="j_color" Type="String" />
                <asp:Parameter Name="j_size" Type="String" />
                <asp:Parameter Name="j_weight" Type="String" />
                <asp:Parameter Name="j_number" Type="Int32" />
                <asp:Parameter Name="j_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    &nbsp;<br />
        <span class="deleteJewelry"><asp:Label ID="lbl_deletedJewelry" runat="server"></asp:Label></span>
   
        <asp:DetailsView ID="DetailsView1" 
            runat="server" AllowPaging="True" 
            AutoGenerateRows="False" 
            DataKeyNames="j_ID" 
            DataSourceID="SqlDataSource1" 
            Height="50px" 
            style="margin-right: 124px" 
            Width="416px"
            HeaderText="Jewelry Details"
            CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldheader"
            ItemStyle-CssClass="item"
            AlternatingRowStyle-CssClass="altrow"
            CommandRowStyle-CssClass="command"
            PagerStyle-CssClass="pager"
            >
            <Fields>
                <asp:BoundField DataField="j_ID" HeaderText="Jewelry ID" InsertVisible="False" ReadOnly="True" SortExpression="j_ID" />
                <asp:BoundField DataField="j_name" HeaderText="Jewelry Name" SortExpression="j_name" />
                <asp:BoundField DataField="j_color" HeaderText="Color" SortExpression="j_color" />
                <asp:BoundField DataField="j_size" HeaderText="Size" SortExpression="j_size" />
                <asp:BoundField DataField="j_weight" HeaderText="Weight" SortExpression="j_weight" />
                <asp:BoundField DataField="j_number" HeaderText="Quantity" SortExpression="j_number" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        </center>
</asp:Content>

