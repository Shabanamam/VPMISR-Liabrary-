<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studaddmit.aspx.cs" Inherits="studaddmit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 270px;
            margin-left: 120px;
        }
        .style5
        {
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-color: #999999; width: 968px; margin-left: 12px;">
        <center style="height: 60px; width: 963px;">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
        style="text-align: center" Text="Student addmission form"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    </center>
    </div>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Ryear"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtry" runat="server" BackColor="Silver" Font-Size="Large" 
                    ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="RClass"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtrc" runat="server" BackColor="#CCCCCC" Font-Size="Large" 
                    ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="GRNO"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtgrno" runat="server" BackColor="#CCCCCC" 
                    Font-Size="Large" ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Fullname"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtfnm" runat="server" BackColor="#CCCCCC" Font-Size="Large" 
                    ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Font-Size="Large" 
                    Text="Date of admission"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtdtad" runat="server" BackColor="#CCCCCC" 
                    Font-Size="Large" ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Date of birth"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtdtbirth" runat="server" BackColor="#CCCCCC" 
                    Font-Size="Large" ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="Palce of birth"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtpbirth" runat="server" BackColor="#CCCCCC" 
                    Font-Size="Large" ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="Cast"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtcast" runat="server" BackColor="#CCCCCC" 
                    Font-Size="Large" ForeColor="White" Height="32px" Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Category"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtcat" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="ParentName"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtparentnm" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="ParentAddress"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtpadd" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label13" runat="server" Font-Size="Large" 
                    Text="LastAttendet College"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtlcog" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="LClass"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtlc" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label15" runat="server" Font-Size="Large" Text="MStatus"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtms" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="TCReceived"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txttcr" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label17" runat="server" Font-Size="Large" Text="TCIssued"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="tcissue" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Gender"></asp:Label>
            </td>
            <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCCC" 
                    Height="43px" Width="201px">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="AdharNO"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="adharno" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White" 
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label20" runat="server" Font-Size="Large" Text="MobileNO"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="mobno" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Email"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="email" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label22" runat="server" Font-Size="Large" Text="BGroup"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="bgr" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="YPass"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="ypass" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="EPer"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="eper" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label25" runat="server" Font-Size="Large" Text="ECls"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="ecls" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label26" runat="server" Font-Size="Large" Text="RNO"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="rno" runat="server" BackColor="#CCCCCC" Height="32px"  Font-Size="Large" 
                    ForeColor="White"
                    Width="219px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="studsubmit" runat="server" Height="38px" Text="Submit" 
                    Width="121px" onclick="studsubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

