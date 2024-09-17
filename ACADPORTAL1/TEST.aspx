<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TEST.aspx.cs" Inherits="ACADPORTAL1.TEST" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>R</title>
     <style>
     *{
         box-sizing:border-box;
     }
     .row::after{
         content:"";
         display:table;
         clear:both;

     }
     [class*="col-"]{
         float:left;
         border: 1px solid black;
         width:100%;
         padding: 10px;
     }
     @media only screen and (min-width:700px){
         .col-1{width:8.33%;}
         .col-2{width:16.66%;}
         .col-3{width:25%;}
         .col-4{width:33.33%;}
         .col-5{width:41.66%;}
         .col-6{width:50%;}
         .col-7{width:58.33%;}
         .col-8{width:66.66%;}
         .col-9{width:75%;}
         .col-10{width:83.33%;}
         .col-11{width:91.66%;}
         .col-12{width:100%;}
     }
 </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-2">

            </div>
            <div class="col-8">
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="col-2">

            </div>
            
        </div>
    </form>
</body>
</html>
