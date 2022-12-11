<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultationEntry.aspx.cs" Inherits="PediatricClinicSystem.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery.js" type="text/javascript"></script>
    <script type="text/javascript" lang="js">
        $(function () {
            $("#<%=ConsultationNumberTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=immuNumberTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=DiagnosisCodeTextBox.ClientID %>").keypress(function () {
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
        .auto-style16 {
            height: 21px;
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
        .auto-style22 {
            width: 100%;
            height: 39px;
        }
        .auto-style23 {
            width: 358px;
            height: 23px;
        }
        .auto-style24 {
            width: 365px;
            height: 23px;
        }
        .auto-style25 {
            height: 23px;
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
                    <li style="padding:0px 10px"><a href="Billing.aspx">Billing</a></li>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONSULTATION ENTRY</div>
        <div class="auto-style9">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONSULTATION NO.
            <asp:TextBox ID="ConsultationNumberTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMMUNIZATION&nbsp;&nbsp;&nbsp; (REFERRAL)&nbsp; NO.
            <asp:TextBox ID="immuNumberTextBox" runat="server" OnTextChanged="immuNumberTextBox_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE&nbsp; <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
            <asp:Panel ID="Panel1" runat="server" GroupingText="Patient Information" Height="184px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Patient Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="PatientCodeTextBox" runat="server" CssClass="auto-style6" OnTextChanged="PatientCodeTextBox_TextChanged" Width="169px" Enabled="False"></asp:TextBox>
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
                            <asp:TextBox ID="PatientNameTextBox" runat="server" CssClass="auto-style6" Width="169px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="auto-style7">Mother&#39;s Name&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="MotherNameTextBox" runat="server" Width="191px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Weight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="WeightTextBox" runat="server" Enabled="False" Width="145px"></asp:TextBox>
                            &nbsp; kg.</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="AddressTextBox" runat="server" CssClass="auto-style6" Width="169px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="auto-style7">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="GenderTextBox" runat="server" CssClass="auto-style6" Width="189px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Height&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="HeightTextBox" runat="server" Enabled="False" Width="145px"></asp:TextBox>
                            &nbsp; cm.</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style4">Telephone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TelephoneTextBox" runat="server" CssClass="auto-style6" Width="169px" Enabled="False" OnTextChanged="TelephoneTextBox_TextChanged"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style8">Birthday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="BirthdayTextBox" runat="server" CssClass="auto-style6" Width="188px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>Body tempt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="BodyTempTextBox" runat="server" Width="145px"></asp:TextBox>
                            &nbsp; cel.</td>
                    </tr>
                    <tr>
                        <td class="auto-style23"></td>
                        <td class="auto-style24"></td>
                        <td class="auto-style25"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
          
            
            
            <br />
          
            
            
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style10" GroupingText="Diagnosis Information" Height="370px">
                <table style="width:100%;">
                    <tr>
                        <td>Diagnosis Code
                            <asp:TextBox ID="DiagnosisCodeTextBox" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Physician&#39;s Notes/Directions
                            <asp:TextBox ID="PhysicianTextBox" runat="server" Width="474px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Height="118px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1002px">
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style22">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:CheckBox ID="ForAdmissionCheckBox" runat="server" Text="For Admission?" />
                            <asp:CheckBox ID="ForLaboratoryCheckBox" runat="server" Text="For Laboratory Test?" />
                        </td>
                    </tr>
                </table>
                <br />
            </asp:Panel>

            <br />
            <asp:Panel ID="Panel3" runat="server" Height="113px">
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prepared By&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="preparedByTextBox" runat="server" OnTextChanged="TextBox15_TextChanged" Width="158px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="preparedByOutputTextBox" runat="server" CssClass="auto-style6" Width="357px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="SaveButton" runat="server" CssClass="auto-style6" Height="20px" Text="Save" Width="81px" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ClearButton" runat="server" Height="19px" Text="Clear" Width="80px" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Examined By&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="ExaminedByTextBox" runat="server" Width="157px" OnTextChanged="ExaminedByTextBox_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style20">&nbsp;&nbsp;
                            <asp:TextBox ID="examinedByOutputTextBox" runat="server" CssClass="auto-style21" Width="354px" OnTextChanged="examinedByOutputTextBox_TextChanged" Enabled="False"></asp:TextBox>
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
                           /footer>
        </div>
                    </td>
                </tr>
             
                </table>            
        </div>
       
    </form>

</body>
</html>