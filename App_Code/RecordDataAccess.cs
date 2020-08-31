using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;

public class RecordDataAccess
{
    public static int updateStudentLevel(string stuid, string level)
    {
        string studentID = stuid;
        string levelid = level;
        string sql = "Update students set level_id='" + levelid + "' where student_ID='" + studentID + "'";
        int rowsAffected;

        using (SqlConnection connection = ConnectionManager.GetStudentConnection())
        {
            SqlCommand command = new SqlCommand(sql, connection);
            command.CommandType = CommandType.Text;
            rowsAffected = command.ExecuteNonQuery();
        }
        return rowsAffected;
    }

    public static int ADDNewCourse(string stuid,string couid,string level,string blockid)
    {
        string studentID = stuid;
        string courseID = couid;
        string levelid = level;
        string blocknum = blockid;

        string sql = "INSERT into student_record (student_ID,subject_ID,level_id,bluck_ID) VALUES ('" + studentID + "' ,'" + courseID + "','" + levelid + "','"+blocknum+"')";
        int rowsAffected;

        using (SqlConnection connection = ConnectionManager.GetStudentConnection())
        {
            SqlCommand command = new SqlCommand(sql, connection);
            command.CommandType = CommandType.Text;
            rowsAffected = command.ExecuteNonQuery();
        }
        return rowsAffected;
    }

    public static int checkstudent(string st_id,string level_id,string block_id) {

        string sql = "select count(*) from student_record where student_ID='" + st_id + "' and level_id='" + level_id + "' and bluck_ID='" + block_id + "'";
        int rowsAffected=0;

        using (SqlConnection connection = ConnectionManager.GetStudentConnection())
        {
            SqlCommand command = new SqlCommand(sql, connection);
            command.CommandType = CommandType.Text;
            rowsAffected = Convert.ToInt32(command.ExecuteScalar().ToString());

        }
        return rowsAffected;

    
    }


 public static SqlDataReader GetAllData(string courseID)
    {
        string sql = "SELECT course_id, score_month, MAX(Result) AS Maximum, MIN(Result) AS Minumum, AVG(Result) AS Average FROM StudentProgreeRecord GROUP BY course_id, score_month HAVING(course_id = N'" + courseID + "')";
        SqlConnection connection = ConnectionManager.GetStudentConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;
        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

 public static DataTable GetAllDataSet(string courseID)
 {
     string sql = "SELECT course_id, score_month, MAX(Result) AS Maximum, MIN(Result) AS Minumum, AVG(Result) AS Average FROM StudentProgreeRecord GROUP BY course_id, score_month HAVING(course_id = N'" + courseID + "')";
     DataTable ds;
     using (SqlConnection connection = ConnectionManager.GetStudentConnection())
     {

         SqlCommand command = new SqlCommand(sql, connection);

         SqlDataAdapter sdp = new SqlDataAdapter(command);
         ds = new DataTable();
         sdp.Fill(ds);
     }
     return ds;


 }

 public static DataTable GetStudentAllDataSet(string StudentID,string courseID)
 {
     string sql = "SELECT  student_id, course_id,score_month, Result FROM StudentProgreeRecord WHERE (course_id = N'" + courseID + "') AND (student_id = N'" + StudentID + "')";
     DataTable ds;
     using (SqlConnection connection = ConnectionManager.GetStudentConnection())
     {

         SqlCommand command = new SqlCommand(sql, connection);

         SqlDataAdapter sdp = new SqlDataAdapter(command);
         ds = new DataTable();
         sdp.Fill(ds);
     }
     return ds;


 }

}
