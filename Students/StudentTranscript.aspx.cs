﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_StudentMovingLevel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1) {
            MultiView1.ActiveViewIndex = 0;
        }else
            if (DropDownList1.SelectedIndex == 2) {
                MultiView1.ActiveViewIndex = 1;
            }else
                if (DropDownList1.SelectedIndex == 3) {
                    MultiView1.ActiveViewIndex = 2;
                }else
                    if (DropDownList1.SelectedIndex == 4) {
                        MultiView1.ActiveViewIndex = 3;
                    }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}