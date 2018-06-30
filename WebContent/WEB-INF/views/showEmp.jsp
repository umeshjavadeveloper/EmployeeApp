<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search Employee By Name</title>
</head>
<body>
<h3>Search Result</h3>
	<table align="left" border="1">
		<tr>
			<td>ID</td> <td> ${employee.id}</td>
		</tr>
		
		<tr>
			<td>Designation</td> <td> ${employee.designation}</td>
		</tr>
		
		<tr>
			<td>First Name</td> <td> ${employee.fName}</td>
		</tr>
		
		<tr>
			<td>Last Name</td> <td> ${employee.lName}</td>
		</tr>
		
		<tr>
			<td>Gender</td> <td> ${employee.gender}</td>
		</tr>		
		
		<tr>
			<td>Department Name:</td> <td> ${employee.deptName}</td>
		</tr>
		
		<tr>
			<td>Manager Name:</td> <td> ${manager.fName} , ${manager.lName}</td>
		</tr>
		
		<tr>
			<td>Login Name </td> <td> ${employee.loginName}</td>
		</tr>
		
		<tr>
			<td>Date of Birth</td> <td> ${employee.dateOfBirth}</td>
		</tr>
		
		<tr>
			<td>Date Of Join</td> <td> ${employee.joinDate}</td>
		</tr>
		
		<tr>
			<td>Mobile No:</td> <td> ${employee.mobileNo}</td>
		</tr>	
		
		<tr>
			<td>Marital Status:</td> <td> ${employee.maritalStatus}</td>
		</tr>	
		
 	</table>
 	
</body>
</html>