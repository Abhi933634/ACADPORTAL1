<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1teacher.aspx.cs" Inherits="ACADPORTAL1.Home1teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Home1teacher.css"/>
    <script src="Home1teacher.js"></script>
    <style type="text/css">
        .outerdiv {
            float: right;
            width: 75%;
            height: 75%;
        }
        .auto-style8 {
            float: right;
            width: 70%;
            height: 556px;
            background-color:;
            margin-top:2%;
        }
        .ib{
            width:90%;
            height:90%;
            border-radius:35px;
            border:3px solid black;
           
        }
        .ib:hover{
            background-color:gold;
            opacity:1;
        }
        .news{
            height:200px;
            background-color:bisque;
            overflow:scroll;
            
        }
        .hv{
            position:relative;
            width:33.33%; 
            height:33.33%;
            float:left;
        }
        .text{
            position: absolute;
            top: 58px;
            left: 76px;
            opacity:0;
        }
        .hv:hover .text{
           opacity:1;
           background-color:black;
          
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

    <div class="auto-style8">
        <div  class="hv">
            <asp:Image ID="Image1" ImageUrl="~/photus/f-removebg-preview.png" runat="server" CssClass="ib" />
            <div class="text">
              

            </div>
        </div>
        <div style="width:33.33%; height:33.33%;float:left" class="hv">
           
            <asp:Image ID="Image2" runat="server" ImageUrl="~/photus/student-removebg-preview.png" CssClass="ib"/>
                <div class="text">
        <asp:Button ID="Button2" runat="server" Text="Click" /></div>
                </div>
       
        <div style="width:33.33%; height:33.33%;float:left" class="hv">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/photus/attendence.jpeg" CssClass="ib" />
                <div class="text">
        <asp:Button ID="Button3" runat="server" Text="Click" /></div>
                
        </div> 
        <div style="width:33.33%; height:33.33%;float:left"class="hv">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/photus/time,jpeg.png" CssClass="ib"  />
            <div class="text">
    <asp:Button ID="Button4" runat="server" Text="Click" /></div>
        </div>
        <div style="width:33.33%; height:33.33%;float:left"class="hv">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/photus/marksheet-removebg-preview.png" CssClass="ib" />
            <div class="text">
    <asp:Button ID="Button5" runat="server" Text="Click" /></div>
        </div>
        <div style="width:33.33%; height:33.33%;float:left"class="hv">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/photus/notes-removebg-preview.png" CssClass="ib"/>
            <div class="text">
    <asp:Button ID="Button6" runat="server" Text="Click" /></div>
        </div>
        <div style="width:33.33%; height:33.33%;float:left" class="hv">
            <asp:Image ID="Image7" runat="server" ImageUrl="~/photus/library-removebg-preview.png" CssClass="ib" />
            <div class="text">
    <asp:Button ID="Button7" runat="server" Text="Click" /></div>
        </div>
        <div style="width:33.33%; height:33.33%;float:left" class="hv">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/photus/confrenece-removebg-preview.png" CssClass="ib" />
            <div class="text">
    <asp:Button ID="Button8" runat="server" Text="Click" /></div>
        </div>
        <div style="width:33.33%; height:33.33%;float:left" class="hv">
            <asp:Image ID="Image9" runat="server" ImageUrl="~/photus/notice-removebg-preview.png" CssClass="ib"/>
            <div class="text">
    <asp:Button ID="Button9" runat="server" Text="Click" /></div>
        </div>
    </div>
        </form>
    </body>
</html>