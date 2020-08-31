using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_StudentUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void studentupdatesql_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception == null)
        {
            LabelMasge.Text = "Recored Update Successfully";
        }
        else
        {
            LabelMasge.Text = "An Error Occure During Performing Update Operation";
            e.ExceptionHandled = true;

        }
    }
}