using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    string cs,fp;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cs = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            string str = Convert.ToString(DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString()) + ".jpg";
            FileUpload1.SaveAs(Server.MapPath(str));
            SqlCommand cmd = new SqlCommand("Insert into memberregistration values(@cnm,@cadd,@cdob,@cmno,@cemail,@cmtype,@cdep,@cdatereg,@cphoto)", cn);
           
            cmd.Parameters.AddWithValue("@cnm",TextBox2.Text);
            cmd.Parameters.AddWithValue("@cadd", TextBox3.Text);
            cmd.Parameters.AddWithValue("@cdob", TextBox4.Text);
           
            cmd.Parameters.AddWithValue("@cmno", TextBox6.Text);
            cmd.Parameters.AddWithValue("@cemail",TextBox7.Text);
            cmd.Parameters.AddWithValue("@cmtype",RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@cdep", TextBox8.Text);
            cmd.Parameters.AddWithValue("@cdatereg", TextBox9.Text);
            cmd.Parameters.AddWithValue("@cphoto",str);
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Write(@"<script language='javascript'>alert('Record is saved..')</script>");
            
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
         
            TextBox6.Text = "";
            TextBox7.Text = "";
            RadioButtonList1.SelectedValue = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            
        }
        
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
