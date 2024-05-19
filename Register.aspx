<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        width: 200px;
            font-size: larger;
        }
    .style3
    {
        width: 212px;
    }
        .style4
        {
            width: 244px;
        }
        .style5
        {
            width: 279px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image: url('jion.jpg'); background-position: right center; background-repeat: no-repeat;">
    <table class="style1">
        <tr>
            <td colspan="4">
                <div style="background-color: #CCCCCC">
                    <center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="&nbsp;&nbsp;&nbsp; Registration"></asp:Label>
                        <br />
                        <br />
                    </center>
                </div>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
               
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Name</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="175px" 
                    ontextchanged="TextBox2_TextChanged" ViewStateMode="Enabled"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Address</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Date of Birth</td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Mobile No.</td>
            <td class="style5">
                <asp:TextBox ID="TextBox6" runat="server" Height="29px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Email Id</td>
            <td class="style5">
                <asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Membership Type</td>
            <td class="style5">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="428px" Height="32px">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Teaching Staff member</asp:ListItem>
                    <asp:ListItem>Non-Teaching staff</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Deposit</td>
            <td class="style5">
                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Date Of Registration</td>
            <td class="style5">
                <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="175px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                Photo</td>
            <td class="style5">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="226px" 
                    ViewStateMode="Disabled" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                    Width="93px" />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>