<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="ACADPORTAL1.TimeTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
  background: #ECF0F1;
}

.wrapper {
  margin: 50px auto;
  width: 1000px;
}

table {
  table-layout: fixed;
  width: 100%;
  font-size: 18px;
  font-weight: 300;
}
table caption {
  text-align: center;
  font-size: 1.5em;
  padding: 0.35em;
}
table tr {
  height: 1.85em;
}
table td, table th {
  text-align: center;
  background: #FAFAFA;
}
table th {
  font-weight: 400;
}
.drop{
    border-radius:10px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<div class="wrapper">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Semester</asp:ListItem>
        <asp:ListItem>i</asp:ListItem>
        <asp:ListItem>ii</asp:ListItem>
        <asp:ListItem>iii</asp:ListItem>
        <asp:ListItem>iv</asp:ListItem>
        <asp:ListItem>v</asp:ListItem>
        <asp:ListItem>vi</asp:ListItem>
    </asp:DropDownList>
  &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Show" CssClass="drop" />
  <table>
    <caption>Timetable</caption>
    <tr>
      <th>Time</th>
      <th>Monday</th>
      <th>Tuesday</th>
      <th>Wednesday</th>
      <th>Thursday</th>
      <th>Friday</th>
      <th>Saturday</th>
      <th>Sunday</th>
    </tr>
    <tr>
      <td>9:20 </td>
      <td contenteditable="">PS p2</td>
      <td contenteditable="">sa</td>
      <td contenteditable="">sa</td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>10:15 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>11:15 </td>
      <td contenteditable=""></td>
      <td contenteditable="">PS</td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>12:05 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>1:30 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>02:25 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>03:20 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>04:15 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
    <tr>
      <td>05:10 </td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
      <td contenteditable=""></td>
    </tr>
  </table>
</div>
        </div>
    </form>
</body>
</html>
