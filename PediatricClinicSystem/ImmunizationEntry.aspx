<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImmunizationEntry.aspx.cs" Inherits="PediatricClinicSystem.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="jquery.js" type="text/javascript"></script>
    <script type="text/javascript" lang="js">
        $(function () {
            $("#<%=PatientCodeTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=preparedByTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=ExaminedByTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=VaccineTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=ShotNumberTextBox.ClientID %>").keypress(function () {
            });
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 355px;
        }
        .auto-style4 {
            width: 358px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 367px;
        }
        .auto-style8 {
            width: 365px;
        }
        .auto-style9 {
            height: 207px;
        }
        .auto-style10 {
            margin-top: 0px;
        }
        .auto-style18 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style19 {
            width: 346px;
        }
        .auto-style20 {
            width: 429px;
        }
        .auto-style21 {
            margin-left: 9px;
        }
        h1{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color:white;
            background-color:#333;
        }
        ul{
            list-style-type:none;
             margin:0;
             padding:0;
             overflow: hidden;
             background-color: #333;
        }
        li{
            float:left;
        }
        li a{
            padding: 0px 8px;
             color: white;
             text-align: center;

        }
        li a:hover {
              background-color: #111;
         }
        footer{
             background-color: #333;
             color: white;
             text-align:center;
             font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
    </style>
</head>
<body style="height: 685px">
    <form id="form1" runat="server">
        <div>    
            <table border="1" style="height:auto;width:100%">
                 <tr style="background-color: #333">  
                        <td colspan="2" style="text-align: center">  
                           <h1>
                               Pediatric Clinic<br />
                               General Hospital</h1>
                            <ul>
                    <li><a class="active" href="Home.aspx">Home</a></li>                   
                    <li style="padding:0px 10px"><a href="About.aspx">About</a></li>
                    <li style="padding:0px 10px"><a href="Contact.aspx">Contact</a></li>
                    <li style="padding:0px 10px"><a href="PatientRegsiter.aspx">Patient Regsitration</a></li>
                    <li style="padding:0px 10px"><a href="ImmunizationEntry.aspx">Immunization Entry</a></li>
                    <li style="padding:0px 10px"><a href="ConsultationEntry.aspx">Consultation Entry</a></li>
                    <li style="padding:0px 10px"><a href="Prescription.aspx">Prescription</a></li>
                    <li style="padding:0px 10px"><a href="Billing.aspx">Billing</a></li>>
                </ul>
                        </td> 
                     </tr>
                <tr>
                    <td style="height: 100%; width:100%">
                            <div>
            <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PEDIATRIC CLINICAL SYSTEM</div>
        </div>
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMMUNIZATION ENTRY</div>
        <div class="auto-style9">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; IMMUNIZATION&nbsp;&nbsp;&nbsp;CODE&nbsp;
            <asp:TextBox ID="immuNumberTextBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE&nbsp; <asp:TextBox ID="DateTextBox" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Panel ID="Panel1" runat="server" GroupingText="Patient Information" Height="184px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Patient Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="PatientCodeTextBox" runat="server" CssClass="auto-style6" Width="169px" OnTextChanged="PatientCodeTextBox_TextChanged"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style7">Father&#39;s Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="FatherNameTextBox" runat="server" Width="193px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="AgeTextBox" runat="server" Width="145px" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Patient Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="PatientNameTextBox" runat="server" CssClass="auto-style6" Width="169px" OnTextChanged="PatientNameTextBox_TextChanged" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="auto-style7">Mother&#39;s Name&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="MotherNameTextBox" runat="server" Width="191px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Weight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="WeightTextBox" runat="server" Width="145px" Enabled="False"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp; kg.</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="AddressTextBox" runat="server" CssClass="auto-style6" Width="169px" Enabled="False"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style7">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="GenderTextBox" runat="server" CssClass="auto-style6" Width="188px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Height&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="HeightTextBox" runat="server" CssClass="auto-style6" Width="145px" Enabled="False"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp; cm.</td>
                    </tr>
                </table>
                <table id="PatientNameTextBox" class="auto-style1">
                    <tr>
                        <td class="auto-style4">Telephone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TelephoneTextBox" runat="server" CssClass="auto-style6" Width="169px" Enabled="False"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style8">Birthday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="BirthdayTextBox" runat="server" CssClass="auto-style6" Width="188px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Body tempt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="bodyTempTextBox" runat="server" Width="149px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp; cel.</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
          
            
            
            <br />
          
            
            
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style10" GroupingText="Vaccine Information" Height="117px">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vaccine Code
                            <asp:TextBox ID="VaccineTextBox" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shot Number
                            <asp:TextBox ID="ShotNumberTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reaction&nbsp;
                            <asp:TextBox ID="reactionTextBox" runat="server" Width="474px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </asp:Panel>

            <br />
            <asp:GridView ID="GridView1" runat="server" Height="118px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1163px">
            </asp:GridView>
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="113px">
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prepared By&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="preparedByTextBox" runat="server" OnTextChanged="TextBox15_TextChanged" Width="158px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="preparedByOutputTextBox" runat="server" CssClass="auto-style6" Width="357px" Enabled="False" OnTextChanged="preparedByOutputTextBox_TextChanged"></asp:TextBox>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="SaveButton" runat="server" CssClass="auto-style6" Height="20px" Text="Save" Width="81px" OnClick="SaveButton_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ClearButton" runat="server" Height="19px" Text="Clear" Width="80px" OnClick="ClearButton_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Examined By&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="ExaminedByTextBox" runat="server" Width="157px" OnTextChanged="ExaminedByTextBox_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style20">&nbsp;&nbsp;
                            <asp:TextBox ID="examinedByOutputTextBox" runat="server" CssClass="auto-style21" Width="354px" Enabled="False"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ExitButton" runat="server" Height="19px" OnClick="Button3_Click" Text="Exit" Width="81px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style20">&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>
            </asp:Panel>
            <footer>
                                @All rights reserved to Dr.Joshy&#39;s Pediatric Clinic 2015@
                 </footer>
                            </div>
                    </td>
                </tr>
                </table>      +
            
            </form>

</body>
</html>
