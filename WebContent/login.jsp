<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Welcome to Online Registration</title>
</head>
<body>


	<h1>Login Page</h1>
	<font color="Red">${msg}</font>    
		<form action="login" method = "POST" >
		<table>
		<tr>
			<td>User Name:</td>
			<td><input type="text" name="loginName"><td/> 
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password"><td/>
		</tr>
	 		<tr>	    
			<td colspan="2" align="center">
			<input type="submit" value="Login"></td>	
		</tr>
		</table>
		</form>
</body>
</html>
