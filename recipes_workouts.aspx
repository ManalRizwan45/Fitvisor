<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recipes_workouts.aspx.cs" Inherits="WebApplication2.recipes_workouts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 8%;
        }
        .auto-style2 {
            width: 7%;
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
    <td align="right" class="auto-style2"><a href="WebForm3.aspx">Profile</a></td>
   <td align="right" width="9%"><a href="ContactUs.aspx">Contact Us</a></td>
  </tr>
</table>
    <form id="form1" runat="server">
        <div>
            <h1 align="left"  style="font:Arial, Helvetica, sans-serif;font-size:30px">Recipes</h1>
            <asp:GridView ID="GridView1" runat="server" Height="142px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" RowStyle-Height="100px"></asp:GridView>
            <br />
            <br />
            <br />

             <h1 align="left"  style="font:Arial, Helvetica, sans-serif;font-size:30px">Workouts</h1>
            <asp:GridView ID="GridView2" runat="server" Height="142px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" RowStyle-Height="100px"></asp:GridView>
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
