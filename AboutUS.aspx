<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUS.aspx.cs" Inherits="WebApplication2.AboutUS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#E6C500">
<table width="100%" border="0">
  <tr>
     <td width="10%" align="left"><img src="l.png" width="99" height="95" alt="logo"/></td>
    <td width="22%" align="left"><h1>Fitvisor</h1></td>
<td align="right" width="24%"><a href="TransformationJ.aspx">Journeys</a></td>
    <td width="8%" align="right"><a href ="WebForm2.aspx">Home</a></td>
    <td width="10%" align="right"><a href ="NutProfiles.aspx">Nutrionists</a></td>
    <td align="right" width="9%"><a href="AboutUS.aspx">About Us</a></td>
    <td align="right" width="8%"><a href="WebForm3.aspx">Profile</a></td>
   <td align="right" width="9%"><a href="ContactUs.aspx">Contact Us</a></td>
  </tr>
</table>
    <form id="form1" runat="server">
        <div>
          <h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:80px">About Us</h1>
            <p align="center">Our goal is to make health and fitness attainable, affordable and approachable.</p><br/> 
            <p align="center">Created to help you live a better, happier, healthier life.</p><br/> 
            <p align="center">We believe fitness should be accessible to everyone, everywhere, regardless of income level or access to a gym. That's why we offer free, full-length workout videos, the most affordable and effective workout programs on the web, meal plans, and helpful health, nutrition and fitness information.</p><br/> 
            <p align="center">Our approach is unique in that we provide both a physical and digital space where participants will find friendly and familiar faces with whom they create trusted relationships. And unlike other fitness providers, we truly provide a comprehensive solution addressing the whole person.</p><br/> 
            <br />
            <br />
            <br /> 
            <table width="100%" bgcolor="#2f2f2f">
            <tr>
                <td align ="center" class="auto-style1"><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click"  ImageUrl="arrow.png" Height="24px" Width="25px" />
                    <br />
                 Back to Top</td>
            </tr>
            <tr>
                <td  align ="center" class="auto-style2">
                <asp:Image ID="Image1" runat="server" src="logo1.png" ImageAlign ="Middle" Height="84px" Width="82px"/>
                <h1 style="font-size: 18px">Fitvisor</h1>
                </td>
            </tr>
         </table>
        </div>
    </form>
</body>
</html>
