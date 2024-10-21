<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1teacher.aspx.cs" Inherits="ACADPORTAL1.Home1teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Home1teacher.css"/>
    <script src="Home1teacher.js"></script>
    <style>

        .auto-style9 {
            height: 441px;
        }
        #ddl1{
            margin-left:10%;
            float:left;
        }
        #ddl2{
            margin-left:15%;
            float:left;
            margin-top:1%;
        }
        .auto-style10 {
            width: 30%;
            margin-top:1%;
        }
         table, th, td {
          border:1px solid black;
          border-collapse: collapse;
          background-color:white;
        }
         #show{
             margin-top:1%;
            margin-left:30%;
         }
        .auto-style11 {
            width: 329px;
            margin-left: 13%;
        }
        .auto-style12 {
            margin-left: 38%;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server" class="auto-style9">
        <div id="mySidenav" class="sidenav">
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
              <a href="#">Home</a>
              <a href="#">Attendence</a>
              <a href="#">Notes</a>
              <a href="#">Marks</a>
              <a href="#">Notifications</a>
              <a href="#">Contact</a>
              <a href="#">About</a>
        </div>
        <div id="main" class="auto-style3">
            <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776; </span> 
            <span style="font-family: Georgia, serif; font-size: 50px; text-align: right">ACADPORTAL</span>
            <div class="topnav" id="myTopnav">
                <a href="#home" class="active">Home</a>
                <a href="#news">Attendence</a>
                <a href="#contact">Notes</a>
                <a href="#about">Notification</a>
                <a href="#about">Time Table</a>
                <a href="#about" class="auto-style5">Library</a>
            </div>
        </div>
        <div id="ddl1" class="auto-style10">
            <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>Python</asp:ListItem>
                <asp:ListItem>Machine learning</asp:ListItem>
                <asp:ListItem>Maths I</asp:ListItem>
                <asp:ListItem>Maths II</asp:ListItem>
                <asp:ListItem>Discrete mathematics</asp:ListItem>
                <asp:ListItem>Numerical Methods</asp:ListItem>
                <asp:ListItem>System Software</asp:ListItem>
                <asp:ListItem>Operating System</asp:ListItem>
                <asp:ListItem>Data Structures</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div id="ddl2" class="auto-style11">
            <asp:Label ID="Label2" runat="server" Text="Semester"></asp:Label>&nbsp; <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>i</asp:ListItem>
                <asp:ListItem>ii</asp:ListItem>
                <asp:ListItem>iii</asp:ListItem>
                <asp:ListItem>iv</asp:ListItem>
                <asp:ListItem>v</asp:ListItem>
                <asp:ListItem>vi</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div id="show" class="auto-style12">
            <asp:Button ID="Button1" runat="server" Text="Show" /></div>
        
            <br />
        
            <br />
        
            <asp:Table runat="server" style="width:100%; border: 1px solid black; text-align:center">
                                  <asp:TableRow>
                      <asp:TableCell>ID</asp:TableCell>
                      <asp:TableCell>Enrollment no.</asp:TableCell>
                      <asp:TableCell>Name</asp:TableCell>
                      <asp:TableCell>Present</asp:TableCell>
                      <asp:TableCell>Absent</asp:TableCell>
                  </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>ecc1</asp:TableCell>
                    <asp:TableCell>a</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton1" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton2" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>2</asp:TableCell>
                    <asp:TableCell>ecc2</asp:TableCell>
                    <asp:TableCell>b</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton3" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton4" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>3</asp:TableCell>
                    <asp:TableCell>ecc3</asp:TableCell>
                    <asp:TableCell>c</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton5" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton6" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>4</asp:TableCell>
                    <asp:TableCell>ecc4</asp:TableCell>
                    <asp:TableCell>d</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton7" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton8" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>5</asp:TableCell>
                    <asp:TableCell>ecc5</asp:TableCell>
                    <asp:TableCell>e</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton9" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton10" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>6</asp:TableCell>
                    <asp:TableCell>ecc6</asp:TableCell>
                    <asp:TableCell>f</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton11" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton12" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>7</asp:TableCell>
                    <asp:TableCell>ecc7</asp:TableCell>
                    <asp:TableCell>g</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton13" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton14" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>8</asp:TableCell>
                    <asp:TableCell>ecc8</asp:TableCell>
                    <asp:TableCell>h</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton15" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton16" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>9</asp:TableCell>
                    <asp:TableCell>ecc9</asp:TableCell>
                    <asp:TableCell>i</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton17" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton18" runat="server" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>10</asp:TableCell>
                    <asp:TableCell>ecc10</asp:TableCell>
                    <asp:TableCell>j</asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton19" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:RadioButton ID="RadioButton20" runat="server" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        
    </form>
    </body>
</html>
