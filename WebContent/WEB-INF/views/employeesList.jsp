<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<h3>List of Employees</h3>

<c:if test="${!empty emps}">
  	<table class="table-bordered table pull-right" align="left" border="1">
		<thead>
 		<tr role="row">
			<c:if test="${!empty pageUrl}">
			<th><a href="${pageUrl}?sortBy=id">ID</a></th>
			<th><a href="${pageUrl}?sortBy=fName">First Name</a></th>
			<th><a href="${pageUrl}?sortBy=lName">Last Name</a></th>
			<th><a href="${pageUrl}?sortBy=designation">Designation</a></th>
			<th><a href="${pageUrl}?sortBy=gender">Gender</a></th>
			<th><a href="${pageUrl}?sortBy=department.id">Department</a></th>
			<th><a href="${pageUrl}?sortBy=joinDate">Join Date</a></th>
			<th><a href="${pageUrl}?sortBy=mobileNo">Mobile No</a></th>
			
			</c:if>
			
			<c:if test="${empty pageUrl}">
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Designation</th>
			<th>Gender</th>
			<th>Department</th>
			<th>Join Date</th>
			<th>Mobile No</th>
			</c:if>
			
			
			 <c:if test='${empty sessionScope["empSession"].admin}'> 
   		 			<th>Action</th>
			</c:if>
		</tr>
	</thead>

	<tbody>
		<c:forEach items="${emps}" var="employee">
			<tr>
				<td> ${employee.id}</td>
				<td> ${employee.fName}</td>
				<td> ${employee.lName}</td>
				<td> ${employee.designation}</td>
				<td> ${employee.gender}</td>
				<td> ${employee.deptName}</td>
				<td> ${employee.joinDate}</td>
				<td> ${employee.mobileNo}</td>
				<c:if test='${empty sessionScope["empSession"].admin}'> 
		   		 						<td align="center"><a href="empUpdate?id=${employee.id}">Edit</a> | <a href="empDelete?id=${employee.id}">Delete</a></td>
				</c:if>
  
			</tr>
		</c:forEach>
	</tbody>
	</table>
	</c:if>
	
	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>	<br/>
	<c:if test="${count>1}">
	<c:forEach var="i" begin="1" end="${count}"> 
		<a href="./getEmpsByPage?pageNo=${i}">
		<c:out value="${i}"></c:out>
		</a>&nbsp;&nbsp;&nbsp;
	</c:forEach>
	</c:if>
</body>
</html>
