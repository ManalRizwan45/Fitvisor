<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiscussionRoom.aspx.cs" Inherits="WebApplication2.DiscussionRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#E6C500">
    <form id="form1" runat="server">
        <div>
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
    <h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:80px">Discussion Room</h1>
    <table  width="100%" background ="drbg.jpg">
          <tr>
            <td><h1 align="left"  style="font:Arial, Helvetica, sans-serif;font-size:30px">Start a Discussion?</h1>
                <h1 align="left"  style="font:Arial, Helvetica, sans-serif;font-size:15px">Comment</h1>
                <asp:TextBox ID="textbox1" runat="server" TextMode = "multiline" Height="76px" Width="216px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="PostBtn" runat="server" Text="Post!" OnClick="Button1_Click" />
                <br />
            </td>
            <td rowspan="2" align ="right">
                <asp:Image ID="Image1" runat="server" src ="cb.jpg" />
              </td>
          </tr>
          <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
              </td>
          </tr>
      </table>
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
                <asp:Image ID="Image2" runat="server" src="logo1.png" ImageAlign ="Middle" Height="84px" Width="82px"/>
                <h1 style="font-size: 18px">Fitvisor</h1>
                </td>
            </tr>
         </table>
        </div>
    </form>
</body>
</html>
