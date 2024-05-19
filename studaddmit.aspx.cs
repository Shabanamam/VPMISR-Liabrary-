using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class studaddmit : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void studsubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into stud_info values(@ryear,@rcls,@grno,@fullnm,@doa,@dob,@pob,@cast,@category,@partnm,@partadd,@laclg,@lcls,@mstatus,@tcrecive,@tcissue,@gender,@adharno,@mobno,@email,@bgrup,@ypass,@eper,@ecls,@rno) ", cn);
            cmd.Parameters.AddWithValue("@ryear", txtry.Text);
            cmd.Parameters.AddWithValue("@rcls", txtrc.Text);
            cmd.Parameters.AddWithValue("@grno", txtgrno.Text);
            cmd.Parameters.AddWithValue("@fullnm", txtfnm.Text);
            cmd.Parameters.AddWithValue("@doa", txtdtad.Text);
            cmd.Parameters.AddWithValue("@dob", txtdtad.Text);
            cmd.Parameters.AddWithValue("@pob ", txtdtbirth.Text);
            cmd.Parameters.AddWithValue("@cast", txtpbirth.Text);
            cmd.Parameters.AddWithValue("@category", txtcast.Text);
            cmd.Parameters.AddWithValue("@partnm", txtcat.Text);
            cmd.Parameters.AddWithValue("@partadd", txtparentnm.Text);
            cmd.Parameters.AddWithValue("@laclg", txtpadd.Text);
            cmd.Parameters.AddWithValue("@lcls", txtlcog.Text);
            cmd.Parameters.AddWithValue("@mstatus", txtlc.Text);
            cmd.Parameters.AddWithValue("@tcrecive", txtms.Text);
            cmd.Parameters.AddWithValue("@tcissue", txttcr.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@adharno", adharno.Text);
            cmd.Parameters.AddWithValue("@mobno", mobno.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@bgrup", bgr.Text);
            cmd.Parameters.AddWithValue("@ypass", ypass.Text);
            cmd.Parameters.AddWithValue("@eper", eper.Text);
            cmd.Parameters.AddWithValue("@ecls", ecls.Text);
            cmd.Parameters.AddWithValue("@rno", rno.Text);

            cmd.ExecuteNonQuery();
            Response.Write(@"<script language='javascript'>alert('Record saved successfully.....')</script>");
            txtry.Text = "";
            txtrc.Text="";
            txtgrno.Text="";
            txtfnm.Text="";
            txtdtad.Text="";
            txtdtad.Text="";
            txtdtbirth.Text="";
            txtpbirth.Text="";
           txtcast.Text="";
            txtcat.Text="";
            txtparentnm.Text="";
            txtpadd.Text="";
            txtlcog.Text="";
            txtlc.Text="";
            txtms.Text="";
            txttcr.Text="";
           
            adharno.Text="";
            mobno.Text="";
            email.Text="";
            bgr.Text="";
            ypass.Text="";
            eper.Text="";
            ecls.Text="";
            rno.Text="";

        }
    }
        }
    