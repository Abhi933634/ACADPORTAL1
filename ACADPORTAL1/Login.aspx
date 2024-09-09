<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ACADPORTAL1.Login_signup" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="Login.css"/>
    <style type="text/css">
        body{
            background-color: #d6d6f5;
        }
        .auto-style12 {
            width: 367px;
            height: 600px;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1>ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1>

            
            </div>
            <table>
                <tr>
                    <td class="auto-style8" width="33.33%">
                    <div class="auto-style12">
                        <asp:Image ID="Image1" runat="server" Height="479px" ImageUrl="~/photus/AP.png" Width="346px" />
                    </div>

                    </td>
                    <td class="auto-style9" width="33.33%">
                        <div class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Height="36px" OnTextChanged="TextBox1_TextChanged1" Width="231px" placeholder="USERNAME"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6" Height="36px" OnTextChanged="TextBox2_TextChanged1" placeholder="PASSWORD" Width="233px"></asp:TextBox> <br />
                        <a href="ForgotPassword.aspx">Forgot Password?</a>
                       
                        <br />
                     
                        <asp:Button ID="Button2" runat="server" Height="52px" OnClick="loginbtn_Click" Text="Login" Width="286px" />
                        <br />
                    <br />
                      <a href="Signups.aspx" > New User? Create your account</a>
                      <br />
                    </div>

                    </td>
                    <td class="auto-style7" width="33.33%">
                        <div class="auto-style10">
                            <h3> About Us !</h3>
                            <p>
                                Welcome to the ACADPORTAL: Classic to Smart Department, where tradition meets innovation in the realm of academic management and technology integration. As educational institutions evolve to meet the needs of a digital age, 
                                our department is dedicated to facilitating a seamless transition from classic systems to modern,
                                smart solutions that enhance teaching, learning, and administrative efficiency.

                            </p>
                        </div >
                    </td>
                </tr>
                <tr><td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr><td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
              
   
    </form>
</body>
</html>
