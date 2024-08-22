<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login,signup.aspx.cs" Inherits="ACADPORTAL1.Login_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup!</title>
    <link  rel="stylesheet" href="Login,signup.css"/>
	<script src="Signup.js"></script>
</head>
<body>
    
        <div>
            <p id="p1" style="margin-left: 480px; width: 560px;">
               <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACADPORTAL: CLASSIC TO SMART DEPARTMENT</h1></p>
            </div>
            <table>
                <tr><td class="auto-style8"><div class="auto-style4">
                    
                    <asp:Image ID="Image1" runat="server" Height="323px" ImageUrl="~/photus/AP.png" Width="346px" />
                    
                    </div></td>
                    <td class="auto-style9">
</head>

<body>



	<form id="form1" runat="server">

<table align = "center" cellpadding="9">

<tr>
<td> Name : </td>
<td>
<input type = "text" name = "First_Name" placeholder="First Name" />
</td>
</tr>

<tr>
<td> Father&#39;s Name : </td>
<td>
	<input type = "text" name ="Last_Name" placeholder="Last Name" />
</td>

</tr>

<tr>
	<td> Gender : </td>
	<td> Male
		<input type="radio" name="Gender" value="male" /> 
	Female
 
 <input type="radio" name="Gender" value="female" />
	</td>
</tr>

<tr>
	<td> Date of birth : </td>
	<td> <input type="date" id="birthdaytime" name="birthdaytime"/></td>
</tr>
<tr>
	<td> Moblie No. </td>
<td>
      <input type="text" name="Mobile" placeholder="Moblie Number" />
</td>
</tr>

<tr>
	<td> Email : </td>
	<td> <input type="text" name="Email" placeholder="Email Id" />
	</td>
</tr>
    <tr>
	<td> User Name : </td>
	<td> <input type="text" name="Email" placeholder="Email Id" />
	</td>
</tr>

<tr>
	<td> Password : </td>
	<td><input type="password" name="Password" placeholder="Password" />
	</td>
</tr>


<tr>
	<td> Address : </td>

<td>
	<textarea name = "Address" rows="5" cols="20" placeholder="Address" />
		
	</textarea>
</td>

</tr>

<tr>
	<td> City :</td>

<td>
	<input type="text" name="city" placeholder="City" />
</td>

</tr>


<tr>
	<td> State : </td>
<td>
	<input type="text" name="state" placeholder="State" />
</td>

</tr>


<tr>
	<td> Pin Code</td>
	<td>
		<input type="text" name="Country"  />
	</td>
</tr>


<tr>
<td> Select Course :</td> <br/>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="110px">
        <asp:ListItem>BCA</asp:ListItem>
        <asp:ListItem>B.Com</asp:ListItem>
        <asp:ListItem>B.Sc.</asp:ListItem>
        <asp:ListItem>B.Ed</asp:ListItem>
        <asp:ListItem>B.A.</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>

<tr>
	<td align="right"> </td>
	<td>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" />
</td>
</tr>


</table>

    </form>
</td>
                    <td class="auto-style7">
                        <div class="auto-style10">
                            <h3> About Us !</h3>
                            <p>
                                Welcome to the ACADPORTAL: Classic to Smart Department, where tradition meets innovation in the realm of academic management and technology integration. As educational institutions evolve to meet the needs of a digital age, 
                                our department is dedicated to facilitating a seamless transition from classic systems to modern,
                                smart solutions that enhance teaching, learning, and administrative efficiency.

                            </p>
                        </div>
                    </td>
                </tr>
                <tr><td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr><td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
              
   
    
</body>
</html>
