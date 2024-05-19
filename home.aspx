<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        font-family: "Times New Roman", Times, serif;
        font-size: x-large;
        text-align: justify;
    }
    .style5
    {
        text-align: justify;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <div style="height: 200px; width: 100%;">
        <asp:Image ID="Image1" runat="server" Height="230px" 
            ImageUrl="~/mages/banner.png" Width="100%" />
    </div>
    <div id="Div1" 
        
        
    style="padding: 10px 30px 10px 30px; width: 95%; height: 215px; float: left" 
    class="style5">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style4">&nbsp;A library is a collection of sources of information and similar resources, made 
        accessible to a defined community for reference or borrowing.It provides 
        physical or digital access to material, and may be a physical building or room, 
        or a virtual space, or both.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A library&#39;s collection can include books, 
        periodicals, newspapers, manuscripts, films, maps, prints, documents, microform, 
        CDs, cassettes, videotapes, DVDs, Blu-ray Discs, e-books, audiobooks, databases, 
        and other formats</span></div>
        </center>
        </asp:Content>

