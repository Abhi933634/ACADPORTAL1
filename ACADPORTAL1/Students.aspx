<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="ACADPORTAL1.GridViewTest" %>

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
            text-decoration: underline;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
    <asp:Button ID="Button1" runat="server" Text="&#x2190;" Height="43px" Width="53px" OnClick="home" />
    <h1 style="text-align:center;" class="auto-style1">Student's Information</h1></div>
        <div style=" font-size: small; font-weight: normal; border: thin none #808000">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                    <asp:BoundField DataField="MotherName" HeaderText="MotherName" SortExpression="MotherName" />
                    <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="PrmAddress" HeaderText="PrmAddress" SortExpression="PrmAddress" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Enroll" HeaderText="Enroll" SortExpression="Enroll" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ABCD %>" DeleteCommand="DELETE FROM [Register] WHERE [id] = @id" InsertCommand="INSERT INTO [Register] ([Name], [FatherName], [MotherName], [Dob], [Gender], [Department], [MobileNo], [Email], [PrmAddress], [State], [City], [Pincode], [Password], [Enroll]) VALUES (@Name, @FatherName, @MotherName, @Dob, @Gender, @Department, @MobileNo, @Email, @PrmAddress, @State, @City, @Pincode, @Password, @Enroll)" ProviderName="<%$ ConnectionStrings:ABCD.ProviderName %>" SelectCommand="SELECT * FROM [Register]" UpdateCommand="UPDATE [Register] SET [Name] = @Name, [FatherName] = @FatherName, [MotherName] = @MotherName, [Dob] = @Dob, [Gender] = @Gender, [Department] = @Department, [MobileNo] = @MobileNo, [Email] = @Email, [PrmAddress] = @PrmAddress, [State] = @State, [City] = @City, [Pincode] = @Pincode, [Password] = @Password, [Enroll] = @Enroll WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="FatherName" Type="String" />
                    <asp:Parameter Name="MotherName" Type="String" />
                    <asp:Parameter Name="Dob" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="MobileNo" Type="Decimal" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="PrmAddress" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Pincode" Type="Int32" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Enroll" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="FatherName" Type="String" />
                    <asp:Parameter Name="MotherName" Type="String" />
                    <asp:Parameter Name="Dob" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="MobileNo" Type="Decimal" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="PrmAddress" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Pincode" Type="Int32" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Enroll" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>