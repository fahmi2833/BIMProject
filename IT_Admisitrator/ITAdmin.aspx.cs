using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class IT_Admisitrator_ITAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ITAdminConnectionString"].ConnectionString);
            conn.Open();
            string checkadmin ="select count(*) from Admin where UserName='"+TextBoxUN.Text+"'";
            SqlCommand com = new SqlCommand(checkadmin, conn);
            int tamp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if( tamp==1)
            {
                Response.Write("User already Exsits");
            }
            conn.Close();
       
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ITAdminConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Admin (ID,UserName,Password,E_mail,SecurityQuestion,SecurityAnswer) values (@ID,@Uname,@password,@email,@SQ,@SA) ";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@SQ", TextBoxSQ.Text);
            com.Parameters.AddWithValue("@SA", TextBoxSAnswer.Text);
            com.ExecuteNonQuery();

           

          LabelMasge.Text="Your account has been sucessfully created";
            conn.Close();
        }
        catch (Exception ex)
        {
            
          LabelMasge.Text="Error:"+ex.ToString();
        }
       
    }
}