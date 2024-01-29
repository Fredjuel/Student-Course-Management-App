using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paymentdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=studentform;Integrated Security=True;Encrypt=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from courseallotment where sid=" + TextBox1.Text + "", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr["sname"].ToString();
                TextBox3.Text = dr["scourse"].ToString();
                TextBox4.Text = dr["feetype"].ToString();
                TextBox8.Text = dr["cfee"].ToString();
                if (TextBox4.Text == "Single")
                {
                    label6.Visible = false;
                    label7.Visible = false;
                    label8.Visible = false;
                    TextBox5.Visible = false;
                    TextBox6.Visible = false;
                    TextBox7.Visible = false;
                }
                else
                {
                    label6.Visible = true;
                    label7.Visible = true;
                    label8.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    TextBox7.Visible = true;
                }
            }
            else
            {
                Response.Write("No data");
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex);
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("paymentdetails_insert2", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sid", SqlDbType.Int).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@sname", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@scourse", SqlDbType.VarChar).Value = TextBox3.Text;
        cmd.Parameters.AddWithValue("@fullpayorinstall", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("@installment1", SqlDbType.Int).Value = TextBox5.Text;
        cmd.Parameters.AddWithValue("@pstatus", SqlDbType.VarChar).Value = TextBox9.Text;
        cmd.Parameters.AddWithValue("@totalamt", SqlDbType.Int).Value = TextBox8.Text;
        cmd.Parameters.AddWithValue("@doinstallment1", SqlDbType.Int).Value = DateTime.Now.ToString("MM-dd-yyyy");
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from paymentdetails where sid = " + TextBox1.Text + "", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox5.Text = dr["installment1"].ToString();
            TextBox6.Text = dr["installment2"].ToString();
            TextBox7.Text = dr["installment3"].ToString();
            TextBox9.Text = dr["pstatus"].ToString();
            Button3.Visible = true;
            Button1.Visible = false;
            if((TextBox5.Text!="") && (TextBox6.Text== ""))
            {
                Button5.Visible = true;
            }
            else if((TextBox6.Text != "") && (TextBox7.Text == ""))
            {
                Button6.Visible = true;
                Button5.Visible = false;
            }
        }
        else
        {
            Response.Write("No payments recorded");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("paymentdetails_update2", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sid", SqlDbType.Int).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@sname", SqlDbType.VarChar).Value = TextBox2.Text;
        cmd.Parameters.AddWithValue("@scourse", SqlDbType.VarChar).Value = TextBox3.Text;
        cmd.Parameters.AddWithValue("@fullpayorinstall", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.Parameters.AddWithValue("@pstatus", SqlDbType.VarChar).Value = TextBox9.Text;
        cmd.Parameters.AddWithValue("@totalamt", SqlDbType.Int).Value = TextBox8.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        Label11.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        Button6.Visible = false;
        Button5.Visible = false;
    }




    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("install2", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sid", SqlDbType.Int).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@installment2", SqlDbType.Int).Value = TextBox6.Text;
        cmd.Parameters.AddWithValue("@doinstallment2", SqlDbType.Date).Value = DateTime.Now.ToString("MM-dd-yyyy");
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Payment Recorded");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("install3", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sid", SqlDbType.Int).Value = TextBox1.Text;
        cmd.Parameters.AddWithValue("@installment3", SqlDbType.Int).Value = TextBox7.Text;
        cmd.Parameters.AddWithValue("@doinstallment3", SqlDbType.Date).Value = DateTime.Now.ToString("MM-dd-yyyy");
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Payment Recorded");
    }
}