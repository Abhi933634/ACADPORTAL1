function validate() {

	if (document.myForm.First_Name.value == "") {

		alert("Please provide First Name !");
		document.myForm.First_Name.focus();
		return false;
	}

	if (document.myForm.Last_Name.value == "") {

		alert("Please provide Last Name !");
		document.myForm.Last_Name.focus();
		return false;
	}

	if (document.myForm.Mobile.value == "") {

		alert("Please provide mobile number !!");
		document.myForm.Mobile.focus();
		return false;
	}

	if (document.myForm.Email.value == "") {

		alert("Please provide valid Email !!");
		document.myForm.Email.focus();
		return false;
	}

	if (document.myForm.Password.value == "") {

		alert("Please Enter Password !!");
		document.myForm.Password.focus();
		return false;
	}

	if (document.myForm.city.value == "") {

		alert("Please provide city");
		document.myForm.city.focus();
		return false;
	}

	if (document.myForm.state.value == "") {

		alert("Please Enter State !!");
		document.myForm.state.focus();
		return false;
	}

	return (true);

}