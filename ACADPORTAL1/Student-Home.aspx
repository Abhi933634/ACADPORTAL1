<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1teacher.aspx.cs" Inherits="ACADPORTAL1.Home1teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Home1teacher.css"/>
    <script src="Home1teacher.js"></script>
    <style>
        Panel1{
            background-color:black;
        }
        .auto-style9 {
            height: 441px;
        }
    </style>
    </head>
<body>
    
    <form id="form1" runat="server" class="auto-style9">
        <div id="mySidenav" class="sidenav">
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
              <a href="#">Dashboard</a>
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
        <div class="example1">
            <h3>WELCOME TO ECC</h3>
        </div>

    </form>
    </body>
</html>
