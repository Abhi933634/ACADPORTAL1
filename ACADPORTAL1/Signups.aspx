﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signups.aspx.cs" Inherits="ACADPORTAL1.Signups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>

                 <style type="text/css">
                     .auto-style15 {
                         width: 537px;
                         margin-left:25%;
                     }
                     .auto-style17 {
                         width: 544px;
                        height: 625px;
                     }
                     .auto-style18 {
                         height: 617px;
                         width: 721px;
                     }
                     .auto-style19 {
                         height: 691px;
                         width: 469px;
                         margin-left: 381px;
                     }
                     .auto-style20 {
                         width: 65%;
                         height: 621px;
                         margin-left: 0px;
                         background-color: transparent;
                         border-block-color: black;
                         margin-top: 0px;
                         box-shadow: 0 4px 200px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.6);
                         border-radius: 25px;
                     }
                     .auto-style21 {
                         margin-left: 320px;
                     }
                     .auto-style23 {
                         width: 161px;
                         height: 37px;
                     }
                     .auto-style24 {
                         height: 37px;
                     }
                 </style>
                    <script type="text/javascript">
                        function validateForm() {
                            // Validate Name
                            var name = document.getElementById("<%= TextBox1.ClientID %>").value;
        if (name == "") {
            alert("Name is required");
            return false;
        }

        // Validate Father's Name
        var fatherName = document.getElementById("<%= TextBox2.ClientID %>").value;
        if (fatherName == "") {
            alert("Father's Name is required");
            return false;
        }

        // Validate Mother's Name
        var motherName = document.getElementById("<%= TextBox3.ClientID %>").value;
        if (motherName == "") {
            alert("Mother's Name is required");
            return false;
        }

        // Validate Date of Birth
        var day = document.getElementById("<%= DropDownList2.ClientID %>").value;
        var month = document.getElementById("<%= DropDownList3.ClientID %>").value;
        var year = document.getElementById("<%= DropDownList4.ClientID %>").value;
        if (day == "" || month == "Month" || year == "year") {
            alert("Date of Birth is required");
            return false;
        }

        // Validate Mobile Number
        var mobile = document.getElementById("<%= txtmobile.ClientID %>").value;
        var mobileRegex = /^[0-9]{10}$/;
        if (!mobileRegex.test(mobile)) {
            alert("Please enter a valid 10-digit mobile number");
            return false;
        }

        // Validate Email
        var email = document.getElementById("<%= TextBox4.ClientID %>").value;
        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }

        // Validate Password
        var password = document.getElementById("<%= TextBox9.ClientID %>").value;
        if (password == "") {
            alert("Password is required");
            return false;
        }

        // Validate Enrollment Number
        var enrollment = document.getElementById("<%= TextBox10.ClientID %>").value;
                            if (enrollment == "") {
                                alert("Enrollment Number is required");
                                return false;
                            }

                            // If all validations pass, submit the form
                            return true;
                        }
                    </script>
    
                 <h1 class="auto-style21">ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1>
                <link href="Signups.css" rel="stylesheet"/>
</head>
<body style="width: 94%; height: 804px;">
    <form id="form1" runat="server" class="auto-style19" onsubmit= "validateForm()" method="post">
        
            <table class="auto-style17">
                <tr>
                    <td class="auto-style15">
                        <div class="auto-style18">
                            <table class="auto-style20">
                                <tr>
                                    <td class="auto-style9">Name :</td>
                                    <td class="auto-style10">
                                        <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" OnDataBinding="Button1_Click" OnTextChanged="TextBox1_TextChanged" name="fname" type="string"></asp:TextBox>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Father&#39;s Name :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" type="string"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Mother&#39;s name :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" type="string"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Date of birth :</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem Value="1"></asp:ListItem>
                                            <asp:ListItem Value="2"></asp:ListItem>
                                            <asp:ListItem Value="3"></asp:ListItem>
                                            <asp:ListItem Value="4"></asp:ListItem>
                                            <asp:ListItem Value="5"></asp:ListItem>
                                            <asp:ListItem Value="6"></asp:ListItem>
                                            <asp:ListItem Value="7"></asp:ListItem>
                                            <asp:ListItem Value="8"></asp:ListItem>
                                            <asp:ListItem Value="9"></asp:ListItem>
                                            <asp:ListItem Value="10"></asp:ListItem>
                                            <asp:ListItem Value="11"></asp:ListItem>
                                            <asp:ListItem Value="12"></asp:ListItem>
                                            <asp:ListItem Value="13"></asp:ListItem>
                                            <asp:ListItem Value="14"></asp:ListItem>
                                            <asp:ListItem Value="15"></asp:ListItem>
                                            <asp:ListItem Value="16"></asp:ListItem>
                                            <asp:ListItem Value="17"></asp:ListItem>
                                            <asp:ListItem Value="18"></asp:ListItem>
                                            <asp:ListItem Value="19"></asp:ListItem>
                                            <asp:ListItem Value="20"></asp:ListItem>
                                            <asp:ListItem Value="21"></asp:ListItem>
                                            <asp:ListItem Value="22"></asp:ListItem>
                                            <asp:ListItem Value="23"></asp:ListItem>
                                            <asp:ListItem Value="24"></asp:ListItem>
                                            <asp:ListItem Value="25"></asp:ListItem>
                                            <asp:ListItem Value="26"></asp:ListItem>
                                            <asp:ListItem Value="27"></asp:ListItem>
                                            <asp:ListItem Value="28"></asp:ListItem>
                                            <asp:ListItem Value="29"></asp:ListItem>
                                            <asp:ListItem Value="30"></asp:ListItem>
                                            <asp:ListItem Value="31"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem>Month</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Value="5"></asp:ListItem>
                                            <asp:ListItem Value="6"></asp:ListItem>
                                            <asp:ListItem Value="7"></asp:ListItem>
                                            <asp:ListItem Value="8"></asp:ListItem>
                                            <asp:ListItem Value="9"></asp:ListItem>
                                            <asp:ListItem Value="10"></asp:ListItem>
                                            <asp:ListItem Value="11"></asp:ListItem>
                                            <asp:ListItem Value="12"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                            <asp:ListItem>year</asp:ListItem>
                                            <asp:ListItem Value="1975"></asp:ListItem>
                                            <asp:ListItem Value="1976"></asp:ListItem>
                                            <asp:ListItem Value="1977"></asp:ListItem>
                                            <asp:ListItem Value="1978"></asp:ListItem>
                                            <asp:ListItem Value="1979"></asp:ListItem>
                                            <asp:ListItem Value="1980"></asp:ListItem>
                                            <asp:ListItem Value="1981"></asp:ListItem>
                                            <asp:ListItem Value="1982"></asp:ListItem>
                                            <asp:ListItem Value="1983"></asp:ListItem>
                                            <asp:ListItem Value="1984"></asp:ListItem>
                                            <asp:ListItem Value="1985"></asp:ListItem>
                                            <asp:ListItem Value="1986"></asp:ListItem>
                                            <asp:ListItem Value="1987"></asp:ListItem>
                                            <asp:ListItem Value="1988"></asp:ListItem>
                                            <asp:ListItem Value="1989"></asp:ListItem>
                                            <asp:ListItem Value="1990"></asp:ListItem>
                                            <asp:ListItem Value="1991"></asp:ListItem>
                                            <asp:ListItem Value="1992"></asp:ListItem>
                                            <asp:ListItem Value="1993"></asp:ListItem>
                                            <asp:ListItem Value="1994"></asp:ListItem>
                                            <asp:ListItem Value="1995"></asp:ListItem>
                                            <asp:ListItem Value="1996"></asp:ListItem>
                                            <asp:ListItem Value="1997"></asp:ListItem>
                                            <asp:ListItem Value="1998"></asp:ListItem>
                                            <asp:ListItem Value="1999"></asp:ListItem>
                                            <asp:ListItem Value="2000"></asp:ListItem>
                                            <asp:ListItem Value="2001"></asp:ListItem>
                                            <asp:ListItem Value="2002"></asp:ListItem>
                                            <asp:ListItem Value="2003"></asp:ListItem>
                                            <asp:ListItem Value="2004"></asp:ListItem>
                                            <asp:ListItem Value="2005"></asp:ListItem>
                                            <asp:ListItem Value="2006"></asp:ListItem>
                                            <asp:ListItem Value="2007"></asp:ListItem>
                                            <asp:ListItem Value="2008"></asp:ListItem>
                                            <asp:ListItem Value="2009"></asp:ListItem>
                                            <asp:ListItem Value="2010"></asp:ListItem>
                                            <asp:ListItem Value="2011"></asp:ListItem>
                                            <asp:ListItem Value="2012"></asp:ListItem>
                                            <asp:ListItem Value="2013"></asp:ListItem>
                                            <asp:ListItem Value="2014"></asp:ListItem>
                                            <asp:ListItem Value="2015"></asp:ListItem>
                                            <asp:ListItem Value="2016"></asp:ListItem>
                                            <asp:ListItem Value="2017"></asp:ListItem>
                                            <asp:ListItem Value="2018"></asp:ListItem>
                                            <asp:ListItem Value="2019"></asp:ListItem>
                                            <asp:ListItem Value="2020"></asp:ListItem>
                                            <asp:ListItem Value="2021"></asp:ListItem>
                                            <asp:ListItem Value="2022"></asp:ListItem>
                                            <asp:ListItem Value="2023"></asp:ListItem>
                                            <asp:ListItem Value="2024"></asp:ListItem>
                                            <asp:ListItem Value="2025"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">Gender :</td>
                                    <td class="auto-style12">
                                        <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="g" />
                                        <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="g" />
                                        <asp:RadioButton ID="Other" runat="server" Text="Other" GroupName="g" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">Department :</td>
                                    <td class="auto-style12">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>B.C.A.</asp:ListItem>
                                            <asp:ListItem>B.Com</asp:ListItem>
                                            <asp:ListItem>B.Ed.</asp:ListItem>
                                            <asp:ListItem>B.Sc.</asp:ListItem>
                                            <asp:ListItem>B.Ed.</asp:ListItem>
                                            <asp:ListItem>B.Tech.</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Mobile no. :</td>
                                    <td>
                                        <asp:TextBox ID="txtmobile" runat="server" type="number"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">E-mail :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" type="email"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">Permanent Address :</td>
                                    <td class="auto-style12">
                                        <asp:TextBox ID="TextBox5" runat="server" type="text"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">State :</td>
                                    <td class="auto-style24">
                                        <asp:TextBox ID="TextBox6" runat="server" type="text"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">City :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" type="text"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Pin Code :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" type="number"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">Password :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" type="password"></asp:TextBox>
                                    </td>
                                </tr>
                                                      <tr>
                          <td class="auto-style6">Enrollment No.</td>
                          <td>
                              <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged"  type="text"></asp:TextBox>
                          </td>
                      </tr>
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                    </td>
                                </tr>

                            </table>
                        </div>
                    </td>
                </tr>
            </table>
    </form>
  </body>
</html>
