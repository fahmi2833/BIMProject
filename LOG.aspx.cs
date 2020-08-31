using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LOG : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ITAdminConnectionString"].ConnectionString);
        conn.Open();
        string checkadmin = "select count(*) from Admin where UserName='" + TextBoxusername.Text + "'";
        SqlCommand com = new SqlCommand(checkadmin, conn);
        int tamp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (tamp == 1)
        {
            conn.Open();
            string checkpasswordQuery = "select Password from Admin where UserName='" + TextBoxusername.Text + "'";
            SqlCommand PassComm = new SqlCommand(checkpasswordQuery, conn);
            string Password = PassComm.ExecuteScalar().ToString().Replace(" ","");

            if (Password == TextBoxPassword.Text)
            {
                Session ["new"]= TextBoxusername.Text;
             lableMasge.Text="Password is correct";
                Response.Redirect("index.aspx");
            }
            else
            {
                lableMasge.Text ="Password is Not correct";
            }
        }
            else
            {
                lableMasge.Text ="User Name is Not correct";
            }

        }


    }
