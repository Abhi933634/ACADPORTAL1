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
        .auto-style1 {
            width: 142px;
        }
        .auto-style2 {
            height: 1.8em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<div class="wrapper">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Semester</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
    </asp:DropDownList>
  &nbsp;
    <asp:Button ID="Save" runat="server" OnClick="Button2_Click" Text="Save" />
  <table>
    <caption>Timetable</caption>
    <tr>
      <th>Time</th>
      <th>Monday</th>
      <th>Tuesday</th>
      <th>Wednesday</th>
      <th>Thursday</th>
      <th>Friday</th>
        
    </tr>
    <tr>
      <td class="auto-style2"><asp:TextBox ID="time1" runat="server" class="auto-style1"></asp:TextBox ></td>
      <td  class="auto-style1"><asp:TextBox ID="TextBox1" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td  class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td  class="auto-style1"><asp:TextBox ID="TextBox3" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td  class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td  class="auto-style1"><asp:TextBox ID="TextBox5" runat="server"  class="auto-style1"></asp:TextBox></td>
    </tr>
    </table>
</div>
        </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="300px">
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
