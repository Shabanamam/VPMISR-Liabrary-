using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class issue : System.Web.UI.Page
{
    static int rdt;
    DateTime td;
    string cs;



    protected void Page_Load(object sender, EventArgs e)
    {
        cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        PlaceHolder1.Controls.Add(Calendar1);
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        txtissuedt.Text = Calendar1.SelectedDate.ToString("d");

        Calendar1.Visible = false;
    }




    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        txtissuedt.Text = Calendar1.SelectedDate.ToShortDateString();
        td = Calendar1.SelectedDate.AddDays(7);
        TextBox1.Text = td.ToShortDateString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cnn = new SqlConnection(cs))
        {

            cnn.Open();
            SqlCommand cmd = new SqlCommand("insert into Issue values (@acno,@brow,@snm,@cls,@rollno,@issdt,@rdt)", cnn);
            cmd.Parameters.AddWithValue("@acno", txtacno.Text);
            cmd.Parameters.AddWithValue("@brow", txtborrowno.Text);
                cmd.Parameters.AddWithValue("@snm",txtsnm .Text);
                cmd.Parameters.AddWithValue("@cls",  txtclass.Text);
                cmd.Parameters.AddWithValue("@rollno",txtrollno .Text);
            cmd.Parameters.AddWithValue("@issdt", txtissuedt.Text);
            cmd.Parameters.AddWithValue("@rdt", TextBox1.Text);
        
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand(" UPDATE bookregistration  SET Status = 'Issued' Where AccessionNo ='" + txtacno.Text + "'", cnn);
            cmd1.ExecuteNonQuery();
            Response.Write(@"<script language='javascript'>alert('Book issued...')</script>");
            txtacno.Text = "";
            txtborrowno.Text = "";
            txtissuedt.Text = "";
            TextBox1.Text = "";

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        DateTime add_days = Convert.ToDateTime(txtissuedt.Text).AddDays(7);
        //Textbox1.Text = add_days.ToString();
        TextBox1.Text = add_days.ToString();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from bookregistration where AccessionNO=" + txtacno.Text + "", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                booknm.Text = dr["BTitle"].ToString();
                authorn.Text = dr["Authors"].ToString();
                sub.Text = dr["Subject"].ToString();

            }
           // booknm.Text = "";
           // authorn.Text = "";
           // sub.Text = "";


        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from stud_info where GRNO=" + txtborrowno.Text + "", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtsnm.Text = dr["Fullname"].ToString();
                txtclass.Text = dr["RClass"].ToString();
                txtrollno.Text = dr["RNO"].ToString();
           }

            //txtsnm.Text = "";
            //txtclass.Text = "";
            //txtrollno.Text = "";


        }
    }
}