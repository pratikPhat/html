<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>RegistrationForm</title>
<link rel="stylesheet" href="/css/event.css">
</head>
<body>
	<div class="login-form">
		<h2 align="center">REGISTRATION FORM</h2>

		<table align="center" cellpadding="10">
			<tr>
				<td class="textb">FIRST NAME</td>
				<td><input type="text" name="Firstname" maxlength="30" /></td>
			</tr>
			<tr>
				<td class="textb">LAST NAME</td>
				<td><input type="text" name="Lastname"></td>
			</tr>
			<tr>
				<td>
					<!----- Email Id ---------------------------------------------------------->
			<tr>
				<td>EMAIL ID</td>
				<td><input type="text" name="Email_Id" maxlength="100" /></td>
			</tr>

			<!----- Mobile Number ---------------------------------------------------------->
			<tr>
				<td>MOBILE NUMBER</td>
				<td><input type="text" name="Mobile_Number" maxlength="10" />

				</td>
			</tr>

			<!----- Gender ----------------------------------------------------------->
			<tr>
				<td>GENDER</td>
				<td>MALE <input type="radio" name="Gender" value="Male" />
					FEMALE <input type="radio" name="Gender" value="Female" />
				</td>
			</tr>
			<tr>
				<td class="textb">EVENTS</td>
				<td><select>
						<option value="">SELECT</option>
						<option value="Ngo">Ngo</option>
						<!--<option value="Needy">Needy</option>
                              <option value="Volunteer">Volunteer</option>
                              <option value="Admin">Admin</option>-->

				</select></td>
			</tr>


			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>


			<!--
            <td>  Dont have account?</td>
            <td><a href="registrationForm.html">sign-up</a></td>
        </tr>-->

		</table>

	</div>
</body>
</html>