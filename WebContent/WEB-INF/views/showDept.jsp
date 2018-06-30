<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Show Department</title>
</head>
<body>
	<c:if test="${empty department }">
	Department not found
	</c:if>


	<c:if test="${not empty department }">
		<h3>Department Details</h3>
		<table align="left" border="1">
			<tr>
				<td>Department ID</td>
				<td>${department.id}</td>
			</tr>

			<tr>
				<td>Department Name</td>
				<td>${department.name}</td>
			</tr>

			<tr>
				<td>Department Head</td>
				<td>${department.deptHeadIdAndName}</td>
			</tr>

			<tr>
				<td>Created Date</td>
				<td>${department.createdDate}</td>
			</tr>
		</table>
	</c:if>
</body>
</html>