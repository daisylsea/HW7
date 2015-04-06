<%@ Page Title="" Language="VB" MasterPageFile="~/jewelry.master" AutoEventWireup="false" CodeFile="New.aspx.vb" Inherits="Admin_New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Admin's New Jewelry</title>
     <link rel="stylesheet" type="text/css"href="../css/style.css" />
     <link rel="stylesheet" type="text/css"href="../css/admin.css" />
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
    
    &nbsp;<br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="j_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
               </EditItemTemplate>
            <InsertItemTemplate>
                  <table>
                   <tr>
                       <td id="head"style="text-align:right; ">
                          Jewelry Name 
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("j_name") %>' />
                </td>
                       <td>
                           <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter the name of jewelry!" ControlToValidate="TextBox1" CssClass="Error"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                   <tr>
                       <td id="head"style="text-align:right; ">
                         Color
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("j_color") %>' />
                </td>
                       
                    </tr>
                   <tr>
                       <td id="head" style="text-align:right; ">
                         Size
                        </td>
                       <td id="text"style="text-align:left">
                       
                 <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("j_size") %>' />
                </td>
                    </tr>
                 <tr>
                       <td id="head" style="text-align:right; ">
                          Weight
                        </td>
                       <td id="text"style="text-align:left">
                       
               <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("j_weight") %>' />
                </td>
                    </tr>
                   <tr>
                       <td id="head"style="text-align:right; ">
                          Quantity
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("j_number") %>' />
                </td>
                    </tr>
                 
                       
                <tr>
                       <td style="text-align:right; ">
                <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Save"  />
                           </td>
               <td style="text-align:left; color:lightcoral">
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </td>
                    </table>
                <br />
                </InsertItemTemplate>
            <ItemTemplate>
              </ItemTemplate>
        </asp:FormView>
  </center>
</asp:Content>

