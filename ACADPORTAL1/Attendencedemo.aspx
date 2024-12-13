<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendencedemo.aspx.cs" Inherits="ACADPORTAL1.Attendencedemo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance Portal</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <style>
        /* styles.css */
body {
    font-family: Arial, sans-serif;
}

h2 {
    color: #333;
}

.gridview {
    width: 100%;
    border-collapse: collapse;
}

.gridview th, .gridview td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
}

.gridview th {
    background-color: #f2f2f2;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Attendance Portal</h2>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcadPortalConnectionString3 %>" ProviderName="<%$ ConnectionStrings:AcadPortalConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            <asp:Button ID="btnSave" runat="server" Text="Save Attendance" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</html>
