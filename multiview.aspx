<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="multiview.aspx.cs" Inherits="multiview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div>
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
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
        <tr>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Go" />
            </td>
            <td class="style11">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Go" />
            </td>
            <td class="style9">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Go" />
            </td>
            <td class="style10">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Go" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
    
</div>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" 
       >

 

        <asp:View ID="View1" runat="server">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="Vertical" DataKeyNames="AccessionNO" Height="359px" 
                    Width="587px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="BTitle" HeaderText="BTitle" 
                            SortExpression="BTitle" />
                        <asp:BoundField DataField="Authors" HeaderText="Authors" 
                            SortExpression="Authors" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" 
                            SortExpression="Subject" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Con %>" 
                    SelectCommand="SELECT * FROM [bookregistration] WHERE ([Subject] = @Subject)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Subject" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
        </asp:View>
         <asp:View ID="View2" runat="server">
         <asp:Panel ID="Panel2" runat="server">
             <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                 BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                 ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
                 DataKeyNames="AccessionNO" DataSourceID="SqlDataSource2" Height="187px" 
                 Width="785px">
                 <AlternatingRowStyle BackColor="#CCCCCC" />
                 <Columns>
                     <asp:BoundField DataField="BTitle" HeaderText="BTitle" 
                         SortExpression="BTitle" />
                     <asp:BoundField DataField="Authors" HeaderText="Authors" 
                         SortExpression="Authors" />
                     <asp:BoundField DataField="Subject" HeaderText="Subject" 
                         SortExpression="Subject" />
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
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:Con %>" 
                 SelectCommand="SELECT * FROM [bookregistration] WHERE ([Authors] = @Authors)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox2" Name="Authors" PropertyName="Text" 
                         Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            </asp:Panel>
         </asp:View>
         <asp:View ID="View3" runat="server">
         <asp:Panel ID="Panel3" runat="server">
             <asp:GridView ID="GridView3" runat="server" BackColor="White" 
                 BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                 ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
                 DataKeyNames="AccessionNO" DataSourceID="SqlDataSource3" Height="338px" 
                 Width="579px">
                 <AlternatingRowStyle BackColor="#CCCCCC" />
                 <Columns>
                     <asp:BoundField DataField="BTitle" HeaderText="BTitle" 
                         SortExpression="BTitle" />
                     <asp:BoundField DataField="Authors" HeaderText="Authors" 
                         SortExpression="Authors" />
                     <asp:BoundField DataField="Subject" HeaderText="Subject" 
                         SortExpression="Subject" />
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
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:Con %>" 
                 SelectCommand="SELECT * FROM [bookregistration] WHERE ([BTitle] = @BTitle)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox3" Name="BTitle" PropertyName="Text" 
                         Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            </asp:Panel>
         </asp:View>
         <asp:View ID="View4" runat="server">
         <asp:Panel ID="Panel4" runat="server">
             <asp:GridView ID="GridView4" runat="server" BackColor="White" 
                 BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                 ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
                 DataKeyNames="AccessionNO" DataSourceID="SqlDataSource4" Height="348px" 
                 Width="571px">
                 <AlternatingRowStyle BackColor="#CCCCCC" />
                 <Columns>
                     <asp:BoundField DataField="BTitle" HeaderText="BTitle" 
                         SortExpression="BTitle" />
                     <asp:BoundField DataField="Authors" HeaderText="Authors" 
                         SortExpression="Authors" />
                     <asp:BoundField DataField="Subject" HeaderText="Subject" 
                         SortExpression="Subject" />
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
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:Con %>" 
                 SelectCommand="SELECT * FROM [bookregistration] WHERE ([Publishers] = @Publishers)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox4" Name="Publishers" 
                         PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            </asp:Panel>
         </asp:View>
    </asp:MultiView>
</asp:Content>

