<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookragistration.aspx.cs" Inherits="bookragistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 66px;
        }
        .style6
        {
            width: 143px;
        }
        .style15
        {
            width: 65px;
        }
        .style16
        {
            width: 64px;
        }
        .style19
        {
            height: 40px;
            width: 89px;
        }
        .style20
        {
            width: 89px;
        }
        .style21
        {
            height: 40px;
            width: 25px;
        }
        .style25
        {
            width: 25px;
        }
        .style26
        {
            height: 40px;
        }
        .style27
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            text-align: justify;
        }
        .style31
        {
            width: 179px;
            height: 40px;
        }
        .style32
        {
            width: 179px;
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            text-align: justify;
        }
        .style34
        {
            width: 197px;
        }
        .style35
        {
            width: 118px;
        }
        .style37
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            text-align: justify;
            width: 47px;
        }
        .style38
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            text-align: justify;
            width: 43px;
        }
        .style39
        {
            width: 127px;
        }
        .style40
        {
            color: #9933FF;
            font-size: xx-large;
        }
        .style42
        {
            font-size: xx-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image: url('addbo.jpg'); background-repeat: no-repeat; background-position: right 500%">
    <table class="style1" style="width: 101%">
        <tr>
            <td colspan="7"><div style="width: 90%; background-color: #999999;">
                <span class="style40">&nbsp;B</span><span class="style42">ook </span>
                <span class="style40">R</span><span class="style42">egistration</span><br />
                <br /></div>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                   <div style="width: 315px; height: 54px; background-color: #CCCCCC;">
                       <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="X-Large" 
                           ForeColor="Black" Text="Book details"></asp:Label>
                </div>
            </td>
            <td class="style19" colspan="2">
                   <div style="width: 341px; height: 54px; background-color: #CCCCCC;">
                       <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Size="X-Large" 
                           ForeColor="Black" Text="Publication details"></asp:Label>
                </div>
            </td>
            <td class="style26" colspan="2">
                   <div style="width: 297px; height: 54px; background-color: #CCCCCC;">
                       <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="X-Large" 
                           ForeColor="Black" Text="Bill details"></asp:Label>
                   </div>
                </td>
            <td class="style31">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style35">
                <asp:Label ID="Label2" runat="server" Text="RegNo"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px" Height="34px"></asp:TextBox>
            </td>
            <td class="style39">
                <asp:Label ID="Label12" runat="server" Text="ClassificationNo"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox11" runat="server" Width="220px" Height="32px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label22" runat="server" Text="BillNO" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox21" runat="server" Width="217px" Height="34px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label3" runat="server" Text="AccNo"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px" Height="31px"></asp:TextBox>
            </td>
            <td class="style39">
                <br />
                <asp:Label ID="Label13" runat="server" Text="Publishers"></asp:Label>
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox12" runat="server" Width="220px" Height="32px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label23" runat="server" Text="BillDate" 
                    style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox22" runat="server" Width="220px" Height="41px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
           
            <td class="style25">
                <asp:Label ID="Label4" runat="server" Text="AccessionRNo"></asp:Label>
            </td>
           
            <td class="style34">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px" Height="29px"></asp:TextBox>
            </td>
            <td class="style39">
                <br />
                <asp:Label ID="Label14" runat="server" Text="Year"></asp:Label>
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox13" runat="server" Width="220px" Height="30px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label24" runat="server" Text="Vendor" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox23" runat="server" Width="220px" Height="39px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label5" runat="server" Text="AccessionDate"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox4" runat="server" Width="220px" Height="30px"></asp:TextBox>
            </td>
            <td class="style39">
                <asp:Label ID="Label15" runat="server" Text="Pcity"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox14" runat="server" Width="220px" Height="34px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label25" runat="server" Text="Vcity" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox24" runat="server" Width="220px" Height="36px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label6" runat="server" Text="BTitle"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox5" runat="server" Width="220px" Height="33px" 
                    style="margin-left: 0"></asp:TextBox>
            </td>
            <td class="style39">
                <asp:Label ID="Label16" runat="server" Text="Edition"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox15" runat="server" Width="220px" Height="40px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label26" runat="server" Text="BPrice" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox25" runat="server" Width="220px" Height="40px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label7" runat="server" Text="Author"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px" Height="29px"></asp:TextBox>
            </td>
            <td class="style39">
                <br />
                <asp:Label ID="Label17" runat="server" Text="Volm"></asp:Label>
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox16" runat="server" Width="214px" Height="32px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label27" runat="server" Text="NCopies" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox26" runat="server" Width="220px" Height="35px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label8" runat="server" Text="Subject"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox7" runat="server" Width="220px" Height="31px"></asp:TextBox>
            </td>
            <td class="style39">
                <br />
                <asp:Label ID="Label18" runat="server" Text="Pages"></asp:Label>
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox17" runat="server" Width="220px" Height="40px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label28" runat="server" Text="Dsc" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox27" runat="server" Width="220px" Height="28px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label9" runat="server" Text="Language"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox8" runat="server" Width="220px" Height="37px"></asp:TextBox>
            </td>
            <td class="style39">
                <br />
                <asp:Label ID="Label19" runat="server" Text="ISBN"></asp:Label>
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox18" runat="server" Width="220px" Height="39px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label29" runat="server" Text="TAmount" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox28" runat="server" Width="220px" Height="36px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label10" runat="server" Text="Department"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox9" runat="server" Width="220px" Height="32px"></asp:TextBox>
            </td>
            <td class="style39">
                <br />
                <asp:Label ID="Label20" runat="server" Text="Status"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox19" runat="server" Width="220px" Height="31px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label30" runat="server" Text="ISDonated" 
                    style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox29" runat="server" Width="220px" Height="34px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25">
                <asp:Label ID="Label11" runat="server" Text="BLocation"></asp:Label>
            </td>
            
            <td class="style34">
                <asp:TextBox ID="TextBox10" runat="server" Width="220px" Height="33px"></asp:TextBox>
            </td>
            <td class="style39">
                <asp:Label ID="Label21" runat="server" Text="BType"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox20" runat="server" Width="220px" Height="37px"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:Label ID="Label31" runat="server" Text="HBudget" style="font-size: medium"></asp:Label>
            </td>
            <td class="style38">
                <asp:TextBox ID="TextBox30" runat="server" Width="220px" Height="38px"></asp:TextBox>
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="style25" colspan="2">
                &nbsp;</td>
            <td class="style39">
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Reset data" Width="81px" />
            </td>
            <td class="style20">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit data" 
                    onclick="Button1_Click" Width="77px" />
            </td>
            <td class="style27" colspan="2">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        
            
            </table>
    </div>
    <div></div>
</asp:Content>

