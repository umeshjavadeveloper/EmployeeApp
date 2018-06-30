<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Employee Profile</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h3>My Profile</h3>
 <a href="empUpdate?id=${employee.id}">Update Profile</a><br/><br/>
<div>
	<table border="1" width="30%">
		<tr>
			<td width="15%">ID</td> <td width="15%"> ${employee.id}</td>
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
			<td>Manager Name:</td> <td> 
			${employee.manager!=null ? employee.manager.fName + employee.manager.lName : 'NA' }
			</td>
		</tr>
		
		<tr>
			<td>Salary </td> <td> ${employee.salary}</td>
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
 	<br/>

 	<jsp:include page="showAddresses.jsp"/>

</div>
</body>
</html>