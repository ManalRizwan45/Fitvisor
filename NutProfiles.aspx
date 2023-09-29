<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NutProfiles.aspx.cs" Inherits="WebApplication2.NutProfiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body bgcolor="#E6C500">
    <form id="form1" runat="server">
         <div>
         <table width="100%" border="0">
    <tr>
     <td align="right" width="9%"><a href="WebForm3.aspx">Log out </a></td>
    <td width="10%" align="left"><img src="l.png" width="99" height="95" alt="logo"/></td>
    <td width="22%" align="left"><h1>Fitvisor</h1></td>
    <td align="right" width="24%"><a href="TransformationJ.aspx">Journeys</a></td>
    <td width="8%" align="right"><a href ="WebForm2.aspx">Home</a></td>
    <td width="10%" align="right"><a href ="NutProfiles.aspx">Nutrionists</a></td>
    <td align="right" width="9%"><a href="AboutUS.aspx">About Us</a></td>
    <td align="right" width="8%"><a href="WebForm3.aspx">Profile</a></td>
    <td align="right" width="9%"><a href="ContactUs.aspx">Contact Us</a><br />
        </td>
  </tr>
</table>
             <h3 align="center"  style="font-size:80px; margin-left: 40px;"><span class="auto-style1">Our Certified Nutritionists</span>
            <br />
             </h3>
             <p style="width: 232px; margin-left: 40px">
                 <br />
                 <asp:Image ID="Image2" runat="server" src="ESajeel.jpg" Width="192px" Height="139px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </p>
             <p style="width: 232px; margin-left: 40px">
                 Eimaan Sajeel</p>
             <p style="width: 232px; margin-left: 40px">
                 Emraan Sajeel graduated from The Open University. is an author, fitness advisor, educator, yogi, and blogger and has been in the fitness business since 1978.
             </p>
             <p style="width: 232px; margin-left: 40px">
                 &nbsp;</p>
             <p style="width: 232px; margin-left: 40px">
                 &nbsp;</p>
             <p style="width: 232px; margin-left: 40px">
                 <asp:Image ID="Image3" runat="server" Height="206px" src="SKashif.jpg" Width="180px" />
             </p>
             <p style="margin-left: 40px">
                 Sabaina Kashif</p>
             <p style="margin-left: 40px">
                Sabaina Kashif graduated from The bib International College. She has been working at Fitvisor as a nutritionist for over 10 years.
             </p>
             <p style="margin-left: 40px">
                 &nbsp;</p>
             <p style="margin-left: 40px">
                 &nbsp;</p>
             <p style="margin-left: 40px">
                 <asp:Image ID="Image4" runat="server" Height="206px" src="AIkram.jpg" Width="180px" />
             </p>
             <p style="margin-left: 40px">
                 Amer Ikram</p>
             <p style="margin-left: 40px">
                Amer Ikram graduated from Bristol university in Health Sciences. His holistic approach to training, nutrition and focus on movement mechanics and muscle function is a breath of fresh air in the fitness industry.
             </p>
             <br/>
             
             <p style="margin-left: 40px">
                 <asp:Image ID="Image5" runat="server" Height="206px" src="HFarooq.jpg" Width="180px" />
             </p>
             <p style="margin-left: 40px">
                 Huzaifa Farooq</p>
             <p style="margin-left: 40px">
                 Huzaifa Farooq graduated from Hardin-Simmons University. He creates delicious plant-based recipes and writes about today’s most popular health topics. </p>
             <p style="margin-left: 40px">
                 &nbsp;</p>
             <p style="margin-left: 40px">
                 &nbsp;</p>
             <p style="margin-left: 40px">
                 <asp:Image ID="Image6" runat="server" Height="174px" src="ESiddiqui.jpg" Width="174px" />
             </p>
             <p style="margin-left: 40px">
                 Elise Siddiqui</p>
             <p style="margin-left: 40px">
                 Elise Siddiqui has a bachelor’s degree in Sports and Fitness from Alice Lloyd College. For her, fitness is a way of life. She has showed innumerable men and women a way to healthy lifestyle.</p>
             <p style="margin-left: 40px">
                 &nbsp;</p>
             <p style="margin-left: 40px">
                 <asp:Label ID="Label1" runat="server" Text="Choose your nutritionist " Visible="False"></asp:Label>
                 &nbsp;&nbsp;
                 <asp:DropDownList ID="ChooseNut" runat="server" Visible="False" OnSelectedIndexChanged="ChooseNut_SelectedIndexChanged"> 
<asp:ListItem Text="Select" Value="0"></asp:ListItem> 
<asp:ListItem Text="Eimaan Sajeel"  
Value="Eimaan Sajeel"></asp:ListItem> 
<asp:ListItem Text="Amer Ikram"  
Value="Amer Ikram"></asp:ListItem> 
<asp:ListItem Text="Sabaina Kashif"  
Value="Sabaina Kashif"></asp:ListItem> 
<asp:ListItem Text="Huzaifa Farooq"  
Value="Huzaifa Farooq"></asp:ListItem> 
<asp:ListItem Text="Elise Siddiqui"  
Value="Elise Siddiqui"></asp:ListItem> 

</asp:DropDownList>
             </p>
             <p style="margin-left: 40px">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consult" Visible="False" />
             </p>
             <p style="margin-left: 40px">
                 <asp:Label ID="Label2" runat="server" Text="Contact your nutritionist at : " Visible="False"></asp:Label>
                 <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False"></asp:TextBox>
                 <br />
                 <br />
                 <br />
             </p>
             <table width="100%" bgcolor="#2f2f2f">
            <tr>
                <td align ="center" class="auto-style1"><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click"  ImageUrl="arrow.png" Height="24px" Width="25px" />
                    <br />
                 Back to Top     </tr>
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

