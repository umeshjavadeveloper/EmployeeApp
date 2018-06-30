<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <c:if test="${!empty employee.addresses}">
<h3>Showing Addresses</h3>

	<table align="left" border="1">
		<tr>
			<th>Address Type</th>
			<th>Address Line 1</th>
			<th>Address Line 2</th>
			<th>City</th>
			<th>State</th>
			<th>Country</th>
			<th>Pin Code</th>
		</tr>

		<c:forEach items="${employee.addresses}" var="add">
			<tr>
				<td> ${add.addressType == 1 ?"Present":"Permanent"}</td>
				<td> ${add.addrLine1}</td>
				<td> ${add.addrLine2}</td>
				<td> ${add.city}</td>
				<td> ${add.state}</td>
				<td> ${add.country}</td>
				<td> ${add.pin}</td>
				<td align="center"><a href="addrUpdate?id=${add.id}">Edit</a> | <a href="addrDelete?id=${add.id}">Delete</a></td>  
			</tr>
		</c:forEach>
	</table>
</c:if>
 --%>
 
 <c:forEach var="i" begin="0" end="1">
		   			<c:if test="${i eq 0}">
		   				<h3>Present Address :</h3>
		   			</c:if>
		   			
		   			<c:if test="${i eq 1}">
		   				<h3>Permanent Address :</h3>
		   			</c:if>
	<table border="1" width="30%">
			     <tr>
			        <td width="15%">Address Line 1: </td>
			        <td width="15%">${empty addresses[i].addrLine1 ? '--' : addresses[i].addrLine1} </td>
			    </tr>
			     
			     <tr>
			        <td>Address Line 2: </td>
			        <td>  
			        ${empty addresses[i].addrLine2 ? '--' : addresses[i].addrLine2} </td>
			    </tr>
			    
			    <tr>
			        <td>City: </td>
			        <td>
			        ${empty addresses[i].city ? '--' : addresses[i].city}
			        </td>
			    </tr>
			    
			    <tr>
			        <td>State: </td>
			        <td>
			        ${empty addresses[i].state ? '--' : addresses[i].state}
			        </td>
			    </tr>
			    
			    <tr>
			        <td>Country: </td>
			        <td>
			        ${empty addresses[i].country ? '--' : addresses[i].country}
			        </td>
			    </tr>
			    
			    <tr>
			        <td>Pin Code: </td>
			        <td>
			        ${empty addresses[i].pin ? '--' : addresses[i].pin}
			        </td>
			    </tr>
</table>			    
			</c:forEach>
 