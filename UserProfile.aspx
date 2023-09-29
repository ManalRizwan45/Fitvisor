<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication2.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 22%;
        }
        .auto-style2 {
            width: 21%;
        }
        .auto-style3 {
            width: 14%;
        }
        .auto-style4 {
            width: 7%;
        }
        .auto-style5 {
            width: 11%;
        }
        .auto-style7 {
            width: 9%;
        }
        .auto-style8 {
            width: 12%;
        }
        .auto-style9 {
            width: 6%;
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
    <td align="left" class="auto-style3"><h1>Fitvisor</h1></td>
    <td align="right" class="auto-style4"><a href="TransformationJ.aspx">Journeys</a></td>
    <td align="right" class="auto-style8"><a href="DiscussionRoom.aspx">Discussion Room</a></td>
    <td align="right" class="auto-style9"><a href ="WebForm2.aspx">Home</a></td>
    <td align="right" class="auto-style7"><a href ="NutProfiles.aspx">Nutrionists</a></td>
    <td align="right" class="auto-style4"><a href="AboutUS.aspx">About Us</a></td>
    <td align="right" class="auto-style4"><a href="WebForm3.aspx">Profile</a></td>
    <td align="center" class="auto-style5"><a href="recipes_workouts.aspx">Recipes + Workouts</a></td>

    <td align="right" width="9%"><a href="ContactUs.aspx">Contact Us</a></td>
  </tr>
</table>
    <h1 align="center"  style="font:Arial, Helvetica, sans-serif;font-size:80px">User Profile</h1>
    <br />
        <table>
            <tr>
                <td colspan="2" style="font:Arial, Helvetica, sans-serif;font-size:35px">
                    Personal Information
                </td>
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
           
            </tr>
            <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    UserName
                </td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    ID
                </td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    Address
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    Age
                </td>
                <td>
                    <asp:TextBox ID="AgeTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    Gender
                </td>
                <td>
                    <asp:TextBox ID="GenderTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    Phone
                </td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    Medical Condition
                </td>
                <td>

                    <asp:TextBox ID="MDCTextBox" runat="server" ReadOnly="True"></asp:TextBox>

                </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                     Allergies
                </td>
                <td>
                    <asp:TextBox ID="AllergyTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                   Goal
                </td>
                <td>
                   <asp:TextBox ID="GoalTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="font:Arial, Helvetica, sans-serif;font-size:35px">
                    Fitness Information
                </td>
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            <tr>
            <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    Step Count
                </td>
                <td>
                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
            <td style="font:Arial, Helvetica, sans-serif;font-size:24px" align="left">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Calories Burnt" />
                </td>
                <td>
                   <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
                <td colspan="2" style="font:Arial, Helvetica, sans-serif;font-size:35px">
                    Add
                    Intake
                </td>
            </tr>
            <tr>
            <td>Food Intake</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Quantity</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br/>
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                </td>
                </tr>
            <tr>
                <td colspan="2" style="font:Arial, Helvetica, sans-serif;font-size:35px">View Intake</td>
                
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server">
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
                <asp:Image ID="Image1" runat="server" src="logo1.png" ImageAlign ="Middle" Height="84px" Width="82px"/>
                <h1 style="font-size: 18px">Fitvisor</h1>
                </td>
            </tr>
         </table>
        </div>
    </form>
</body>
</html>