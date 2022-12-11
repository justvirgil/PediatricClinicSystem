<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="PediatricClinicSystem.Prescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery.js" type="text/javascript"></script>
    <script type="text/javascript" lang="js">
        $(function () {
            $("#<%=ConsultationNumberTextBox.ClientID %>").keypress(function () {
            });
            $("#<%=MedicineCodeTextBox.ClientID %>").keypress(function () {
            });
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 60px;
            margin-bottom: 27px;
        }
        .auto-style3 {
            width: 355px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 367px;
        }
        .auto-style9 {
            height: 157px;
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
        .auto-style20 {
            width: 429px;
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
            height: 23px;
        }
        .auto-style29 {
            width: 347px;
        }
        .auto-style30 {
            width: 347px;
            height: 23px;
        }
        .auto-style31 {
            width: 429px;
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prescription</div>
        <div class="auto-style9">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prescription No.&nbsp;&nbsp;<asp:TextBox ID="PrescriptionNumberTextBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Consultation NO.
            <asp:TextBox ID="ConsultationNumberTextBox" runat="server" OnTextChanged="ConsultationNumberTextBox_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE&nbsp; <asp:TextBox ID="DateTextBox" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Panel ID="Panel1" runat="server" GroupingText="Patient Information" Height="108px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Patient Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="PatientCodeTextBox" runat="server" CssClass="auto-style6" OnTextChanged="PatientCodeTextBox_TextChanged" Width="169px" Enabled="False"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Patient Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="PatientNameTextBox" runat="server" CssClass="auto-style6" Width="169px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="AgeTextBox" runat="server" Enabled="False" Width="145px"></asp:TextBox>
                        </td>
                        <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>
            </asp:Panel>
          
            
            
            <br />
          
            
            
            <br />
          
            
            
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style10" GroupingText="Medicine To Prescribe" Height="276px">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medicine Code
                            <asp:TextBox ID="MedicineCodeTextBox" runat="server" Enabled="False" Width="145px"></asp:TextBox>
                        </td>
                        <td class="auto-style23"></td>
                        <td class="auto-style23"></td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="QuantityTextBox" runat="server" Enabled="False" Width="145px"></asp:TextBox>
                        </td>
                        <td class="auto-style23"></td>
                        <td class="auto-style23"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="RemarksTextBox" runat="server" Enabled="False" Width="145px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Height="118px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1002px">
                            </asp:GridView>
                        </td>
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
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
            </asp:Panel>

            <br />
            <br />

            <br />
            <asp:Panel ID="Panel3" runat="server" Height="113px">
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prepared By&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="preparedByTextBox" runat="server" OnTextChanged="TextBox15_TextChanged" Width="158px"></asp:TextBox>
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
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style20">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ExitButton" runat="server" Height="19px" OnClick="Button3_Click" Text="Exit" Width="81px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style31"></td>
                        <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>
            </asp:Panel>
            <footer>
                                @All rights reserved to Dr.Joshy&#39;s Pediatric Clinic 2015@
                           </footer>
        </div>
                    </td>
                </tr>
             
                </table>            
        </div>
       
    </form>

</body>
</html>