
Partial Class search
    Inherits System.Web.UI.Page
    
    Protected Sub tb_search_TextChanged(sender As Object, e As EventArgs) Handles tb_search.TextChanged
        Dim searchWord As String
        searchWord = "Select * From xliang1_jewelry where (j_name Like '%" + tb_search.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub tb_search1_TextChanged(sender As Object, e As EventArgs) Handles tb_search1.TextChanged
        Dim searchWord As String
        searchWord = "Select * From xliang1_jewelry where (j_name Like '%" + tb_search1.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
