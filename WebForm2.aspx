<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}
 
        .btn-hover{
    background-image: linear-gradient(to right, #29323c, #485563, #2b5876, #4e4376);
    box-shadow: 0 4px 15px 0 rgba(45, 54, 65, 0.75);
}
    </style>
    </head>
<body bgcolor="#E6C500">
    <form id="form1" runat="server">
<table width="100%" border="0" bgcolor="#eeeeee">
  <tr>
    <td width="10%" align="left"><img src="l.png" width="99" height="95" alt="logo"/></td>
    <td width="22%" align="left"><h1>Fitvisor</h1>
    <a name ="top"></a>
    </td>
    <td align="right" width="24%"><a href="TransformationJ.aspx">Journeys</a></td>
    <td width="8%" align="right"><a href ="WebForm2.aspx">Home</a></td>
     <td width="10%" align="right"><a href ="NutProfiles.aspx">Nutrionists</a></td>
    <td align="right" width="9%"><a href="AboutUS.aspx">About Us</a></td>
    <td align="right" width="8%"><a href="WebForm3.aspx">Profile</a></td>
    <td align="right" width="9%"><a href="ContactUs.aspx">Contact Us</a></td>
      
  </tr>
</table>
<table width="100%" border="0" background="bg2.jpg" height="500">
     <tr>
        <td>&nbsp;</td>
    </tr>
<tr>
<td  width="40%">'
    <h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:60px">Feel Great.</h1>
    <h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:60px">Body and Mind.</h1>
    <br/>
</td>
</tr>
    <tr>
        <td align = "center">
            <asp:Button ID="Button1" runat="server" Text="Join Us Now!"  OnClick="Button1_Click" CssClass="btn-hover"/>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
        <br/>
        <br/>
        <br/>
<table width ="100%" height ="250">
    <tr>
        <td align ="center" background="drbg.jpg"><h1  style="font:Arial, Helvetica, sans-serif;font-size:p 50px">We will match your unique needs with the right Health and Fitness professionals</h1></td>
       </tr>
</table>
        <br/>
<table width ="100%" border ="0" height ="720">
    <tr>
        <td align ="center"><h1  style="font:Arial, Helvetica, sans-serif;font-size:p 50px">Workouts</h1></td>
        <td align ="right" background ="workout.jpg" width ="50%"></td>
    </tr>
    <tr>  
      <td align = "left" background ="hr.jpg" width ="50%"></td>
       <td  align ="center"><h1  style="font:Arial, Helvetica, sans-serif;font-size: 50px">Healthy Recipes</h1></td>
    </tr>
</table>
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
</form>
</body>
</html>
