<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="ACADPORTAL1.TimeTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Time Table</title>
  <style>
      body {
    background-color: #d6d6f5;
    background-image: url('photus/college.jpg');
    background-size: 100%;
    width: 100%;
    font-family: cursive;
}
                  .gridview1 {
                width: 100%;
                border-collapse: collapse;
                text-align: center;
                background-color:dimgrey;
            }

            .gridview1 th, .gridview td {
                padding: 10px;
                border: 1px solid #ddd;
            }

            .gridview1 th {
                background-color: #4CAF50;
                color: white;
            }
            .gridview1 tr:hover {
                background-color: #ddd;
            }         
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
 <h1 style="text-align:center;" class="auto-style1">Time Table (Semester 5th)</h1></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="gridview1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
                <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
                <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
                <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
                <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
            </Columns>
        </asp:GridView>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:timetableconnection %>" DeleteCommand="DELETE FROM [Timetable1] WHERE [id] = @id" InsertCommand="INSERT INTO [Timetable1] ([Time], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday]) VALUES (@Time, @Monday, @Tuesday, @Wednesday, @Thursday, @Friday)" ProviderName="<%$ ConnectionStrings:timetableconnection.ProviderName %>" SelectCommand="SELECT * FROM [Timetable1]" UpdateCommand="UPDATE [Timetable1] SET [Time] = @Time, [Monday] = @Monday, [Tuesday] = @Tuesday, [Wednesday] = @Wednesday, [Thursday] = @Thursday, [Friday] = @Friday WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Monday" Type="String" />
                <asp:Parameter Name="Tuesday" Type="String" />
                <asp:Parameter Name="Wednesday" Type="String" />
                <asp:Parameter Name="Thursday" Type="String" />
                <asp:Parameter Name="Friday" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Monday" Type="String" />
                <asp:Parameter Name="Tuesday" Type="String" />
                <asp:Parameter Name="Wednesday" Type="String" />
                <asp:Parameter Name="Thursday" Type="String" />
                <asp:Parameter Name="Friday" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
