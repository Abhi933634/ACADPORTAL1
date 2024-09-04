<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmLoginWithOtp.aspx.cs" Inherits="ACADPORTAL1.ConfirmLoginWithOtp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Confirm login otp
            </h1>
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="Te" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text=" Enter Otp:"></asp:Label>
            <asp:TextBox ID="login_otp" runat="server"></asp:TextBox>
            <asp:Button ID="loginOtpBtn" runat="server" OnClick="Button1_Click" Text="Button" />

        </div>
    </form>
</body>
</html>
