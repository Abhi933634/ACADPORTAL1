﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student-Home.aspx.cs" Inherits="ACADPORTAL1.Student_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        body {
              margin: 0;
              font-family: Arial, Helvetica, sans-serif;
            }

            .topnav {
              overflow: hidden;
              background-color: #333;
            }

            .topnav a {
              float: left;
              display: block;
              color: #f2f2f2;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
              font-size: 17px;
            }

            .topnav a:hover {
              background-color: #ddd;
              color: black;
            }

            .topnav a.active {
              background-color: #04AA6D;
              color: white;
            }

            .topnav .icon {
              display: none;
            }

            @media screen and (max-width: 600px) {
              .topnav a:not(:first-child) {display: none;}
              .topnav a.icon {
                float: right;
                display: block;
              }
            }

            @media screen and (max-width: 600px) {
              .topnav.responsive {position: relative;}
              .topnav.responsive .icon {
                position: absolute;
                right: 0;
                top: 0;
              }
              .topnav.responsive a {
                float: none;
                display: block;
                text-align: left;
              }
            }
    </style>
</head>
<body>
    <div class="topnav" id="myTopnav">
      <a href="#home" class="active">Home</a>
      <a href="#news">News</a>
      <a href="#contact">Contact</a>
      <a href="#about">About</a>
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
    <!-- Other content for your student home page goes here -->
    <script>
        function myFunction() {
          var x = document.getElementById("myTopnav");
          if (x.className === "topnav") {
            x.className += " responsive";
          } else {
            x.className = "topnav";
          }
        }
    </script>
</body>
</html>