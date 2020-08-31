using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chair_man_SubjectForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
       

    }
    protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception == null)
        {
            LabelMassge.Text = "Recored Inseting Successfully";
        }
        else
        {
            LabelMassge.Text = "An Error Occure During Performing Inset Operation";
            e.ExceptionHandled = true;

        }
    }
}