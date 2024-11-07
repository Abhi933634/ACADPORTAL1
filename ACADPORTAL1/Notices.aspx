 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notices.aspx.cs" Inherits="ACADPORTAL1.Notices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    background-color: #d6d6f5;
    background-image: url('photus/college.jpg');
    background-size: 100%;
    width: 100%;
    font-family: cursive;
}
        .auto-style1 {
            margin-left: 20%;
            background-color:#001524;
            color:#FDCE95;
        }
        .auto-style1:hover{
            background-color:white;
            color:black;
            width:100%;
        }
        .auto-style2 {
            text-decoration: underline;
            color: wheat;
            border-radius:8px;
            background-color:#001524;
            text-align:center;
        }
        .auto-style3 {
            margin-left: 33.3%;
            border-radius:8px;
            border: 2px solid black;
        }
        .save{
            width:250px;

        }
        .save:hover{
            background-color:white;
            color:black;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border-radius:4px;"><h1 class="auto-style2" > News & Notices</h1></div>
        <div style="width:100%">
            <asp:Table ID="Table1" runat="server" CssClass="auto-style3" >
                <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label></asp:TableCell>
                    <asp:TableCell> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell> <asp:Label ID="Label2" runat="server" Text="Notice"></asp:Label></asp:TableCell>
                    <asp:TableCell> <asp:TextBox ID="TextBox2" runat="server" Height="128px" Width="257px"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell> <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" CssClass="save" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
        </div>
        <div style="width:100%">
            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="auto-style1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Notice" HeaderText="Notice" SortExpression="Notice" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Notification %>" DeleteCommand="DELETE FROM [Notification] WHERE [id] = @id" InsertCommand="INSERT INTO [Notification] ([Date], [Notice]) VALUES (@Date, @Notice)" SelectCommand="SELECT * FROM [Notification]" UpdateCommand="UPDATE [Notification] SET [Date] = @Date, [Notice] = @Notice WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Notice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Notice" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
