using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentEnquiry : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=studentform;Integrated Security=True;Encrypt=False");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT_ENQUIRY", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sname", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@sphone", SqlDbType.BigInt).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@saddress", SqlDbType.VarChar).Value = TextBox3.Text;
        cmd.Parameters.AddWithValue("@semail", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("@course", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
        cmd.Parameters.AddWithValue("@reference", SqlDbType.VarChar).Value = TextBox6.Text;
        cmd.Parameters.AddWithValue("@other", SqlDbType.VarChar).Value = TextBox7.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("StudentEnquiry.aspx");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DropDownList1.SelectedItem.Text = "Select Value";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentenquiry where sname = '" + TextBox1.Text+"'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr["sname"].ToString();
            TextBox2.Text = dr["sphone"].ToString();
            TextBox3.Text = dr["saddress"].ToString();
            TextBox4.Text = dr["semail"].ToString();
            TextBox6.Text = dr["reference"].ToString();
            TextBox7.Text = dr["other"].ToString();
            foreach (var j in DropDownList1.Items)
            {
                for (int i = 0; i < DropDownList1.Items.Count; i++)
                {
                    if (DropDownList1.Items[i].Text == dr["courses"].ToString())
                    {
                        DropDownList1.SelectedIndex = i;
                    }
                }
            }
            
        }
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentEnquiry.aspx");
    }
}