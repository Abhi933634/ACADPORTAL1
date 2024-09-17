<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signups.aspx.cs" Inherits="ACADPORTAL1.Signups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
                 <style type="text/css">
                     .auto-style15 {
                         width: 537px;
                         margin-left:25%;
                     }
                     .auto-style17 {
                         width: 544px;
                        height: 483px;
                     }
                     .auto-style18 {
                         height: 617px;
                         width: 721px;
                     }
                     .auto-style19 {
                         height: 691px;
                         width: 533px;
                         margin-left: 381px;
                     }
                     .auto-style20 {
                         width: 65%;
                         height: 447px;
                         margin-left: 0px;
                         background-color: transparent;
                         border-block-color: black;
                         margin-top: 0px;
                         box-shadow: 0 4px 200px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.6);
                         border-radius: 25px;
                     }
                 </style>
                 <h1 class="auto-style13">ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1>
                <link href="Signups.css" rel="stylesheet"/>
</head>
<body style="width: 94%; height: 804px;">
    <form id="form1" runat="server" class="auto-style19">
        
            <table class="auto-style17">
                <tr>
                    <td class="auto-style15">
                        <div class="auto-style18">
                            <table class="auto-style20">
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
                                        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Date of birth :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem>Date</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem>Month</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                            <asp:ListItem>Year</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
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
                </tr>
            </table>
    </form>
  </body>
</html>
