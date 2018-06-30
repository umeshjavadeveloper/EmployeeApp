<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Registration System</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h3>Updating Profile Screen</h3>
	${errorMsg}
	<form:form action="empUpdate" method="POST" commandName="command">
		<table>
		<tr>
			<td>ID</td> 
			<td> 
					<form:input path="id" readonly="true"/>
					<form:hidden path="loginName"/>
			</td>
		</tr>
		
		<tr>
			<td>Designation</td> <td> ${employee.designation}</td>
		</tr>
			
		<tr>
			<td>First Name</td> <td> <form:input path="fName" /></td>
		</tr>
		
		<tr>
			<td>Last Name</td> <td> <form:input path="lName" /></td>
		</tr>
		
		<tr>
			<td>Date of Birth</td> <td> <form:input path="dateOfBirth" /></td>
		</tr>
		
		<tr>
			<td>Date Of Join</td> <td> <form:input path="joinDate" readonly="true"/></td>
		</tr>	
		
		<tr>
			<td>Mobile No:</td> <td> <form:input path="mobileNo" /></td>
		</tr>	
		
		<tr>
			<td>Marital Status:</td> <td> <form:input path="maritalStatus" /></td>
		</tr>
			   
					<c:forEach var="i" begin="0" end="1">
	   			<tr><td>
		   			<c:if test="${i eq 0}">
		   				<h3>Present Address :</h3>
		   			</c:if>
		   			
		   			<c:if test="${i eq 1}">
		   				<h3>Permanent Address :</h3>
		   			</c:if>
		   			
	   			</td>
	   			</tr>
			   
			     <tr>
			        <td>Address Line 1: </td>
			        <td><input type="text" name="addresses[${i}].addrLine1"  
			        value='<c:out value="${addresses[i].addrLine1}"/>'/></td>
			    </tr>
			     
			     <tr>
			        <td>Address Line 2: </td>
			        <td><input type="text" name="addresses[${i}].addrLine2" 
			        value='<c:out value="${addresses[i].addrLine2}"/>' /></td>
			    </tr>
			    
			    <tr>
			        <td>City: </td>
			        <td><input type="text" name="addresses[${i}].city" 
			        value='<c:out value="${addresses[i].city}"/>' /></td>
			    </tr>
			    
			    <tr>
			        <td>State: </td>
			        <td><input type="text" name="addresses[${i}].state" 
			        value='<c:out value="${addresses[i].state}"/>' /></td>
			    </tr>
			    
			    <tr>
			        <td>Country: </td>
			        <td><input type="text" name="addresses[${i}].country" 
			        value='<c:out value="${addresses[i].country}"/>' /></td>
			    </tr>
			    
			    <tr>
			        <td>Pin Code: </td>
			        <td><input type="text"  name="addresses[${i}].pin" 
			        value='<c:out value="${addresses[i].pin}"/>' />
			        <input type="hidden" name="addresses[${i}].addressType" value= "${i +1}"/>
			        <input type="hidden" name="addresses[${i}].id" value= "addresses[${i}].id"/>
			        
			        </td>
			    </tr>
			    
			</c:forEach>
				<tr>
				<td colspan="2"><input type="submit" value="Update" /></td>
			</tr>
		
		</table>
	</form:form>
</body>
</html>