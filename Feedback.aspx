<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            width: 253px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 394px;
        }
        .style6
        {
            width: 434px;
        }
        #divf
        {
            height: 350px;
            width: 350px;
            text-align: center;
        }
        .style7
        {
            width: 293px;
            height: 61px;
            text-align: center;
        }
        .style8
        {
            width: 434px;
            height: 61px;
        }
        .style9
        {
            height: 61px;
        }
        #divm
        {
            height: 350px;
            width: 350px;
            text-align: center;
        }
        #divc
        {
            height: 350px;
            width: 247px;
            font-size: large;
            text-align: center;
        }
        .style10
        {
            font-size: large;
        }
        .style11
        {
            width: 293px;
            font-family: "Times New Roman", Times, serif;
            text-align: justify;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-color: #C0C0C0; height: 474px; width: 100%;">

        <table class="style4">
            <tr>
                <td class="style7">
                    <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" ForeColor="#3366FF" 
                        Text="Feedback"></asp:Label>
                    </td>
                <td class="style8"><center>
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Get in touch" 
                            ForeColor="#3366FF"></asp:Label></center>
                    </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    <div id="divf">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="250px" 
                            placeholder="..Name.."></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Plz enetr name" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="250px" 
                            placeholder="..Email-ID.."></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="plz enter correct email" 
                            ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server" Height="54px" Width="250px" 
                            TextMode="MultiLine" placeholder="..Comment.."></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Size="Large" 
                            ForeColor="Black" Height="35px" Text="Submit" Width="84px" 
                            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" Font-Size="Large" 
                            ForeColor="Black" Height="32px" Text="Reset" Width="71px" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Con %>" 
                            SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
                    </div></td>
                <td class="style6">
                    <div id="divm">
                  
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3818.719580473701!2d74.61725871439465!3d16.840261922786986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc1225e591c9b77%3A0x281f0db03fdc162d!2sV.P.+Institute+of+Management+Studies+%26+Research!5e0!3m2!1sen!2sin!4v1473240795407" 
                            frameborder="0" 
                            style="border-style: none; border-color: inherit; border-width: 0; height: 100%; width: 100%;" 
                             id="I1" name="I1"></iframe></div></td>
                <td>
                    <div id="divc">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    <p>Sangli-Miraj Road,</span></p>
                    <p>Post Wanlesswadi Sangli-416414,</p>
                    <p>PhoneNo:02332211467,2212427</p>
                    <p >Email Id: vpimsr@gmail.com</span></p>
                      Website: vpimsr.edu.in</span>
                      </div>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>

