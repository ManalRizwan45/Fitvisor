<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NutritionistProfile.aspx.cs" Inherits="WebApplication2.NutritionistProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</head>
<body bgcolor="#E6C500">
<table width="100%" border="0">
  <tr>
       <td align="right" width="9%"><a href="WebForm3.aspx">Log out </a></td>
    <td width="10%" align="left"><img src="l.png" width="99" height="95" alt="logo"/></td>
    <td width="22%" align="left"><h1>Fitvisor</h1></td>
     <td align="right" width="10%"><a href="TransformationJ.aspx">Journeys</a></td>
    <td align="right" width="14%"><a href="DiscussionRoom.aspx">Discussion Room</a></td>
    <td width="8%" align="right"><a href ="WebForm2.aspx">Home</a></td>
    <td width="10%" align="right"><a href ="NutProfiles.aspx">Nutrionists</a></td>
    <td align="right" width="9%"><a href="AboutUS.aspx">About Us</a></td>
    <td align="right" width="8%"><a href="WebForm3.aspx">Profile</a></td>
 <td align="right" width="9%"><a href="ContactUs.aspx">Contact Us</a></td>
  </tr>
</table>
    <form id="form1" runat="server">
        <div>
            <h1>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nutritionist Profile<br />
                <br />
            </h1>
           
            <table align="center" width="22%" >
  <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> ID : </td>
    <td align="center" style="margin-left: 40px">
        <asp:TextBox ID="TextBox1" runat="server"  ReadOnly="True"></asp:TextBox></td>
  </tr>
  <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Name :</td>
    <td align="center" style="margin-left: 40px">
        <asp:TextBox ID="TextBox7" runat="server"  ReadOnly="True"></asp:TextBox></td>
  </tr>

                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Gender :</td>
    <td align="center" style="margin-left: 40px">
        <asp:TextBox ID="TextBox10" runat="server"  ReadOnly="True"></asp:TextBox></td>
  </tr>

   <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Email :</td>
    <td align="center">
        <asp:TextBox ID="TextBox2"  
runat="server" Height="22px" ReadOnly="True"></asp:TextBox> </td>
  </tr>
                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" class="auto-style1"> Address:</td>
    <td align="center" class="auto-style1">
       <asp:TextBox ID="TextBox6"  
runat="server" ReadOnly="True"></asp:TextBox>  
 </td>
  </tr>
                 <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" class="auto-style1"> Phone :</td>
    <td align="center" class="auto-style1">
       <asp:TextBox ID="TextBox5"  
runat="server" ReadOnly="True"></asp:TextBox>  
 </td>
  </tr>

                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Age :</td>
    <td align="center">
       <asp:TextBox ID="TextBox3"  
runat="server" ReadOnly="True" Height="16px" Width="120px"></asp:TextBox>  
 </td>
  </tr>
   </table>
            <br />
            <br />
        <table width="100%" bgcolor="#2f2f2f">
            <tr>
                <td align ="center" class="auto-style1"><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click"  ImageUrl="arrow.png" Height="30px" Width="25px" BackColor="Yellow" />
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