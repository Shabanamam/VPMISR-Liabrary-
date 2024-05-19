<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchbook.aspx.cs" Inherits="searchbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 134px;
        }
        .style9
        {
            width: 305px;
        }
        .style10
        {
            width: 124px;
        }
        .style11
        {
            width: 315px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style7">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Library.accdb" 
    SelectCommand="SELECT * FROM [BookRegister] WHERE ([Subject] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Subject" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
            </td>
            <td class="style11">
                <asp:AccessDataSource ID="AccessDataSource8" runat="server" 
                    DataFile="~/Library.accdb" 
                    SelectCommand="SELECT * FROM [BookRegister] WHERE ([Authors] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="Authors" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
            <td class="style9">
    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
        DataFile="~/Library.accdb" 
    SelectCommand="SELECT * FROM [BookRegister] WHERE ([Subject] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Subject" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
            </td>
            <td class="style10">
    <asp:AccessDataSource ID="AccessDataSource5" runat="server" 
        DataFile="~/Library.accdb" 
    SelectCommand="SELECT * FROM [BookRegister] WHERE ([Subject] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Subject" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
    <asp:TextBox ID="TextBox1" runat="server"  placeholder="..Book Subject Name.."></asp:TextBox>
            </td>
            <td class="style11">
    <asp:TextBox ID="TextBox2" runat="server"  placeholder="..Book Author Name.." 
                    Height="20px"></asp:TextBox>
            </td>
            <td class="style9">
    <asp:TextBox ID="TextBox3" runat="server"  placeholder="..Book Title.."></asp:TextBox>
            </td>
            <td class="style10">
    <asp:TextBox ID="TextBox4" runat="server"  placeholder="..Book Publication Name.." 
                    Width="160px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
    
    <asp:GridView ID="GridView1" runat="server" 
        DataSourceID="AccessDataSource1" Height="387px" 
        Width="687px" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
    ForeColor="Black" GridLines="Vertical" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="BTitle" HeaderText="BTitle" 
                SortExpression="BTitle" />
            <asp:BoundField DataField="Authors" HeaderText="Authors" 
                SortExpression="Authors" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="Language" HeaderText="Language" 
                SortExpression="Language" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="BLocation" HeaderText="BLocation" 
                SortExpression="BLocation" />
            <asp:BoundField DataField="Publishers" HeaderText="Publishers" 
                SortExpression="Publishers" />
            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                SortExpression="Edition" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>



  


</asp:Content>

