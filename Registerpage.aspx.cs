using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Registerpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=studentform;Integrated Security=True;Encrypt=False");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text!=""&& TextBox5.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("register",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = TextBox1.Text;
                cmd.Parameters.AddWithValue("@pwd", SqlDbType.VarChar).Value = TextBox2.Text;
                cmd.Parameters.AddWithValue("@confirm_pwd", SqlDbType.VarChar).Value = TextBox3.Text;
                cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = TextBox4.Text;
                cmd.Parameters.AddWithValue("@phoneno", SqlDbType.BigInt).Value = TextBox5.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("Loginpage.aspx");
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
            else
            {
                Response.Write("Password does not match");

            }
        }
        else
        {
            Response.Write("Kindly fill all the fields");
        }
    }
}