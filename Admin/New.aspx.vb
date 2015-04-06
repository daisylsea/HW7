
Partial Class Admin_New
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_Welcome.Text = "Welcome, it is now " & DateTime.Now.ToLongDateString & "."
        FormView1.Focus()
    End Sub


    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("./Default.aspx")
    End Sub

End Class
