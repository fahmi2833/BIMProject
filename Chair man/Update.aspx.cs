using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chair_man_UpdateScore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
       

    }
    protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception == null)
        {
            LabelMessage.Text = "Recored Updated Successfully";
        }
        else
        {
            LabelMessage.Text = "An Error Occure During Performing Update Operation";
            e.ExceptionHandled = true;

        }
    }
}