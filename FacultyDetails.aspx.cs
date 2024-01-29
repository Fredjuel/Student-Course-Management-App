using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class FacultyDetails : System.Web.UI.Page
{
  SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=studentform;Integrated Security=True;Encrypt=False");

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList1.SelectedValue;
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from courseallotment where sid=" + TextBox3.Text + "", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox4.Text = dr["sname"].ToString();
            TextBox5.Text = dr["scourse"].ToString();
        }
        else
        {
            Response.Write("No Data Found");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert_faculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@fname", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@sid", SqlDbType.Int).Value = TextBox3.Text;
        cmd.Parameters.AddWithValue("@sname", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("@scourse", SqlDbType.VarChar).Value = TextBox5.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("FacultyDetails.aspx");
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if(RadioButton1.Checked == true)
        {
            RadioButton2.Checked = false;
            DropDownList1.Visible = false;
            Button1.Visible = true;
            Button2.Visible = false;
        }
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton1.Checked = false;
            DropDownList1.Visible = true;
            Button1.Visible = false;
            Button2.Visible = true;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update_faculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@fid", SqlDbType.Int).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.AddWithValue("@fname", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@sid", SqlDbType.Int).Value = TextBox3.Text;
        cmd.Parameters.AddWithValue("@sname", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("@scourse", SqlDbType.VarChar).Value = TextBox5.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("FacultyDetails.aspx");
    }
}