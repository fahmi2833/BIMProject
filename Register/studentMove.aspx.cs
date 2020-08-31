using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_studentMove : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string studentid;
        string courseid;
        int Rowaffected;
        int Rowaffected2;

        String levelid;
        studentid = TextBox1.Text;
        try
        {
            if (studentid != null && studentid != "")
            {
                levelid = DropDownList1.SelectedValue;
                if (RecordDataAccess.checkstudent(studentid, levelid, "1") == 0)
                {

                    int numRowCount = GridView1.Rows.Count;

                    if (numRowCount > 0)
                    {
                        for (int i = 0; i < numRowCount; i++)
                        {
                            GridViewRow row = this.GridView1.Rows[i];
                            courseid = row.Cells[1].Text;
                            Rowaffected = RecordDataAccess.ADDNewCourse(studentid, courseid, levelid, "1");

                        }
                        Rowaffected2 = RecordDataAccess.updateStudentLevel(studentid, levelid);

                        MessageLable.Text = "The Registration OPeration  is Completed Successfully.";


                    }
                } else {
                MessageLable.Text = "This Student Already Registered...";

            }
            }
            else
            {
                MessageLable.Text = "Please Enter Student ID?";
            }
           
        }
        catch (SqlException)
        {
            MessageLable.Text = "There Is An Error During Performing the OPeration...";

        }
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}