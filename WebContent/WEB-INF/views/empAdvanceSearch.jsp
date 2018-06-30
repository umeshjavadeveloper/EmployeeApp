<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Emp Advance Search</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h3>Advance Search Form</h3>
<font color='red'>${msg}</font>
<form:form action="empGetByFilters" >
<table>
<tr><td>First Name</td></tr>
<tr><td><input type="text" name="fName"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OR</td> 
</tr>

<tr><td>Last Name</td></tr>
<tr><td><input type="text" name="lName"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OR</td></tr>

<tr><td>Dept Name</td></tr>
<tr><td><input type="text" name="deptId"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OR</td></tr>

<tr><td>Search City</td></tr>
<tr><td><input type="text" name="city"/></td></tr>
<tr><td>

<input type="submit" value="Search"/>
</td></tr>
</table>
</form:form>

<c:if test="${emps != null && !empty emps}">
	<c:set var="pageUrl" value="" scope="request"/>
	<jsp:include page="employeesList.jsp"/>
</c:if>

</body>
</html>