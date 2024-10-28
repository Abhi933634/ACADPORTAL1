<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="ACADPORTAL1.Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                  First Name <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        Middle Name <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        Last Name <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
    </div>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:GridView ID="GridView1" runat="server"  DataKeyNames="id" OnRowEditing="Edit" OnRowCancelingEdit="canceledit" OnRowDeleting="delete" OnRowUpdating="Update"></asp:GridView>
        
    </form>
</body>
</html>
