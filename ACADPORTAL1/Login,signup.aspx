<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login,signup.aspx.cs" Inherits="ACADPORTAL1.Login_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 0px;
            width: 361px;
            margin-left: 220px;
        }
        .auto-style1 {
            width: 535px;
        }
        .auto-style2 {
            width: 445px;
            height: 328px;
            margin-left: 66px;
        }
        .auto-style4 {
            width: 388px;
            height: 600px;
        }
        .auto-style5 {
            margin-left: 97px;
            margin-top: 31px;
        }
        .auto-style6 {
            margin-left: 93px;
        }
        .auto-style7 {
            width: 497px;
            height: 483px;
        }
        .auto-style8 {
            height: 483px;
        }
        .auto-style9 {
            width: 535px;
            height: 483px;
        }
        .auto-style10 {
            height: 508px;
            margin-top: 0px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="margin-left: 480px; width: 560px;">
               <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1></p>
            </div>
            <table>
                <tr><td class="auto-style8"><div class="auto-style4">
                    
                    <asp:Image ID="Image1" runat="server" Height="452px" ImageUrl="~/photus/AP.png" Width="334px" />
                    
                    </div></td>
                    <td class="auto-style9"><div class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FED8ED" BorderColor="#FFCCFF" CssClass="auto-style5" Height="36px" OnTextChanged="TextBox1_TextChanged1" Width="226px" placeholder="USERNAME"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FED8ED" CssClass="auto-style6" Height="36px" OnTextChanged="TextBox2_TextChanged1" placeholder="PASSWORD" Width="233px"></asp:TextBox> <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwimnabIgfSHAxUIXWwGHTi9AHYQPAgJ">Forgot Password?</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Log in" CssClass="auto-style11" Height="51px" Width="167px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwimnabIgfSHAxUIXWwGHTi9AHYQPAgJ">New User? Create your account</a>
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
                        </div width="100px">
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
