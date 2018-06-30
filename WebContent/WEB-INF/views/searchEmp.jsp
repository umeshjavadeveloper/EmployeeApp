<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search Employee</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h3>Search Employee ID Form</h3>
<font color="Red">${msg}</font>
<form:form action="./searchEmp">
<table>
<tr><td>Search Employee &nbsp;&nbsp;
<input type="text" name="reqData"/>&nbsp;&nbsp;
</td> 
<td>
<input type="submit" value="Search"/>
</td>
 </tr>
<tr><td>
<input type="radio" name="searchType" value="1" checked="checked"/> Search By Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="radio" name="searchType" value="2"/> Search By Id
</td></tr>

</table>
</form:form>

<c:if test="${employee != null}">
 		<jsp:include page="showEmp.jsp"/>
 </c:if>
</body>
</html>