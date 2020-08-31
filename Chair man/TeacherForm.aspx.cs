using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chair_man_TeacherForm : System.Web.UI.Page
{



    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void TeacherForm_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {

        
    }
    protected void TeacherForm_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception == null)
        {
            LabelMasge.Text = "Recored Inseting Successfully";
        }
        else
        {
            LabelMasge.Text = "An Error Occure During Performing Inset Operation";
            e.ExceptionHandled = true;

        }
    }
}