<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1teacher.aspx.cs" Inherits="ACADPORTAL1.Home1teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Home1teacher.css"/>
    <script src="Home1teacher.js"></script>
    <style>
        .auto-style9 {
            height: 736px;
        }
        .auto-style10 {
            font-size: 20px;
        }
        .auto-style11 {
            height: 534px;
            width:100%;
        }
        .auto-style12 {
            float: left;
            height: 35%;
            width: 25%;
        }
        .auto-style13 {
            float: left;
            height: 34%;
            width: 25%;
        }
        .auto-style14 {
            float: left;
            height: 35%;
            width: 25%;
        }
        .auto-style15 {
            float: left;
            height: 30%;
            width: 281px;
            margin-left: 153px;
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
            <span style="font-family: Georgia, serif; font-size: 50px; text-align: right">ACADPORTAL</span><span style="font-family: Georgia, serif; text-align: right" class="auto-style10">(admin)</span>
            <div class="topnav" id="myTopnav">
                <a href="#home" class="active">Home</a>
                <a href="#news">Attendence</a>
                <a href="#contact">Notes</a>
                <a href="#about">Notification</a>
                <a href="#about">Time Table</a>
                <a href="#about" class="auto-style5">Library</a>
                <br />
            </div>
        </div>
  <div class="auto-style11">
      <div class="auto-style12"></div>
    <div class="auto-style13"></div>
        <div class="auto-style14"></div>
      <div class="auto-style14"></div>
  </div>
    </form>
    </body>
</html>
