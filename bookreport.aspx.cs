using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class bookreport : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {

        cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ReportViewer rpt = ReportViewer1;
        DataTable dt = new DataTable();
        SqlConnection cn = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand("select * from bookregistration where Subject=@bnm", cn);

        cmd.Parameters.AddWithValue("@bnm", DropDownList1.SelectedItem.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
        rpt.Reset();
        ReportDataSource rds = new ReportDataSource("DataSet_BookReg", dt);

        rpt.LocalReport.DataSources.Add(rds);
        rpt.LocalReport.ReportPath = "Report3.rdlc";
        ReportParameter[] rptparam = new ReportParameter[] { new ReportParameter("bnm", DropDownList1.SelectedItem.Text) };
        rpt.LocalReport.SetParameters(rptparam);

        rpt.LocalReport.Refresh();

    }
}