using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class gridviews : System.Web.UI.Page
{
    string cs;
 
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        foreach (GridViewRow r in GridView1.Rows)
        {
            SqlCommand cmd = new SqlCommand("insert into bookregistration values(@regisno,@acno,@acro,@acdt,@btitle,@author,@sub,@lan,@dep,@loc,@classno,@pub,@year,@pct,@ed,@vo,@pages,@isbn,@status,@btype,@billno,@bdt,@ven,@vct,@bprice,@nco,@dsc,@amt,@don,@bug) ", cn);
            cmd.Parameters.AddWithValue("@regisno", r.Cells[0].Text);
            cmd.Parameters.AddWithValue("@acno", r.Cells[1].Text);
            cmd.Parameters.AddWithValue("@acro", r.Cells[2].Text);
            cmd.Parameters.AddWithValue("@acdt", r.Cells[3].Text);
            cmd.Parameters.AddWithValue("@btitle", r.Cells[4].Text);
            cmd.Parameters.AddWithValue("@author", r.Cells[5].Text);
            cmd.Parameters.AddWithValue("@sub", r.Cells[6].Text);
            cmd.Parameters.AddWithValue("@lan", r.Cells[7].Text);
            cmd.Parameters.AddWithValue("@dep", r.Cells[8].Text);
            cmd.Parameters.AddWithValue("@loc", r.Cells[9].Text);
            cmd.Parameters.AddWithValue("@classno", r.Cells[10].Text);
            cmd.Parameters.AddWithValue("@pub", r.Cells[11].Text);
            cmd.Parameters.AddWithValue("@year", r.Cells[12].Text);
            cmd.Parameters.AddWithValue("@pct", r.Cells[13].Text);
            cmd.Parameters.AddWithValue("@ed", r.Cells[14].Text);
            cmd.Parameters.AddWithValue("@vo", r.Cells[15].Text);
            cmd.Parameters.AddWithValue("@pages", r.Cells[16].Text);
            cmd.Parameters.AddWithValue("@isbn", r.Cells[17].Text);
            cmd.Parameters.AddWithValue("@status", r.Cells[18].Text);
            cmd.Parameters.AddWithValue("@btype", r.Cells[19].Text);
            cmd.Parameters.AddWithValue("@billno", r.Cells[20].Text);
            cmd.Parameters.AddWithValue("@bdt", r.Cells[21].Text);
            cmd.Parameters.AddWithValue("@ven", r.Cells[22].Text);
            cmd.Parameters.AddWithValue("@vct", r.Cells[23].Text);
            cmd.Parameters.AddWithValue("@bprice", r.Cells[24].Text);
            cmd.Parameters.AddWithValue("@nco", r.Cells[25].Text);

            cmd.Parameters.AddWithValue("@dsc", r.Cells[26].Text);
            cmd.Parameters.AddWithValue("@amt", r.Cells[27].Text);
            cmd.Parameters.AddWithValue("@don", r.Cells[28].Text);
            cmd.Parameters.AddWithValue("@bug", r.Cells[29].Text);
            cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
        }


    }
}}