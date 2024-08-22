<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login,signup.aspx.cs" Inherits="ACADPORTAL1.Login_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  rel="stylesheet" href="Login,signup.css"/>
    <style type="text/css">
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p id="p1" style="margin-left: 480px; width: 560px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACADPORTAL: CLASSIC TO SMART DEPARTMENT

            </p>
            </div>
            <table>
                <tr><td class="auto-style8"><div class="auto-style4">
                    
                    <asp:Image ID="Image1" runat="server" Height="323px" ImageUrl="~/photus/AP.png" Width="346px" />
                    
                    </div></td>
                    <td class="auto-style9"><div class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FED8ED" BorderColor="#FFCCFF" CssClass="auto-style5" Height="36px" OnTextChanged="TextBox1_TextChanged1" Width="231px" placeholder="USERNAME"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FED8ED" CssClass="auto-style6" Height="36px" OnTextChanged="TextBox2_TextChanged1" placeholder="PASSWORD" Width="233px"></asp:TextBox> <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwimnabIgfSHAxUIXWwGHTi9AHYQPAgJ">Forgot Password?</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Log in" CssClass="auto-style11" Height="51px" Width="167px" OnClick="Button2_Click1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="Home-teacher.aspx" > New User? Create your account</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="Signup.aspx">New User? Create your account</a>

                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
                    <td class="auto-style7">
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
