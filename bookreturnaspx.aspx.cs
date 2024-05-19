using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class bookreturnaspx : System.Web.UI.Page
{
    string cs;
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from Issue where baccessno=" + TextBoxaccno.Text + "", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                //txtcls.Text = dr["class"].ToString();
                fullnm.Text = dr["snm"].ToString();
                txtcls.Text = dr["class"].ToString();
                Textreturndt.Text = dr["Return_Date"].ToString();
                Textssudt.Text = dr["Issued_Date"].ToString();




            }
            cn.Close();
            cn.Open();
            SqlCommand cmd1 = new SqlCommand(" UPDATE bookregistration  SET Status = 'Available' Where AccessionNo ='" + txtbacno.Text + "'", cn);
            cmd1.ExecuteNonQuery();
        }

    }
    protected void submitreturn_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("insert into Return values(@borrowno,@bookno,@isuuedt,@returndt,@fine,@fnm,@class)", cn);
            cmd1.Parameters.AddWithValue("@borrowno", TextBoxaccno.Text);
            cmd1.Parameters.AddWithValue("@bookno", txtbacno.Text);
            cmd1.Parameters.AddWithValue("@isuuedt", Textssudt.Text);
            cmd1.Parameters.AddWithValue("@returndt", Textreturndt.Text);
            cmd1.Parameters.AddWithValue("@fine", Textfine.Text);
            cmd1.Parameters.AddWithValue("@", fullnm.Text);
            cmd1.Parameters.AddWithValue("@class", txtcls.Text);
            cmd1.ExecuteNonQuery();


            TextBoxaccno.Text = "";
            Textreturndt.Text = "";
            txtbacno.Text = "";
            Textfine.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime t1 = Convert.ToDateTime(Textssudt.Text).Date;
        DateTime t2 = Convert.ToDateTime(Textreturndt.Text).Date;
        DateTime dt1 = Convert.ToDateTime(DateTime.Now.ToShortDateString());

        TimeSpan ts = (dt1 - t1);
        double no = ts.TotalDays;
        if (no > 7)
        {
            double finedays = Convert.ToDouble(no - 7);
            Textfine.Text = (finedays * 1).ToString();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //using (SqlConnection cn = new SqlConnection(cs))
        //{
        //    cn.Open();
        //    SqlCommand cmd = new SqlCommand("select * from Issue where baccessno=" + TextBoxaccno.Text + "", cn);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        fullnm.Text = dr["snm"].ToString();
        //        txtcls.Text = dr["class"].ToString();




        //    }
        //    cn.Close();
        //}
    }
}