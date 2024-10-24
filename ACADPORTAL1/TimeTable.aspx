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
        <asp:ListItem>i</asp:ListItem>
        <asp:ListItem>ii</asp:ListItem>
        <asp:ListItem>iii</asp:ListItem>
        <asp:ListItem>iv</asp:ListItem>
        <asp:ListItem>v</asp:ListItem>
        <asp:ListItem>vi</asp:ListItem>
    </asp:DropDownList>
  &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Show" CssClass="drop" />
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
      <td class="auto-style2">&nbsp;<input id="Text1" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2"><input id="1" type="text" class="auto-style1" /></td>
      <td contenteditable="" class="auto-style2"><input id="2" type="text" class="auto-style1" /></td>
      <td contenteditable="" class="auto-style2"><input id="3" type="text" class="auto-style1" /></td>
      <td contenteditable="" class="auto-style2"><input id="4" type="text" class="auto-style1" /></td>
      <td contenteditable="" class="auto-style2"><input id="5" type="text" class="auto-style1" /></td>
    </tr>
    <tr>
      <td>
          <input id="Text2" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="6" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="7" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="8" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="9" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="10" class="auto-style1" type="text" /></td>
    
    </tr>
    <tr>
      <td>
          <input id="Text3" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="11" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="12" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="13" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="14" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="15" class="auto-style1" type="text" /></td>
     
    </tr>
    <tr>
      <td>&nbsp;<input id="Text4" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="16" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="17" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="18" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="19" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="20" class="auto-style1" type="text" /></td>
      
    </tr>
    <tr>
      <td class="auto-style2">
          <input id="Text5" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="21" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="22" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="23" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="24" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="25" class="auto-style1" type="text" /></td>
      
    </tr>
    <tr>
      <td class="auto-style2">
          <input id="Text6" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="26" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="27" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="28" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="29" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="30" class="auto-style1" type="text" /></td>
     
    </tr>
    <tr>
      <td>
          <input id="Text7" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="31" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="32" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="33" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="34" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="35" class="auto-style1" type="text" /></td>
     
    </tr>
    <tr>
      <td class="auto-style2">
          <input id="Text8" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="36" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="37" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="38" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="39" class="auto-style1" type="text" /></td>
      <td contenteditable="" class="auto-style2">
          <input id="40" class="auto-style1" type="text" /></td>
      
    </tr>
    <tr>
      <td>
          <input id="Text9" class="auto-style1" type="text" /></td>
      <td contenteditable="n">
          <input id="41" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="42" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="43" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="44" class="auto-style1" type="text" /></td>
      <td contenteditable="">
          <input id="45" class="auto-style1" type="text" /></td>
    
    </tr>
  </table>
</div>
        </div>
    </form>
</body>
</html>
