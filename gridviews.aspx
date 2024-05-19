<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gridviews.aspx.cs" Inherits="gridviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
        DataSourceID="AccessDataSource1" Height="322px" 
        Width="1783px" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
    ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="RegisterNo" HeaderText="RegisterNo" 
                SortExpression="RegisterNo" />
            <asp:BoundField DataField="AccessionNO" HeaderText="AccessionNO" 
                SortExpression="AccessionNO" />
            <asp:BoundField DataField="AccessionRNo" HeaderText="AccessionRNo" 
                SortExpression="AccessionRNo" />
            <asp:BoundField DataField="AccessionDate" HeaderText="AccessionDate" 
                SortExpression="AccessionDate" />
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
            <asp:BoundField DataField="ClassificationNo" HeaderText="ClassificationNo" 
                SortExpression="ClassificationNo" />
            <asp:BoundField DataField="Publishers" HeaderText="Publishers" 
                SortExpression="Publishers" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Pcity" HeaderText="Pcity" SortExpression="Pcity" />
            <asp:BoundField DataField="Edition" HeaderText="Edition" 
                SortExpression="Edition" />
            <asp:BoundField DataField="Volm" HeaderText="Volm" SortExpression="Volm" />
            <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="BType" HeaderText="BType" SortExpression="BType" />
            <asp:BoundField DataField="BillNo" HeaderText="BillNo" 
                SortExpression="BillNo" />
            <asp:BoundField DataField="BillDate" HeaderText="BillDate" 
                SortExpression="BillDate" />
            <asp:BoundField DataField="Vendor" HeaderText="Vendor" 
                SortExpression="Vendor" />
            <asp:BoundField DataField="Vcity" HeaderText="Vcity" SortExpression="Vcity" />
            <asp:BoundField DataField="Bprice" HeaderText="Bprice" 
                SortExpression="Bprice" />
            <asp:BoundField DataField="NCopies" HeaderText="NCopies" 
                SortExpression="NCopies" />
            <asp:BoundField DataField="Dsc" HeaderText="Dsc" SortExpression="Dsc" />
            <asp:BoundField DataField="TAmount" HeaderText="TAmount" 
                SortExpression="TAmount" />
            <asp:CheckBoxField DataField="ISDonated" HeaderText="ISDonated" 
                SortExpression="ISDonated" />
            <asp:BoundField DataField="HBudget" HeaderText="HBudget" 
                SortExpression="HBudget" />
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Library.accdb" 
    SelectCommand="SELECT * FROM [BookRegister] WHERE ([Subject] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Subject" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="bookdata" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Con %>" 
        SelectCommand="SELECT * FROM [bookregistration]"></asp:SqlDataSource>
    <br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/Library.accdb" SelectCommand="SELECT * FROM [Studinfo]">
    </asp:AccessDataSource>
    <br />
</asp:Content>

