using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loginpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=studentform;Integrated Security=True;Encrypt=False");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text!="" && TextBox2.Text != "")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("login", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@USERNAME", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.AddWithValue("@pwd", SqlDbType.VarChar).Value = TextBox2.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("CourseHome.aspx");
            }
            else
            {
                Response.Write("Cant find user. Kindly check the username and password.");
            }
        }
        else
        {
            Response.Write("Kindly fill all the fields to login");

        }

    }
}