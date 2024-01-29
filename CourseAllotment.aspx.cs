using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseAllotment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=studentform;Integrated Security=True;Encrypt=False");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

  

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("course_allot_insert", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sname", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@scourse", SqlDbType.VarChar).Value = TextBox8.Text;
        cmd.Parameters.AddWithValue("@cfee", SqlDbType.Int).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("@feetype", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
        cmd.Parameters.AddWithValue("@fname", SqlDbType.VarChar).Value = TextBox7.Text;
        cmd.Parameters.AddWithValue("@fhandlesub", SqlDbType.VarChar).Value = TextBox8.Text;
        cmd.Parameters.AddWithValue("@sdoj", SqlDbType.DateTime).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@fid", SqlDbType.Int).Value = DropDownList3.SelectedItem.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("CourseAllotment.aspx");
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox7.Text = DropDownList3.SelectedValue;
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("CourseAllotment.aspx");
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from studentenquiry where sname='" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox8.Text = dr["courses"].ToString();  
        }
        else
        {
            Response.Write("No data found");
        }
        con.Close();
        
    }



    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from course where coursename='" + TextBox8.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox4.Text = dr["price"].ToString();
        }
        con.Close();
    }
}