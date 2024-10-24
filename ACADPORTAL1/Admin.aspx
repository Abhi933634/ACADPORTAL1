﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1teacher.aspx.cs" Inherits="ACADPORTAL1.Home1teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Home1teacher.css"/>
    <script src="Home1teacher.js"></script>
    <style type="text/css">
        .container {
            position: relative;
            width: 33.33%;
            border:1px solid black;
            margin-top:2px;
            border-radius:10px;
        }
.image {
  opacity: 1;
  display: block;
  width: auto;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
  
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 40%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: transparent;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}
.image{
    width:75%;
}
.parent{
    display:flex;
    width:50%;
}
        .auto-style8 {
            width: 100%;
            height: 124px;
            margin-top: 0px;
            background-color: #c3cb7e;
            margin-left: 0px;
        }
       .button{
            background-color: white;
           font-size:15px;
           font-weight:500;
           border-radius:10px;
        }
    </style>
    </head>
<body >  
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
        <div id="main" class="auto-style8">
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
        <div style=" height:50%;  border:1px solid black; margin-top: 1px;" class="parent" id="tops">

        <div class="container">
          <img src="photus/f-removebg-preview.png" alt="Avatar" class="image" />
          <div class="middle">
            <div class="text"><asp:Button ID="Button1" runat="server" Text="Faculty (edit)" CssClass="button" /></div>
          </div>
        </div>
        
                  <div class="container">
            <img src="photus/student-removebg-preview.png" alt="Avatar" class="image" />
            <div class="middle">
              <div class="text">
                  <asp:Button ID="Button2" runat="server" Text="Student (edit)" CssClass="button" /></div>
            </div>
          </div>
                    <div class="container">
            <img src="photus/attendence.jpeg" alt="Avatar" class="image" />
            <div class="middle">
              <div class="text"><asp:Button ID="Button3" runat="server" Text="Attendence (edit)" CssClass="button" /></div>
            </div>
          </div>
            </div>
        <div style=" height:50%;  border:1px solid black" class="parent">
                          <div class="container">
          <img src="photus/time,jpeg.png" alt="Avatar" class="image" />
          <div class="middle">
            <div class="text"><asp:Button ID="Button4" runat="server" Text="TimeTable (edit)" CssClass="button" /></div>
          </div>
        </div>
                              <div class="container">
              <img src="photus/marksheet-removebg-preview.png" alt="Avatar" class="image" />
              <div class="middle">
                <div class="text"><asp:Button ID="Button5" runat="server" Text="Marksheet (edit)" CssClass="button" /></div>
              </div>
            </div>
                              <div class="container">
              <img src="photus/notes-removebg-preview.png" alt="Avatar" class="image" />
              <div class="middle">
                <div class="text"><asp:Button ID="Button6" runat="server" Text="Notes (edit)" CssClass="button" /></div>
              </div>
            </div>
            </div>
        <div style=" height:50%;  border:1px solid black" class="parent">
                              <div class="container">
              <img src="photus/library-removebg-preview.png" alt="Avatar" class="image" />
              <div class="middle">
                <div class="text"><asp:Button ID="Button7" runat="server" Text="Library (edit)" CssClass="button" /></div>
              </div>
            </div>
                              <div class="container">
              <img src="photus/confrenece-removebg-preview.png" alt="Avatar" class="image" />
              <div class="middle">
                <div class="text"><asp:Button ID="Button8" runat="server" Text="Conference (edit)" CssClass="button" /></div>
              </div>
            </div>
                              <div class="container">
              <img src="photus/notice-removebg-preview.png" alt="Avatar" class="image" />
              <div class="middle">
                <div class="text"><asp:Button ID="Button9" runat="server" Text="Notice (edit)" CssClass="button" /></div>
              </div>
            </div>
            </div>
        </form>
    </body>
</html>