using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Book_Transaction : System.Web.UI.Page
{
    string cs;
    SqlConnection cn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*cs = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("Insert into Book_Transaction(Transaction_Id,Book_Accestion_no,Membership_no,Issue_Date,Return_Date,Fine,Status)values(@ctid,@cbano,@cmno,@cissue,@creturn,@cfine,@cstatus)", cn);
            cmd.Parameters.AddWithValue("@ctid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@cbano", TextBox2.Text);
            cmd.Parameters.AddWithValue("@cmno", TextBox3.Text);
            cmd.Parameters.AddWithValue("@cissue", TextBox4.Text);
            cmd.Parameters.AddWithValue("@creturn", TextBox5.Text);
            cmd.Parameters.AddWithValue("@cfine", TextBox6.Text);
            cmd.Parameters.AddWithValue("@cstatus", TextBox7.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

            cn.Close();


        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tbl_book_transaction where MemberId=" + txtmn.Text + "", cn);
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.Fill(ds, "cst");
        DateTime dt = Convert.ToDateTime(ds.Tables[0].Rows[0][3]);
        DateTime dt1 = Convert.ToDateTime(DateTime.Now.ToShortDateString());
        if ((dt1 - dt).TotalDays >= 14)
        {
            Literal1.Text = "Your fine is Rs 1";
            //insert into tbl_transaction
            //cmd.CommandText = "insert into tbl_Transaction(custid,bookingdate)values(" + txtcustid.Text + ",'" + txtbdate.Text + "')";
            // cmd.Parameters.AddWithValue("@bookingdate", );

            cn.Open();
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
           // lbl_msg.Text = "Booking Successful";
        }
        else
        {
            //lbl_msg.Text = "Your Booking is not successful (21 days are not c) last delivary date is " + ds.Tables[0].Rows[0][3].ToString();
            Literal1.Text = "No fine";
        }
      
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }*/
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
