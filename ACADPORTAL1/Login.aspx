<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ACADPORTAL1.Login_signup" %>

<!DOCTYPE html>
<script runat="server">
  
 
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
function myFunction() {
    var x = document.getElementById("Password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
    </script>
    <link  rel="stylesheet" href="Login.css"/>
    <style type="text/css">
        body{
            background-color: #d6d6f5;
            background-image:url('photus/college.jpg');
            background-size:100%;
            width:100%;
            font-family: cursive;
        }
        .auto-style13 {
            width: 98%;
            height: 447px;
            margin-left: 0px;
            background-color:transparent;
            border-block-color:black;
            margin-top: 0px;
            box-shadow: 0 4px 200px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.6);
            border-radius: 25px;
           
        }
        .auto-style14 {
            width: 102%;
            height: 31px;
            text-align: center;
        }
        .auto-style16 {
            margin-left: 63px;
            margin-top: 13px;
        }
        .auto-style17 {
            width: 306px;
            text-align: left;
            margin-left:50px;
            height: 1px;
        }
        .auto-style18 {
            height: 5px;
        }
        .auto-style21 {
            width: 349px;
            height: 36px;
            margin-left: 72px;
            margin-top: 13px;
        }
        .auto-style22 {
            margin-left: 48px;
        }
        .auto-style23 {
            width: 41%;
        }
        .auto-style24 {
            text-align: center;
            font-size:50px;
        }
        .auto-style25 {
            width: 600px;
            height: 483px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1 style="text-align:center">ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1>
            </div>
            <table>
                <tr>
             <td class="auto-style23"></td>
                    <td class="auto-style25">
                        <div class="auto-style13">
                            <div class="auto-style24">
                                &nbsp;<strong> Login </strong>
                            </div>
                            <p class="auto-style14">&nbsp; Doesn't have an account yet?<a href="Signups.aspx" > Sign up</a></p> 
                           <p class="auto-style17">&nbsp;&nbsp;&nbsp; Username</p>
                        &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Height="36px" OnTextChanged="TextBox1_TextChanged1" Width="350px" placeholder="example@gmail.com"></asp:TextBox>
                        <br />
                                  <p class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ForgotPassword.aspx" style="text-align:right">Forgot Password?</a></p>
                              <input type="password" value="" id="Password" class="auto-style21"/><br />
                              &nbsp;&nbsp; <input type="checkbox" onclick="myFunction()"/>Show Password
                        
                       
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
