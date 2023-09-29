<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication2.WebForm3" %>

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
            
           <table width="100%" >
               <%--<tr>
    <td align="center">
<img  alt="logo" src="https://www.clipartmax.com/png/full/303-3030990_natural-fitness-logo-icon-icon.png" />
    </td>
  </tr>--%>
</table>
            <style>
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
                .btn-hover {
                    background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
                    box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
                }
                .auto-style1 {
                    width: 249px;
                }
                .auto-style2 {
                    width: 262px;
                }
                .auto-style3 {
                    width: 374px;
                }
            </style>
       
       <%-- <h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:100px">Fitvisor</h1>--%>
        <br />
       <h2 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:36px">Log In  </h2>
       <br />
           
            <table align="center" width="20%" >
  <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" class="auto-style3"> Username:</td>
    <td align="center">
        <asp:TextBox ID="UsernameTextBox" runat="server" Height="21px" OnTextChanged="UsernameTextBox_TextChanged"></asp:TextBox></td>
  </tr>
  <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" class="auto-style3"> Password:</td>
    <td align="center">
        <asp:TextBox ID="txtPassword" TextMode="password"  
runat="server"></asp:TextBox> </td>
  </tr>
   <tr>
   <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" colspan="2"> Who am I?<br />
&nbsp;<asp:RadioButton ID="rdUser" Text="User" GroupName="UN"
runat="server" OnCheckedChanged="rdUser_CheckedChanged" />
<asp:RadioButton ID="rdNutritionist" Text="Nutritionist" GroupName="UN"
runat="server" OnCheckedChanged="rdNutritionist_CheckedChanged" />
</td>
  </tr>
   <tr>
       <td align ="center" colspan ="2">
           <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="Button2_Click" />
           <br />
           <asp:Label ID="ErrorLabel" runat="server" BorderStyle="Outset" BorderWidth="10px" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="20px" Text="Invalid Credentials" Visible="False" Width="200px"></asp:Label>
           <br />
            <br />
       </td>
   </tr>
  <tr>
      <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" colspan="2">Don't have an account?</td>
  </tr>
<tr>
    <td align="center" class="auto-style3" colspan ="2">
            <asp:Button ID="SignupBtn" runat="server" Text="Sign Up Now!" OnClick="Button1_Click"  CssClass="btn-hover"/>
        </td>
                </table>
            <br />
            <br />
            <br />
             <table width="100%" bgcolor="#2f2f2f">
            <tr>
                <td align ="center" class="auto-style1"><asp:ImageButton ID="BacktoTopButton1" runat="server" OnClick="ImageButton1_Click"  ImageUrl="arrow.png" Height="24px" Width="25px" />
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
