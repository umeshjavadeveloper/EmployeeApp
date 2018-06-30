<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
	<jsp:include page="header.jsp"/>
		<h2>Add Employee Data</h2>
		<font color="red"> ${msg }</font>
		<form:form method="POST" action="empCreate"  commandName="command">
	   		<table>
			   <tr>
			        <td>Employee login Name:</td>
                    <td><form:input path="loginName" /></td>
			    </tr>
			    
			     <tr>
			        <td>Employee Password:</td>
                    <td><form:input path="password" /></td>
			    </tr>
			    <tr>
			        <td>Employee First Name: </td>
			        <td><form:input path="fName" /></td>
			    </tr>
			    <tr>
			        <td>Employee Last Name: </td>
			        <td><form:input path="lName" /></td>
			    </tr>
			   
			    <tr>
			        <td>Designation: </td>
			        <td>
			        <select name="designation">
				        <option value="Associate Engineer">Associate Engineer</option>
				        <option value="Senior Engineer">Senior Engineer</option>
				        <option value="Analyst">Analyst</option>
				        <option value="System Engineer">System Engineer</option>
				        <option value="Manager">Manager</option>
				        </select> 
			        </td>
			    </tr> 
			    
			    <tr>
			        <td>Gender:</td>
			        <td>
			        	<input type="radio" name="gender" value="male"  checked/>Male
			        	<input type="radio" name="gender" value="female" />Female
			        </td>
			    </tr>
			    
			    <tr>
			        <td>Date of Birth:</td>
			        <td><form:input path="dateOfBirth" /> &nbsp;&nbsp;(mm/dd/yyyy)</td>
			    </tr>
			  
			    <tr>
			        <td>Department:</td>
			        <td><select name="department.id">
			   		    <c:forEach items="${departments}" var="dept">
			      			<option value="${dept.id}">${dept.name}</option>
			      		</c:forEach>
			      		</select>
					</td>
			    </tr>
			  
			   
			   <tr>
			        <td>Manager :</td>
			        <td>
			      <select name="manager.id">
			      <c:forEach items="${managers}" var="manager">
			      <option value="${manager.id}">${manager.fName} -  ${manager.lName} </option>
			      </c:forEach>
			      </select>
			        </td>
			    </tr>

		 	    <tr>
			        <td>Employee Salary:</td>
			        <td><form:input path="salary" /></td>
			    </tr>
				
				<tr>
			   <td>Mobile No:</td>
			        <td><form:input path="mobileNo" /></td>
			    </tr>			    
			    
			    <tr>
			   <td>Marital Status:</td>
			        <td><form:input path="maritalStatus" /></td>
			    </tr>		
			    
			<jsp:include page="addAddress.jsp"/>
			
			 <tr>
			      <td colspan="2">
			      <input id="submit" type="submit" value="Submit"/></td>
		      </tr>
		      </table>
		</form:form>
	</body>
</html>
