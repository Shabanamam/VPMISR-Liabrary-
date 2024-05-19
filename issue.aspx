<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="issue.aspx.cs" Inherits="issue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
        }
        .style9
        {
            width: 39px;
        }
        .style10
        {
            width: 222px;
        }
    .style11
    {
        width: 39px;
        height: 99px;
    }
    .style13
    {
        width: 222px;
        height: 99px;
    }
        .style14
        {
            width: 203px;
        }
        .style15
        {
            width: 223px;
        }
        .style16
        {
            width: 223px;
            height: 99px;
        }
        .style17
        {
            width: 248px;
        }
        .style18
        {
            width: 248px;
            height: 99px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-repeat: no-repeat; background-attachment: fixed; background-position: right bottom; background-image: url('bookreturn.jpg');">
    <table class="style1">
        <tr>
            <td class="style2" colspan="5">
<div style="width: 100%; height: 48px; background-color: #CCCCCC;"><center><asp:Label ID="Label1" runat="server" 
                    style="font-size: x-large; text-align: center" 
        Text="Issue book"></asp:Label></center></div>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Book
                Accessetion No</td>
            <td class="style10">
                <asp:TextBox ID="txtacno" runat="server" Height="31px" Width="216px"></asp:TextBox>
                <br />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    Text="Book Details" />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Book Name</td>
            <td class="style14">
                <asp:TextBox ID="booknm" runat="server" Height="31px" Width="216px" 
                    Enabled="False"></asp:TextBox>
            </td>
            
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Book Author</td>
            <td class="style14">
                <asp:TextBox ID="authorn" runat="server" Height="31px" Width="216px" 
                    Enabled="False"></asp:TextBox>
            </td>
            
            
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Subject</td>
            <td class="style10">
                <asp:TextBox ID="sub" runat="server" Height="31px" Width="216px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Borrow No</td>
            <td class="style14">
                <asp:TextBox ID="txtborrowno" runat="server" Height="33px" Width="219px"></asp:TextBox>
                <br />
            </td>
            
            <td rowspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style14">
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                    Text="Student details" />
            </td>
            
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Student name</td>
            <td class="style14">
                <asp:TextBox ID="txtsnm" runat="server" Height="31px" Width="210px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Class</td>
            <td class="style10">
                <asp:TextBox ID="txtclass" runat="server" Height="33px" Width="219px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Roll no</td>
            <td class="style10">
                <asp:TextBox ID="txtrollno" runat="server" Height="33px" Width="219px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style18">
                Issued Date</td>
            <td class="style13">
                <asp:TextBox ID="txtissuedt" runat="server" Height="32px" Width="170px" 
                   ></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Height="32px" onclick="Button2_Click" 
                    Text="***" Width="43px" />
                &nbsp;<br />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="161px" 
                    onselectionchanged="Calendar1_SelectionChanged1">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                Return Date</td>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="209px" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Con %>" 
                    SelectCommand="SELECT * FROM [Issue]"></asp:SqlDataSource>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Issue book" Width="101px" 
                    onclick="Button1_Click" BackColor="#666666" Font-Size="Large" ForeColor="White" Height="33px" 
                    />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

