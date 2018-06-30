<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #893030;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: gray;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.active {
    background-color: #472121;
}
</style>
</head>
<body>
	 <c:if test='${empty sessionScope["empSession"]}'> 
   		 <jsp:forward page="/login"/>
	</c:if>
<ul>

  <li><a  href="empProfile">My Profile</a></li>
  
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Employee</a>
    <div class="dropdown-content">
    <c:if test='${sessionScope["empSession"].admin}'>
 	 	<a  href="empCreate">Add New Employee</a> 
  	</c:if>
      <a href="searchEmp">Search Employee</a>
      <a href="empGetByFilters">Advance Search</a>
     <c:if test='${sessionScope["empSession"].admin}'>
      <a href="getAllEmps">Show All Employees</a>
      </c:if>
    </div>
  </li>
  
<c:if test='${sessionScope["empSession"].admin}'>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Department</a>
    <div class="dropdown-content">
 	  <a  href="deptCreate">Add New Department</a> 
      <a href="searchDept">Search Department</a>
      <a href="getDepts">Show All Departments</a>
    </div>
  </li>
  </c:if>
  
 <li><a  href="logout">Logout</a></li>
</ul>

</body>
</html>
