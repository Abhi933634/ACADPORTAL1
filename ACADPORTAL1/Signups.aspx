<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signups.aspx.cs" Inherits="ACADPORTAL1.Signups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
                 <h1 class="auto-style13">ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1>
                <link href="Signups.css" rel="stylesheet"/>
    <style type="text/css">
      
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" Height="580px" ImageUrl="~/photus/AP.png" Width="444px" />
                    </td>
                    <td class="auto-style14">
                        <div class="auto-style5">
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style9">Name :</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Father&#39;s Name :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Mother&#39;s name :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Date of birth :</td>
                                    <td><input type="date" id=" DateOfBirth" /></td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">Gender :</td>
                                    <td class="auto-style12">
                                        <asp:RadioButton ID="Male" runat="server" Text="Male" />
                                        <asp:RadioButton ID="Female" runat="server" Text="Female" />
                                        <asp:RadioButton ID="Other" runat="server" Text="Other" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">Department :</td>
                                    <td class="auto-style12">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>B.C.A.</asp:ListItem>
                                            <asp:ListItem>B.Com</asp:ListItem>
                                            <asp:ListItem>B.Ed.</asp:ListItem>
                                            <asp:ListItem>B.Sc.</asp:ListItem>
                                            <asp:ListItem>B.Ed.</asp:ListItem>
                                            <asp:ListItem>B.Tech.</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Mobile no. :</td>
                                    <td>
                                        <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">E-mail :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">Permanent Address :</td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">State :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">City :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Pin Code :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Password :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Confirm-password :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                               
                              
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                    </td>
                                </tr>
                               
                              
                            </table>

                        </div>
                    </td>
                    <td class="auto-style2">
                            <h3> About Us !</h3>
                            <p>
                                Welcome to the ACADPORTAL: Classic to Smart Department, where tradition meets innovation in the realm of academic management and technology integration. As educational institutions evolve to meet the needs of a digital age, 
                                our department is dedicated to facilitating a seamless transition from classic systems to modern,
                                smart solutions that enhance teaching, learning, and administrative efficiency.

                            </p>
                        </td>
                </tr>
            </table>
        </div>
    </form>
  </body>
</html>
