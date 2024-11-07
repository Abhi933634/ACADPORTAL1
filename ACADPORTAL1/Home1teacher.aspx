﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1teacher.aspx.cs" Inherits="ACADPORTAL1.Home1teacher" %>

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
                .button { background-color: #001524;
                  /* Green */
                  border: none;
                  padding: 15px 32px; 
                  text-align: center;
                  text-decoration: none;
                  display: inline-block;
                  font-size: 16px;
                  margin: 4px 2px;
                  cursor: pointer;
                  border-radius: 6px;
                  float:left;
                  width:33.33%;
                  height:50%;
                  font-size:40px;
                  color:white;
                  box-shadow: 0px 4px 6px 1px rgb(128, 128, 128);
        }
        .button:hover{
            background-color:white;
            transition:1s;
            color:black;
        }
        .auto-style12 {
            height: 100%;
            width:100%;
            margin-left: 136px;
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
                <br />
            </div>
        </div>
  <div class="example1">
    <asp:Panel ID="Panel" runat="server" CssClass="auto-style10" Height="284px" Width="516px">
        <asp:Table ID="Table" runat="server" CssClass="auto-style11" Height="245px" Width="471px">
            <asp:TableRow>
                <asp:TableCell>Name</asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Labelname" runat="server" Text="Label" Enabled="True"></asp:Label></asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
            <asp:TableCell>Mobile no.</asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Labelmobile" runat="server" Text="Label"></asp:Label></asp:TableCell>
        </asp:TableRow>
                               <asp:TableRow>
               <asp:TableCell>Enrollment no.</asp:TableCell>
               <asp:TableCell>
                   <asp:Label ID="LabelEnroll" runat="server" Text="Label"></asp:Label></asp:TableCell>
           </asp:TableRow>
            <asp:TableRow>
           <asp:TableCell>E-mail</asp:TableCell>
           <asp:TableCell>
               <asp:Label ID="Labelemail" runat="server" Text="Label"></asp:Label></asp:TableCell>
       </asp:TableRow>
        </asp:Table>
    </asp:Panel>
</div>
               
            <div class="auto-style12">
                <asp:Button ID="btnInformation" runat="server" Text="Information" OnClick="btnInformation_Click" CssClass="button" />
                <asp:Button ID="btnTimetable" runat="server" Text="Timetable" OnClick="btnTimetable_Click" CssClass="button" /> 
                <asp:Button ID="btnResult" runat="server" Text="Result" OnClick="btnResult_Click" CssClass="button" />
                <asp:Button ID="btnAttendance" runat="server" Text="Attendance" OnClick="btnAttendance_Click" CssClass="button" />
                <asp:Button ID="btnNotes" runat="server" Text="Notes" OnClick="btnNotes_Click" CssClass="button" /><br /> 
                <asp:Button ID="Button1" runat="server" Text="Notification" OnClick="btnResult_Click" CssClass="button" />
            </div>
    </form>
    </body>
</html>
