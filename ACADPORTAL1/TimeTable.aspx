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
      <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox1" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox3" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox4" runat="server"  class="auto-style1"></asp:TextBox></td>
      <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox5" runat="server"  class="auto-style1"></asp:TextBox></td>
    </tr>
    <tr>
              <td contenteditable="" class="auto-style1"><asp:TextBox ID="time2" runat="server"  class="auto-style1"></asp:TextBox></td>
         <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox6" runat="server"  class="auto-style1"></asp:TextBox></td>
         <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox7" runat="server"  class="auto-style1"></asp:TextBox></td>
         <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox8" runat="server"  class="auto-style1"></asp:TextBox></td>
         <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox9" runat="server"  class="auto-style1"></asp:TextBox></td>
    <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox10" runat="server" class="auto-style1"></asp:TextBox></td>
    </tr>
    <tr>
          <td contenteditable="" class="auto-style1"><asp:TextBox ID="time3" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox11" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox12" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox13" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox14" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox15" runat="server" class="auto-style1"></asp:TextBox></td>
        </tr>
    <tr>
          <td contenteditable="" class="auto-style1"><asp:TextBox ID="time4" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox16" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox17" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox18" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox19" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox20" runat="server" class="auto-style1"></asp:TextBox></td>
    </tr>
    <tr>
              <td contenteditable="" class="auto-style1"><asp:TextBox ID="time5" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox21" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox22" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox23" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox24" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox25" runat="server" class="auto-style1"></asp:TextBox></td>
    </tr>
    <tr>
          <td contenteditable="" class="auto-style1"><asp:TextBox ID="time6" runat="server"  class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox26" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox27" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox28" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox29" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox30" runat="server" class="auto-style1"></asp:TextBox></td>
    </tr>
    <tr>
          <td contenteditable="" class="auto-style1"><asp:TextBox ID="time7" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox31" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox32" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox33" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox34" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox35" runat="server" class="auto-style1"></asp:TextBox></td>
     
    </tr>
    <tr>
         <td contenteditable="" class="auto-style1"><asp:TextBox ID="time8" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox36" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox37" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox38" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox39" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox40" runat="server" class="auto-style1"></asp:TextBox></td>
      
    </tr>
    <tr>
         <td contenteditable="" class="auto-style1"><asp:TextBox ID="time9" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox41" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox42" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox43" runat="server" class="auto-style1"></asp:TextBox></td>
<td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox44" runat="server" class="auto-style1"></asp:TextBox></td>
        <td contenteditable="" class="auto-style1"><asp:TextBox ID="TextBox45" runat="server" class="auto-style1"></asp:TextBox></td>
    </tr>
  </table>
</div>
        </div>
    </form>
</body>
</html>
