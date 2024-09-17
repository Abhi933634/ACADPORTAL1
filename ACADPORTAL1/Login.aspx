<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ACADPORTAL1.Login_signup" %>

<!DOCTYPE html>
<script runat="server">
  
 
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link  rel="stylesheet" href="Login.css"/>
    <script src="Login.js"></script>
    <style type="text/css">
      
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1 class="auto-style26">&nbsp;&nbsp; ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1>
            </div>
            <table class="auto-style27">
                <tr>
                    <td class="auto-style25">
                        <div class="auto-style13">
                            <div class="auto-style24">
                                <strong> Login </strong>
                            </div>
                            <p class="auto-style14">&nbsp; Doesn't have an account yet?<a href="Signups.aspx" > Sign up</a></p> 
                           <p class="auto-style17">&nbsp;&nbsp; &nbsp; Username</p>
                        &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Height="36px" OnTextChanged="TextBox1_TextChanged1" Width="350px" placeholder="example@gmail.com"></asp:TextBox>
                        <br />
                                  <p class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ForgotPassword.aspx" style="text-align:right">Forgot Password?</a></p>
                              <input type="password" value="" id="Password" class="auto-style21"/><br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" onclick="myFunction()"/>Show Password
                        
                       
                              <br />
                        
                       
                        <br />
                     
                        &nbsp;<asp:Button ID="Button2" runat="server" Height="43px" OnClick="loginbtn_Click" Text="Login" Width="305px" CssClass="auto-style22" />
                    </div>

                    </td>
                   
                </tr>
    
            </table>
              
   
    </form>
</body>
</html>
