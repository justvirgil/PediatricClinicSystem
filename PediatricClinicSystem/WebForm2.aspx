<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PediatricClinicSystem.WebForm2" %>

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
    </style>
</head>
<body style="background-color:#023246">
    <form id="form1" runat="server">
        <div class="auto-style6">
            <h1 style="color:#F6f6f6">PEDIATRIC CLINICAL SYSTEM</h1>            
            <h2 style="color:#F6f6f6">Patient Registration Form</h2>
            <br />
            <br />
       
            <table style="background-color:#F6f6f6">
                <tr>
                    <td >
                        <asp:Label ID="Label2" runat="server" Text="Consultation No."></asp:Label>                       
                    </td>
                    <td>
                         <asp:TextBox ID="ConsultationTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Immunization Ref."></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ImmunizationTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <th style="color:#023246" class="auto-style1">Patient info</th>
                   
                </tr>
                <tr>
                    <td class="auto-style1">Patient Code</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="PcodeTextBox" runat="server" Width="90px"></asp:TextBox> 
                        </td>                     
                </tr>
              
                <tr>
                    <td class="auto-style1">
                        Patient Name
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="PnameTextBox" runat="server" Width="140px"></asp:TextBox>
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
                        <asp:TextBox ID="BdayTextBox" runat="server" Width="109px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        Telephone
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TphoneTextBox" runat="server" Width="119px"></asp:TextBox>
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
                        <asp:TextBox ID="FTextBox" runat="server" CssClass="auto-style4" Width="140px"></asp:TextBox>
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
                        <asp:TextBox ID="MTextBox" runat="server" Width="140px"></asp:TextBox>

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
               <asp:Label ID="Label1" runat="server" Text="Encoded By" ></asp:Label>
               
           </p>
            <p>
                <asp:TextBox ID="EncodedTextBox" runat="server" BorderStyle="Solid"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="auto-style4" ></asp:Button> 
                <asp:Button ID="ClearButton" runat="server" Text="Clear"></asp:Button>
            </p>
            <br />
            <footer>

            </footer>
        </div>
    </form>
</body>
</html>
