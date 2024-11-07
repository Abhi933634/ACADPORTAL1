<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ACADPORTAL1.Admin" %>

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
  backface-visibility:visible;
  
}
.container:hover .middle {
  bottom: 0;
  height: 100%;
}
.middle {
  /*transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 40%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
      */
    position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  background-color: #15616d;
  overflow: hidden;
  width: 100%;
  height:0;
  transition: .5s ease;
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
    position: absolute;
    top:35%;
    
}
.image{
    width:75%;
}
.parent{
    display:flex;
    width:50%;
    background-color:#F2E5BF;
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
        <div style="float:left">
        <div style=" height:50%;   border:1px solid black; margin-top: 1px;" class="parent" id="tops">

        <div class="container">
          <img src="photus/f-removebg-preview.png" alt="Avatar" class="image" />
          <div class="middle">
            <div class="text"><asp:Button ID="Button1" runat="server" Text="Faculty (edit)" OnClick="Button1_Click"  CssClass="button" /></div>
          </div>
        </div>
        
                  <div class="container">
            <img src="photus/student-removebg-preview.png" alt="Avatar" class="image" />
            <div class="middle">
              <div class="text">
                  <asp:Button ID="Button2" runat="server" Text="Student (edit)" CssClass="button" OnClick="Button2_Click" /></div>
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
            <div class="text" style="width: 224px"><asp:Button ID="Button4" runat="server" Text="TimeTable (edit)" CssClass="button" OnClick="Button4_Click"/></div>
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
            </div>
        <div style=" float:left;">Notification </div>
        <br />
        <asp:GridView runat="server" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" DataSourceID="SqlDataSource1"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Notification %>" SelectCommand="SELECT [Date], [Notice] FROM [Notification]"></asp:SqlDataSource>
        </form>
    </body>
</html>