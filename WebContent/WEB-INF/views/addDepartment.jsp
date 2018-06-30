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
		<h2>Add Department </h2>
		<font color="red"> ${msg }</font>
		<form:form method="POST" action="deptCreate" commandName="command">
	   		<table>
			     <tr>
			        <td>Department Name: </td>
			        <td><form:input path="name" /></td>
			    </tr>
			     
			     <tr>
			        <td>Department Head: </td>
			        <td>
			         <select name="manager.id">
				     	 <c:forEach items="${emps}" var="emp">
				      		<option value="${emp.id}">${emp.fName} -  ${emp.lName} </option>
				      	</c:forEach>
			      	</select>
			        </td>
			    </tr>
			     
			    <tr>
			      <td colspan="2">
			      <input id="submit" type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
	</body>
</html>