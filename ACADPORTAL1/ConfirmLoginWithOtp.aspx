<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmLoginWithOtp.aspx.cs" Inherits="ACADPORTAL1.ConfirmLoginWithOtp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 628px;
        }
        #tab{
            margin-left:40%;
           margin-top:10%;
        }
        .auto-style2 {
            width: 332px;
            height: 98px;
              margin-left: 0px;
              background-color: transparent;
              border-block-color: black;
              margin-top: 0px;
              box-shadow: 0 4px 200px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.6);
              border-radius: 25px;
        }
        .auto-style3 {
            height: 59px;
            width: 107px;
        }
        .auto-style4 {
            height: 68px;
            width: 107px;
        }
        body {
    background-color: #d6d6f5;
    background-image: url('photus/college.jpg');
    background-size: 100%;
    width: 100%;
    font-family: cursive;
}
        .auto-style5 {
            height: 68px;
            width: 258px;
        }
        .auto-style6 {
            height: 59px;
            width: 258px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="text-align:center">
                Login with OTP</h1>
            <table id="tab" class="auto-style2" >
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Email" runat="server" Text="Email:"></asp:Label>
                     </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="loginOtpBtn" runat="server" OnClick="Button1_Click" Text="send OTP" />
                        </td>
                    </tr>
            <tr>
                <td class="auto-style3">
            <asp:Label ID="Label2" runat="server"  Text=" Enter Otp:"></asp:Label>
                    </td>
                <td class="auto-style6">
                    <br />
            <asp:TextBox ID="login_otp" runat="server" placeholder="enter otp"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Verify" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
