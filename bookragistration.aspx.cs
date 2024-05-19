using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class bookragistration : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox21.Text = "";
        TextBox22.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        TextBox26.Text = "";
        TextBox27.Text = "";
        TextBox28.Text = "";
        TextBox29.Text = "";
        TextBox30.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into bookregistration values(@regisno,@acno,@acro,@acdt,@btitle,@author,@sub,@lan,@dep,@loc,@classno,@pub,@year,@pct,@ed,@vo,@pages,@isbn,@status,@btype,@billno,@bdt,@ven,@vct,@bprice,@nco,@dsc,@amt,@don,@bug) ", cn);
            cmd.Parameters.AddWithValue("@regisno", TextBox1.Text);
            cmd.Parameters.AddWithValue("@acno", TextBox2.Text);
            cmd.Parameters.AddWithValue("@acro", TextBox3.Text);
            cmd.Parameters.AddWithValue("@acdt", TextBox4.Text);
            cmd.Parameters.AddWithValue("@btitle", TextBox5.Text);
            cmd.Parameters.AddWithValue("@author", TextBox6.Text);
            cmd.Parameters.AddWithValue("@sub", TextBox7.Text);
            cmd.Parameters.AddWithValue("@lan", TextBox8.Text);
            cmd.Parameters.AddWithValue("@dep", TextBox9.Text);
            cmd.Parameters.AddWithValue("@loc", TextBox10.Text);
            cmd.Parameters.AddWithValue("@classno", TextBox11.Text);
            cmd.Parameters.AddWithValue("@pub", TextBox12.Text);
            cmd.Parameters.AddWithValue("@year", TextBox13.Text);
            cmd.Parameters.AddWithValue("@pct", TextBox14.Text);
            cmd.Parameters.AddWithValue("@ed", TextBox15.Text);
            cmd.Parameters.AddWithValue("@vo", TextBox16.Text);
            cmd.Parameters.AddWithValue("@pages", TextBox17.Text);
            cmd.Parameters.AddWithValue("@isbn", TextBox18.Text);
            cmd.Parameters.AddWithValue("@status", TextBox19.Text);
            cmd.Parameters.AddWithValue("@btype", TextBox20.Text);
            cmd.Parameters.AddWithValue("@billno", TextBox21.Text);
            cmd.Parameters.AddWithValue("@bdt", TextBox22.Text);
            cmd.Parameters.AddWithValue("@ven", TextBox23.Text);
            cmd.Parameters.AddWithValue("@vct", TextBox24.Text);
            cmd.Parameters.AddWithValue("@bprice", TextBox25.Text);
            cmd.Parameters.AddWithValue("@nco", TextBox26.Text);
            cmd.Parameters.AddWithValue("@dsc", TextBox27.Text);
            cmd.Parameters.AddWithValue("@amt", TextBox28.Text);
            cmd.Parameters.AddWithValue("@don", TextBox29.Text);
            cmd.Parameters.AddWithValue("@bug", TextBox30.Text);
            cmd.ExecuteNonQuery();
            Response.Write(@"<script language='javascript'>alert('Record saved successfully.....')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox26.Text = "";
            TextBox27.Text = "";
            TextBox28.Text = "";
            TextBox29.Text = "";
            TextBox30.Text = "";
        }
    }
}