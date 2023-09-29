<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

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
    <td align="right" width="10%"><a href="TransformationJ.aspx">Journeys</a></td>
    <td align="right" width="14"><a href="DiscussionRoom.aspx">Discussion Room</a></td>
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
                <%-- <tr>
    <td align="center">
<img  alt="logo" src="https://www.clipartmax.com/png/full/303-3030990_natural-fitness-logo-icon-icon.png" />
    </td>
  </tr>
</table>
       
        <%--<h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:100px">Fitvisor</h1>--%>
        <br />
       <h2 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:36px">Sign Up  </h2>
       <br />
           
            <table align="center" width="22%" >
  <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> User Name:</td>
    <td align="center">
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
  </tr>
   <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Email :</td>
    <td align="center">
        <asp:TextBox ID="TextBox2"  
runat="server"></asp:TextBox> </td>
  </tr>
                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Password :</td>
    <td align="center">
        <asp:TextBox ID="txtPassword" TextMode="password"  
runat="server"></asp:TextBox> </td>
  </tr>
                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Address :</td>
    <td align="center">
       <asp:TextBox ID="TextBox6"  
runat="server" Height="22px"></asp:TextBox>  
 </td>
  </tr>
                 <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Phone Number :</td>
    <td align="center">
       <asp:TextBox ID="TextBox5"  
runat="server"></asp:TextBox>  
 </td>
  </tr>

                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Age :</td>
    <td align="center">
       <asp:TextBox ID="TextBox3"  
runat="server"></asp:TextBox>  
 </td>
  </tr>
   <tr>
   <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center" colspan="2"> Gender
  <asp:RadioButton ID="RadioButton1" Text="Male" GroupName="Gender"
runat="server" />
<asp:RadioButton ID="RadioButton2" Text="Female" GroupName="Gender"
runat="server" />
<asp:RadioButton ID="RadioButton3" Text="Other" GroupName="Gender"
runat="server" />
</td>
  </tr> 
   
                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Weight(in lbs) :</td>
    <td align="center">
       <asp:TextBox ID="TextBox4"  
runat="server"></asp:TextBox>  
 </td>
  </tr>
                <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Goal Category :</td>
    <td align="center">
<asp:DropDownList ID="goalcategory" runat="server"> 
<asp:ListItem Text="Select" Value="0"></asp:ListItem> 
<asp:ListItem Text="Lose Fat"  
Value="Lose Fat"></asp:ListItem> 
<asp:ListItem Text="Gain Muscle"  
Value="Gain Muscle"></asp:ListItem> 
<asp:ListItem Text="Build Strength"  
Value="Build Strength"></asp:ListItem> 
<asp:ListItem Text="Improve Endurance"  
Value="Improve Endurance"></asp:ListItem> 
<asp:ListItem Text="Improve Flexibility"  
Value="Improve Flexibility"></asp:ListItem> 
<asp:ListItem Text="Toning"  
Value="Toning"></asp:ListItem>
<asp:ListItem Text="Gain Weight"  
Value="Gain Weight"></asp:ListItem>
</asp:DropDownList>   
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
 </td>

  </tr>
  <tr>
    <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Medical Conditions :</td>
    <td align="center">
<asp:DropDownList ID="DropDownList1" runat="server"> 
<asp:ListItem Text="Select" Value="0"></asp:ListItem> 
<asp:ListItem Text="Heart condition"  
Value="Heart Condition"></asp:ListItem> 
<asp:ListItem Text="Respiratory Issues"  
Value="Respiratory Issues"></asp:ListItem> 
<asp:ListItem Text="High Cholestrol"  
Value="High Cholestrol"></asp:ListItem> 
<asp:ListItem Text="Diabetes"  
Value="Diabetes"></asp:ListItem> 
<asp:ListItem Text="Asthma"  
Value="Asthma"></asp:ListItem> 
<asp:ListItem Text="Eating Disorder"  
Value="Eating Disorder"></asp:ListItem>
<asp:ListItem Text="Physical Disability"  
Value="Physical Disability"></asp:ListItem>
<asp:ListItem Text="None"  
Value="None"></asp:ListItem>
</asp:DropDownList>   
 </td>
  </tr>
<tr>
 <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="center"> Food Allergies :</td>
 <td align="center">
  <asp:DropDownList ID="DropDownList2" runat="server"> 
<asp:ListItem Text="Select" Value="0"></asp:ListItem> 
<asp:ListItem Text="Nuts"  
Value="Nuts"></asp:ListItem> 
<asp:ListItem Text="Fruits"  
Value="Fruits"></asp:ListItem> 
<asp:ListItem Text="Shellfish"  
Value="Shellfish"></asp:ListItem> 
<asp:ListItem Text="Eggs"  
Value="Eggs"></asp:ListItem> 
<asp:ListItem Text="Lactose"  
Value="Lactose"></asp:ListItem> 
<asp:ListItem Text="Gluten"  
Value="Gluten"></asp:ListItem>
<asp:ListItem Text="Soya"  
Value="Soya"></asp:ListItem>
<asp:ListItem Text="Sesame"  
Value="Sesame"></asp:ListItem>
 <asp:ListItem Text="None"  
Value="None"></asp:ListItem>

</asp:DropDownList>   
 </td>
  </tr>
      <tr>
       <td>
       </td>
       </tr>
   <tr>
      
       <td colspan="2" align="center">
           <asp:Button ID="btnSave" Text="Done" runat="server" OnClick="btnSave_Click" />
       </td>
  </tr>
</table>
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
