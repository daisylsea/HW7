
Partial Class Admin_Details
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_Welcome.Text = "Welcome, it is now " & DateTime.Now.ToLongDateString & "."
    End Sub

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedJewelry As String = e.Values("j_name").ToString()
        lbl_deletedJewelry.Text = deletedJewelry & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
