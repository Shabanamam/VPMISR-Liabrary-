<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookreport.aspx.cs" Inherits="bookreport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <div>
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
           DataSourceID="SqlDataSource1" DataTextField="Subject" DataValueField="Subject" 
           onselectedindexchanged="DropDownList1_SelectedIndexChanged">
       </asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:Con %>" 
           SelectCommand="SELECT * FROM [bookregistration]"></asp:SqlDataSource>
       <br />
       <br />
       <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
           Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
           WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="98%">
           <LocalReport ReportPath="Report2.rdlc">
               <DataSources>
                   <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
               </DataSources>
           </LocalReport>
       </rsweb:ReportViewer>
       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
           SelectMethod="GetData" 
           TypeName="DataSet2TableAdapters.bookregistrationTableAdapter">
       </asp:ObjectDataSource>
    </div>
</asp:Content>

