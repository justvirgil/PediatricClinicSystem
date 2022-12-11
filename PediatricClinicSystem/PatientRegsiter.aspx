<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientRegsiter.aspx.cs" Inherits="PediatricClinicSystem.PatientRegsiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>PatientRegistration</title>
    <style>
        table{
            border:1px solid black;
            font-family:Arial, Helvetica, sans-serif;
            width:100%;
            margin:auto;
            border-style:ridge;
            border-color:#F6f6f6;
        }
        .auto-style1 {
            width: 117px;
        }
        .auto-style2 {
            width: 50px;
        }
        .auto-style3 {
            width: 546px;
        }
        .auto-style4 {
            margin-right: 0px;
        }
        .auto-style6 {
            height: 391px;
        }
        table1{
            border: 0.5px solid black;
        }
        td{
            font-family:Arial, Helvetica, sans-serif;
        }
        h1,h2{
            font-family:Arial, Helvetica, sans-serif;
            text-align:center;
            
        }
        p{
            text-align:center;
            
        }
        th{
            
        }
        .auto-style7 {
            width: 117px;
            height: 29px;
        }
        .auto-style8 {
            width: 546px;
            height: 29px;
        }
        .auto-style9 {
            width: 50px;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
        }
        footer{
            width:100%;
            
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
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            height: auto;
            width: 100%;
        }
    </style>
</head>
<body style="background-color:#023246">
    <form id="form1" runat="server">
        <div>    
            <table border="1" style="height:auto;width:100%">
                 <tr style="background-color: #333">  
                        <td colspan="2" style="text-align: center" class="auto-style11">  
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
                    <td style="text-align: center; " class="auto-style12">
                            <div class="auto-style6">
            <h1 style="color:#F6f6f6">PEDIATRIC CLINICAL SYSTEM</h1>            
            <h2 style="color:#F6f6f6">Patient Registration Form</h2>
            <br />
            <br />
       
            <table style="background-color:#F6f6f6">
                <tr>
                    <td >
                        &nbsp;</td>
                    <td>
                         &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <th style="color:#023246" class="auto-style1">Patient info</th>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Patient Code</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="PatientCodeTextBox" runat="server" Width="90px"></asp:TextBox> 
                        </td>                     
                </tr>
              
                <tr>
                    <td class="auto-style1">
                        Patient Name
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="PatientNameTextBox" runat="server" Width="140px"></asp:TextBox>
                    </td>
                   <td style="text-align:right" class="auto-style2">Gender

                        </td>
                        <td>  <asp:DropDownList ID="GenderDropDownList" runat="server">
                            <asp:ListItem Selected="True">Select a Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>                
                </tr>
                <tr>
                    <td class="auto-style1">
                        Address
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="AddressTextBox" runat="server" Width="229px"></asp:TextBox>
                    </td>
                   <td style="text-align:right" class="auto-style2">Birthday

                    </td>
                    <td>
                        <asp:TextBox ID="BirthdayTextBox" runat="server" Width="198px" TextMode="Date"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        Telephone
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TelephoneTextBox" runat="server" Width="119px"></asp:TextBox>
                    </td>
                    <td style="text-align:right" class="auto-style2">Age

                    </td>
                    <td>
                        <asp:TextBox ID="AgeTextBox" runat="server" Width="41px"></asp:TextBox>
                    </td>                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        Father's Name
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="FatherNameTextBox" runat="server" CssClass="auto-style4" Width="140px"></asp:TextBox>
                    </td>
                    <td style="text-align:right" class="auto-style2">Weight
                    </td>
                    <td>
                        <asp:TextBox ID="WeightTextBox" runat="server" Width="42px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        Mother's Name
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="MotherNameTextBox" runat="server" Width="140px"></asp:TextBox>

                    </td>
                    <td style="text-align:right" class="auto-style9">
                        Height
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="HeightTextBox" runat="server" Width="42px"></asp:TextBox>

                    </td>
                </tr>
            </table>
            <br />          
           <p style="color:#F6f6f6">
               &nbsp;</p>
            <p>
                <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="auto-style4" OnClick="SaveButton_Click" ></asp:Button> 
                <asp:Button ID="ClearButton" runat="server" Text="Clear"></asp:Button>
            </p>
            <br />
            <footer>

                    <footer>
                        @All rights reserved to Dr.Joshy's Pediatric Clinic 2015@
                    </footer>         

            </footer>
        </div>
                    </td>
                </tr>
                <tr>
                   <td colspan="2" style="text-align: center" class="auto-style11">                           
                       &nbsp;</td>
                </tr>
                </table>            
        </div>   
    </form>
</body>
</html>
