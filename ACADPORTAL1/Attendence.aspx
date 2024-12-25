<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendence.aspx.cs" Inherits="ACADPORTAL1.Attendence" %>

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

        #ddl1 {
            margin-left: 10%;
            float: left;
        }

        #ddl2 {
            margin-left: 15%;
            float: left;
            margin-top: 1%;
        }

        .auto-style10 {
            width: 30%;
            margin-top: 1%;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            background-color: white;
        }

        #show {
            margin-top: 1%;
            margin-left: 30%;
        }

        .auto-style11 {
            width: 329px;
            margin-left: 13%;
        }

        .auto-style12 {
            margin-left: 224px;
            background-color:aqua;
            border-radius:15px;
            font-size:20px;
        }
        .auto-style12::after{
            background-color:white;
            color:black;
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
                <a href="home.aspx" class="active">Home</a>
                <a href="Attendence.aspx">Attendence</a>
                <a href="#contact">Notes</a>
                <a href="#about">Notification</a>
                <a href="TimeTable.aspx">Time Table</a>
                <a href="#about" class="auto-style5">Library</a>
            </div>
        </div>
        <div id="ddl1" class="auto-style10">
            <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
            <asp:Label ID="Label2" runat="server" Text="Semester"></asp:Label>&nbsp; 
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                    <asp:ListItem>V</asp:ListItem>
                    <asp:ListItem>VI</asp:ListItem>
                </asp:DropDownList>
        </div>
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1513px">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Enroll" HeaderText="Enroll" SortExpression="Enroll" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:TemplateField HeaderText="Attendence">
                        <ItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>Present</asp:ListItem>
                                <asp:ListItem>Absent</asp:ListItem>
                            </asp:RadioButtonList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="save" CssClass="auto-style12" Width="795px" Height="65px"  />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AcadPortalConnectionString8 %>" ProviderName="<%$ ConnectionStrings:AcadPortalConnectionString8.ProviderName %>" SelectCommand="SELECT [id], [Enroll], [Name] FROM [Register]"></asp:SqlDataSource>
        
            <br />
        
            <br />
        
    </form>
    </body>
</html>
