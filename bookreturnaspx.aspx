<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookreturnaspx.aspx.cs" Inherits="bookreturnaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 24px;
        }
        .style6
        {
            width: 123px;
        }
        .style7
        {
            width: 74px;
        }
        .style8
        {
            width: 145px;
        }
        .style9
        {
            font-family: "Times New Roman", Times, serif;
            text-align: justify;
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image: url('bookreturn.jpg'); background-repeat: no-repeat; background-position: right bottom">
  <div style="background-color: #C0C0C0"> 
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" BackColor="Silver" Font-Bold="True" 
            Font-Italic="True" Font-Size="XX-Large" ForeColor="White" 
            Text="Return book" style="text-align: center"></asp:Label>
    </div>
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="accno" runat="server" Text="borrow card no"></asp:Label>
                </td><br>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBoxaccno" runat="server" Height="37px" Width="210px" 
                        ></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="accno0" runat="server" Text="Book Accession  no"></asp:Label>
                </td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="txtbacno" runat="server" Height="37px" Width="210px" 
                        ></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="returndt0" runat="server" Text="Issue date"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="Textssudt" runat="server" Height="38px" Width="186px" 
                        Enabled="False"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="**" onclick="Button1_Click" 
                        Height="35px" Width="28px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <br />
                    <asp:Label ID="returndt" runat="server" Text="Return date"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="Textreturndt" runat="server" Height="38px" Width="186px" 
                        Enabled="False"></asp:TextBox>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6" rowspan="3">
                    &nbsp;</td>
                <td class="style7" rowspan="3">
                    &nbsp;</td>
                <td class="style8" rowspan="3">
                    <asp:Label ID="fine" runat="server" Text="Fine"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="Textfine" runat="server" Height="40px" Width="183px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Fine cal" />
                </td>
                <td rowspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    <asp:Button ID="Button3" runat="server" Height="37px" onclick="Button3_Click" 
                        Text="student details" Width="187px" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    Full name</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="fullnm" runat="server" Enabled="False" Height="35px" 
                        Width="195px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="fine0" runat="server" Text="Class"></asp:Label>
                </td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="txtcls" runat="server" Height="40px" Width="183px" 
                        Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    <asp:Button ID="submitreturn" runat="server" Height="42px" Text="Submit" 
                        Width="165px" onclick="submitreturn_Click" />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </div>
</asp:Content>

