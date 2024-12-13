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
      
        .auto-style28 {
            font-weight: normal;
            text-decoration: underline;
        }
        .auto-style29 {
            width: 100%;
            height: 534px;
            margin-left: 0px;
            background-color: transparent;
            opacity: 1;
            border-block-color: black;
            margin-top: 0px;
            box-shadow: 0 4px 200px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.6);
            border-radius: 25px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <h1 class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style28"><strong>ACADPORTAL: CLASSIC TO SMART DEPARTMENT</strong></span></h1>
            </div>
            <table class="auto-style27">
                <tr>
                    <td class="auto-style25">
                        <div class="auto-style29">
                            <div class="auto-style24">
                                <strong> Login </strong>
                            </div>
                            <p class="auto-style14">&nbsp; Doesn't have an account yet?<a href="Signups.aspx" > Sign up</a></p> 
                           <p class="auto-style17">&nbsp; Select Category:
                               <asp:DropDownList ID="DropDownList1" runat="server">
                                   <asp:ListItem>Student</asp:ListItem>
                                   <asp:ListItem>Teacher</asp:ListItem>
                                   <asp:ListItem>Admin</asp:ListItem>
                               </asp:DropDownList>
                            </p>
                            <p class="auto-style17">&nbsp;</p>
                            <p class="auto-style17">&nbsp;</p>
                            <p class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email</p>
                        &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Height="36px" OnTextChanged="TextBox1_TextChanged1" Width="350px" placeholder="example@gmail.com"  type="email"></asp:TextBox>
                        <br />
                                  <p class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            &nbsp;<asp:TextBox ID="TextBox2" runat="server" class="auto-style21" type="password"  ></asp:TextBox>
                              <br />
                        
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ForgotPassword.aspx" style="text-align:right">Login with otp</a><br />
                     
                        &nbsp;<asp:Button ID="Button2" runat="server" Height="43px" OnClick="loginbtn_Click" Text="Login" Width="305px" CssClass="auto-style22" style="border-radius:25px" />
                    </div>

                    </td>
                   
                </tr>
    
            </table>
              
   
    </form>
</body>
</html>
