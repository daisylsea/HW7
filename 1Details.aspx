<%@ Page Language="VB" AutoEventWireup="false" CodeFile="1Details.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
     <center>
    <form id="form1" runat="server">
    <div>
    

        <asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_jewelry %>"  SelectCommand="SELECT * FROM [xliang1_jewelry] WHERE ([j_ID] = @j_ID)" >
           
            <SelectParameters>
                <asp:QueryStringParameter Name="j_ID" QueryStringField="j_ID" Type="Int32" />
            </SelectParameters>
            
        </asp:SqlDataSource>
    
    &nbsp;<br />
    
    </div>
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
<AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>

<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="j_ID" HeaderText="Jewelry ID" InsertVisible="False" ReadOnly="True" SortExpression="j_ID" />
                <asp:BoundField DataField="j_name" HeaderText="Jewelry Name" SortExpression="j_name" />
                <asp:BoundField DataField="j_color" HeaderText="Color" SortExpression="j_color" />
                <asp:BoundField DataField="j_size" HeaderText="Size" SortExpression="j_size" />
                <asp:BoundField DataField="j_weight" HeaderText="Weight" SortExpression="j_weight" />
                <asp:BoundField DataField="j_number" HeaderText="Quantity" SortExpression="j_number" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>
        </asp:DetailsView>
    </form>
     </center>
</body>
</html>
