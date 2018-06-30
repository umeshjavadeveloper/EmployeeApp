<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
			        <td><input type="text" name="addresses[${i}].addrLine1" /></td>
			    </tr>
			     
			     <tr>
			        <td>Address Line 2: </td>
			        <td><input type="text" name="addresses[${i}].addrLine2" /></td>
			    </tr>
			    
			    <tr>
			        <td>City: </td>
			        <td><input type="text" name="addresses[${i}].city" /></td>
			    </tr>
			    
			    <tr>
			        <td>State: </td>
			        <td><input type="text" name="addresses[${i}].state" /></td>
			    </tr>
			    
			    <tr>
			        <td>Country: </td>
			        <td><input type="text" name="addresses[${i}].country" /></td>
			    </tr>
			    
			    <tr>
			        <td>Pin Code: </td>
			        <td><input type="text"  name="addresses[${i}].pin" />
			        
			        <input type="hidden" name="addresses[${i}].addressType" value= "${i +1}"/>
			        </td>
			    </tr>
			    
			</c:forEach>
