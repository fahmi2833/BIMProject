using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_StudFor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void studForm_Inserted(object sender, SqlDataSourceStatusEventArgs e)
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