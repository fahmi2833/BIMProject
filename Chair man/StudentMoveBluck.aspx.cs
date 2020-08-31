using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chair_man_StudentMoveBluck : System.Web.UI.Page
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
        string studentid;
        string courseid;
        int Rowaffected;
        int Rowaffected2;
        string levelid;

        String bluckid;
        studentid = TextBox1.Text;
        try
        {
            if (studentid != null && studentid != "")
            {
                int numRowCount = GridView1.Rows.Count;
                bluckid = DropDownList2.SelectedValue;
                levelid = DropDownList3.SelectedValue;

                if (RecordDataAccess.checkstudent(studentid, levelid, bluckid) == 0)
                {
                    if (numRowCount > 0)
                    {
                        for (int i = 0; i < numRowCount; i++)
                        {
                            GridViewRow row = this.GridView1.Rows[i];
                            courseid = row.Cells[0].Text;
                            Rowaffected = RecordDataAccess.ADDNewCourse(studentid, courseid, levelid, bluckid);

                        }
                        Rowaffected2 = RecordDataAccess.updateStudentLevel(studentid, bluckid);

                        MessageLable.Text = "The Registration OPeration  is Completed Successfully.";


                    }
                }
                else
                {
                    MessageLable.Text = "This Student Already Registered in the block [ " + bluckid + " ]";
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
}