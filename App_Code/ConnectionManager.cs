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

public class ConnectionManager
{

    public static SqlConnection GetStudentConnection()
    {
        // Get the connection string from the configuration file
        string connectionString = ConfigurationManager.ConnectionStrings["Student_handConnectionString"].ConnectionString;

        // Create a new connection object
        SqlConnection connection = new SqlConnection(connectionString);

        // Open the connection, and return it
        connection.Open();
        return connection;
    }

}