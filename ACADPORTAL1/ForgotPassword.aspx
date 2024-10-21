<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ACADPORTAL1.ForgotPassword" %>

<!DOCTYPE html>  

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #table{
            margin-left:37%;
            margin-top:10%;
            width:20%;
            background-color: transparent;
            border-block-color: black;
            box-shadow: 0 4px 100px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.6);
            border-radius: 25px;

        }
        #head{
            margin-left:40%;
        }
        body{
            background-color: #d6d6f5;
            background-image: url('photus/college.jpg');
            background-size: 100%;
            width: 100%;
            font-family: cursive;
        }
        button1{
            
        }
        .send{
            border-radius:10px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="head">
            <h1>Login with OTP</h1>
        </div>
        <div>
            <asp:Table runat="server" id="table">
                <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label></asp:TableCell>
                    <asp:TableCell> <asp:TextBox ID="email" runat="server" placeholder="Enter your email"></asp:TextBox></asp:TableCell>
                    <asp:TableCell> <asp:Button ID="Button1" runat="server" Text="Send otp" OnClick="Button1_Click" CssClass="send" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label2" runat="server" Text="OTP"></asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="login_otp" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:Button ID="Button2" runat="server" Text="Verify" OnClick="Button2_Click" CssClass="send" /></asp:TableCell>
                </asp:TableRow>
           
            </asp:Table>
        </div>
    </form>
</body>
</html>
