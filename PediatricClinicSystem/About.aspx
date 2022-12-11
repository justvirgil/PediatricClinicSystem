<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PediatricClinicSystem.About" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>PediatricClincalSystem</title>
    <style>
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
<body>
    <form id="form1" runat="server">
        <div>    
            <table border="1" style="height:auto;width:100%">
                 <tr style="background-color: #333">  
                        <td colspan="2" style="text-align: center">  
                           <h1>
                    Dr.Joshy's Pediatric Clinic<br />
                    Lahug Cebu City
                            </h1>
                            <ul>
                    <li><a class="active" href="Home.aspx">Home</a></li>                   
                    <li style="padding:0px 10px"><a href="About.aspx">About</a></li>
                    <li style="padding:0px 10px"><a href="Contact.aspx">Contact</a></li>
                    <li style="padding:0px 10px"><a href="PatientRegsiter.aspx">Patient Regsitration</a></li>
                    <li style="padding:0px 10px"><a href="ImmunizationEntry.aspx">Immunization Entry</a></li>
                    <li style="padding:0px 10px"><a href="ConsultationEntry.aspx">Consultation Entry</a></li>
                </ul>
                        </td> 
                     </tr>
                <tr>
                    <td style="text-align: center; height: auto; width:100%">
                            
                                <h1>About</h1>
      
                    </td>
                </tr>
                <tr>
                   <td colspan="2" style="text-align: center">                           
                    <footer>
                        @All rights reserved to Dr.Joshy's Pediatric Clinic 2015@
                    </footer>         
                    </td>
                </tr>
                </table>            
        </div>
    </form>
</body>
</html>

